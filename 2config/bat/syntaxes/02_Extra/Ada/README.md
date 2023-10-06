# About 'Ada.sublime-syntax'

Ada language sublime syntax highlighting support file. Created for use with command 
line tool called [bat](https://github.com/sharkdp/bat) created by @sharkdp

> bat : A cat(1) clone with syntax highlighting and Git integration.


## Purpose

To provide an [Ada](https://www.adacore.com/about-ada) language syntax 
highlighting support file, that works with [bat](https://github.com/sharkdp/bat).


## Update: 20 Feb 2021

The request to include Ada language syntax highlighting support within the `bat` application is being tracked via [bat Issues #1300](https://github.com/sharkdp/bat/issues/1300). Once included, this will negate the need for the steps below. Once a Pull Request (PR) is submitted and accepted, I will update this page again with the version it is included in.  In the meantime the process below still works and is used on a daily basis on both Windows and Linux version of `bat`.


## Installation and Usage

Only the single file: [Ada.sublime-syntax](https://github.com/wiremoons/ada-sublime-syntax/blob/main/ada-sublime-syntax/Ada.sublime-syntax) is required!

### Download
Download either by:

a) cloning this whole repo and the copy the file as per the instruction below: `git clone https://github.com/wiremoons/ada-sublime-syntax.git` **or** 

b) just download the single file directly to your computer with a tool such as curl or wget : `curl -OL https://raw.githubusercontent.com/wiremoons/ada-sublime-syntax/main/ada-sublime-syntax/Ada.sublime-syntax`


## Install
Once you have a copy of the `Ada.sublime-syntax` file, use it with `bat` as follows:

### Ubuntu (Linux)

1. Save a copy of the `Ada.sublime-syntax` from this repo into the following 
directory: `~/.config/bat/syntaxes/`
2. Run the following `bat` command: `bat cache --build`
3. Check Ada is now included in the list when running: `bat --list-languages`

Now when viewing an Ada language source code file, syntax highlighting should 
be supported.

### Windows 10

1. With `bat.exe` installed run the command: `bat --config-dir`. This location is the `bat.exe` config directory location.
2. Change to the `bat.exe` config directory (as above) and make a new directory called: `syntaxes`.
3. Save a copy of the `Ada.sublime-syntax` from this repo into the newly created `syntaxes` directory.
4. Run the following `bat.exe` command: `bat.exe cache --build`
5. Check Ada is now included in the list when running: `bat --list-languages`

Just for clarity - on my Windows 10 computer with a username of *simon* the full path of the 
required `syntaxes` directory is: `C:\Users\simon\AppData\Roaming\bat\syntaxes\` and this is 
where the a copy of the `Ada.sublime-syntax` file from this repo should be saved. The 
username (ie `simon`) will be diffrent of course for your computer! Then run the 
command: `bat cache --build` to complete the process.

Now when viewing an Ada language source code file, syntax highlighting should 
be supported.
 
More complete instructions on using and adding a new syntax files with `bat` are 
included in the [Bat Readme document](https://github.com/sharkdp/bat#adding-new-syntaxes--language-definitions).


## Acknowledgements

The `Ada.sublime-syntax`file was possible due to the following other syntax files:

- Original `Ada.tmLanguage` file: [@mulander](https://github.com/mulander/ada.tmbundle/blob/master/Syntaxes/Ada.tmLanguage) on GitHub;
- The `ada.tmbundle` file [@textmate](https://github.com/textmate/ada.tmbundle) on GitHub.

The above `Ada.tmLanguage` file was used as a basis for the conversion to the 
`Ada.sublime-syntax` file for use with `bat`.


## License

The files are provided under the MIT open source license. A copy of the 
MIT license file is [here](./LICENSE).

The files in the repository are licensed under the **MIT License** that also 
respects the original licences used on the two repositories this syntax file
was derived from. The original license provided on both the @textmate and @mulander 
repos was:

```
Permission to copy, use, modify, sell and distribute this
software is granted. This software is provided "as is" without
express or implied warranty, and with no claim as to its
suitability for any purpose.
```
