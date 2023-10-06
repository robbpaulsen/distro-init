import json
import re
import string
import sublime

try:     # ST3
    from .elm_plugin import *
    from .elm_project import ElmProject
except:  # ST2
    from elm_plugin import *
    from elm_project import ElmProject
default_exec = import_module('Default.exec')

@replace_base_class('Highlight Build Errors.HighlightBuildErrors.ExecCommand')
class ElmMakeCommand(default_exec.ExecCommand):

    # inspired by: http://www.sublimetext.com/forum/viewtopic.php?t=12028
    def run(self, error_format, info_format, syntax, null_device, warnings, **kwargs):
        self.buffer = ''
        self.data_in_bytes = False # ST3 r3153 changed ExecCommand from bytes to str so we must detect which we get and handle appropriately: https://github.com/elm-community/SublimeElmLanguageSupport/issues/48
        self.warnings = warnings == "true"
        self.error_format = string.Template(error_format)
        self.info_format = string.Template(info_format)
        self.run_with_project(null_device=null_device, **kwargs)
        self.style_output(syntax)

    def run_with_project(self, cmd, working_dir, null_device, **kwargs):
        file_arg, output_arg = cmd[1:3]
        project = ElmProject(file_arg)
        log_string('project.logging.settings', repr(project))
        if '{output}' in output_arg:
            cmd[1] = fs.expanduser(project.main_path)
            output_path = fs.expanduser(project.output_path)
            cmd[2] = output_arg.format(output=output_path)
        else:
            # cmd[1] builds active file rather than project main
            cmd[2] = output_arg.format(null=null_device)
        project_dir = project.working_dir or working_dir
        # ST2: TypeError: __init__() got an unexpected keyword argument 'syntax'
        super(ElmMakeCommand, self).run(cmd, working_dir=project_dir, **kwargs)

    def style_output(self, syntax):
        self.output_view.set_syntax_file(syntax)
        elm_setting = sublime.load_settings('Elm Language Support.sublime-settings')
        user_setting = sublime.load_settings('Preferences.sublime-settings')
        color_scheme = elm_setting.get('build_error_color_scheme') or user_setting.get('color_scheme')
        self.output_view.settings().set('color_scheme', color_scheme)
        if self.is_patched:
            self.debug_text = ''
        else:
            self.debug_text = get_string('make.missing_plugin')

    def on_data(self, proc, data):
        if isinstance(data, str):
            self.buffer += data
        else:
            # ST3 r3153 changed ExecCommand from bytes to str so we must detect which we get and handle appropriately: https://github.com/elm-community/SublimeElmLanguageSupport/issues/48
            self.data_in_bytes = True
            self.buffer += data.decode(self.encoding)

    def on_finished(self, proc):
        result_strs = self.buffer.split('\n')
        flat_map = lambda f, xss: sum(map(f, xss), [])
        output_strs = flat_map(self.format_result, result_strs) + ['']
        output_data = '\n'.join(output_strs)
        # ST3 r3153 changed ExecCommand from bytes to str so we must detect which we get and handle appropriately: https://github.com/elm-community/SublimeElmLanguageSupport/issues/48
        output_data = output_data.encode(self.encoding) if self.data_in_bytes else output_data
        super(ElmMakeCommand, self).on_data(proc, output_data)
        super(ElmMakeCommand, self).on_finished(proc)

    def format_result(self, result_str):
        decode_error = lambda dict: self.format_error(**dict) if 'type' in dict else dict
        try:
            data = json.loads(result_str, object_hook=decode_error)
            return [s for s in data if s is not None]
        except ValueError:
            log_string('make.logging.invalid_json', result_str)
            info_str = result_str.strip()
            return [self.info_format.substitute(info=info_str)] if info_str else []

    def format_error(shelf, type, file, region, tag, overview, details, **kwargs):
        if type == 'warning' and not shelf.warnings:
            return None
        line = region['start']['line']
        column = region['start']['column']
        message = overview
        if details:
            message += '\n' + re.sub(r'(\n)+', r'\1', details)
        # TypeError: substitute() got multiple values for argument 'self'
        # https://bugs.python.org/issue23671
        return shelf.error_format.substitute(**locals())
