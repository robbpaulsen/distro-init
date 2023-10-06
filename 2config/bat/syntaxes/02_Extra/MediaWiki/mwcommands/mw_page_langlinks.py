#!/usr/bin/env python\n
# -*- coding: utf-8 -*-

import sublime
import sublime_plugin
from . import mw_utils as utils


class MediawikerShowPageLanglinksCommand(sublime_plugin.WindowCommand):
    ''' alias to Get page command '''

    def run(self):
        self.window.run_command(utils.cmd('page'), {"action": utils.cmd('page_langlinks')})

    def is_visible(self, *args):
        if utils.props.get_setting('offline_mode'):
            return False
        return utils.props.get_view_setting(self.window.active_view(), 'is_here')


class MediawikerPageLanglinksCommand(sublime_plugin.TextCommand):

    def run(self, edit):
        if utils.props.get_setting('offline_mode'):
            return

        selected_text = self.view.substr(self.view.sel()[0]).strip()
        title = selected_text if selected_text else utils.get_title()
        self.mw_get_page_langlinks(title)

        self.lang_prefixes = []
        for lang_prefix in self.links.keys():
            self.lang_prefixes.append(lang_prefix)

        self.links_names = ['{}: {}'.format(lp, self.links[lp]) for lp in self.lang_prefixes]
        if self.links_names:
            sublime.active_window().show_quick_panel(self.links_names, self.on_done)
        else:
            utils.status_message('Unable to find laguage links for "{}"'.format(title))

    def mw_get_page_langlinks(self, title):
        self.links = {}
        page = utils.api.get_page(title)

        linksgen = utils.api.get_page_langlinks(page)
        if linksgen:
            while True:
                try:
                    prop = linksgen.next()
                    self.links[prop[0]] = prop[1]
                except StopIteration:
                    break

    def on_done(self, index):
        if index >= 0:
            self.lang_prefix = self.lang_prefixes[index]
            self.page_name = self.links[self.lang_prefix]

            self.process_options = ['Open selected page', 'Replace selected text']
            sublime.active_window().show_quick_panel(self.process_options, self.process)

    def process(self, index):
        if index == 0:
            site_active_new = None
            site_active = utils.get_view_site()
            sites = utils.props.get_setting('site')
            host = sites[site_active]['host']
            domain_first = '.'.join(host.split('.')[-2:])
            # NOTE: only links like lang_prefix.site.com supported.. (like en.wikipedia.org)
            host_new = '{}.{}'.format(self.lang_prefix, domain_first)
            # if host_new exists in settings we can open page
            for site in sites:
                if sites[site]['host'].split(':')[0] == host_new:
                    site_active_new = site
                    break
            if site_active_new:
                # open page with force site_active_new
                sublime.active_window().run_command(utils.cmd('page'), {
                    'action': utils.cmd('show_page'),
                    'action_params': {'title': self.page_name, 'site_active': site_active_new}
                })
            else:
                utils.error_message('Settings not found for host "{}".'.format(host_new))
        elif index == 1:
            self.view.run_command(utils.cmd('replace_text'), {'text': self.page_name})
