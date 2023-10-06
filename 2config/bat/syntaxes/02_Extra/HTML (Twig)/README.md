# PHP Twig tmBundle

A [TextMate][textmate] _(and [Sublime Text][sublime])_ bundle for [Twig][twig].


## Thanks

I'd like to thank a few people that have helped me out with the creation of this bundle.

* __taavi__ for fixing a bug stopping the bundle from actually working in TextMate.
* __DuoSRX__ for contributing a bunch of snippets.
* __Infininight__ in __#textmate__ _(freenode)_ for helping me a ton with the rewrite.


## Notes

This is my first tmbundle and it was made and tested in [Sublime Text][sublime]. Everything should work fine, but if something doesn't please report it and I'll do my best to get it fixed.

I'm also not extremely familiar with TextMate's method of creating language syntaxes. If anyone has any input on optimizing it or on anything else, such as choices in grammar scopes, please feel free to let me know.


## Installation

TextMate, and most editors that support TextMate bundles, allow the installation of bundles simply by extracting an archive or cloning the repository into the application's bundle directory. This bundle is no different. Below is a list of common bundle directories.


### Sublime Text

To install this bundle in Sublime Text, a few extra steps are required.

1. Open Sublime Text and in the _Preferences_ menu click _Browse Packages_.
2. In the directory that was just opened, create a new directory `PHP-Twig/`.
3. Move the contents of the `Preferences/`, `Snippets/`, and `Syntaxes/` directories of this repo into the directory you just created.
4. Restart Sublime Text.

### TextMate

    /Library/Application Support/TextMate/Bundles

### TextMate 2

You can install this bundle in TextMate 2 by opening the preferences and going to the bundles tab. After installation it will be automatically updated for you.


## Scopes

To aid theming, here's a list of what each Twig element is scoped to.

    Tags:
        {{ }}:
            Tag:       punctuation.section.tag.twig
            Scope:     meta.tag.template.value.twig
        {% %}:
            Tag:       punctuation.section.tag.twig
            Scope:     meta.tag.template.block.twig
        {# #}:         comment.block.twig
        Embedded:
            {{ }}:     meta.tag.inline.any.html meta.tag.template.value.twig
            {% %}:     meta.tag.inline.any.html meta.tag.template.block.twig
            
    Constants:
        Language:      constant.language.twig
        Numeric:       constant.numeric.twig
        
    Operators:
        Arithmetic:    keyword.operator.arithmetic.twig
        Assignment:    keyword.operator.assignment.twig
        Bitwise:       keyword.operator.bitwise.twig
        Comparison:    keyword.operator.comparison.twig
        Logical:       keyword.operator.logical.twig
        Other:         keyword.operator.other.twig
        
    Objects:           variable.other.twig
    Properties:        variable.other.property.twig
        Accessors:
            Dot:       punctuation.separator.property.twig
            Array:
                Begin: punctuation.section.array.begin.twig
                End:   punctuation.section.array.end.twig
                
    Strings:
        Single:        string.quoted.single.twig
        Double:        string.quoted.double.twig
    Arrays:            meta.array.twig
        Accessor:
            Begin:     punctuation.section.array.begin.twig
            End:       punctuation.section.array.end.twig
        Separator:     punctuation.separator.object.twig
    Hashes:            meta.hash.twig
        Accessor:
            Begin:     punctuation.section.hash.begin.twig
            End:       punctuation.section.hash.end.twig
        Separator:     punctuation.separator.object.twig
            Keys:      punctuation.separator.key-value.twig
            
    Keywords:          keyword.control.twig
    
    Functions:         support.function.twig
        Parens:
            Begin:     punctuation.definition.parameters.begin.twig
            End:       punctuation.definition.parameters.end.twig
        Arguments:     meta.function.arguments.twig
    Filters:           support.function.twig
        Parens:
            Begin:     punctuation.definition.parameters.begin.twig
            End:       punctuation.definition.parameters.end.twig
        Arguments:     meta.function.arguments.twig
        User-Defined:  meta.function-call.other.twig
    Macros:            meta.function-call.twig


[sublime]: http://www.sublimetext.com/
[textmate]: http://macromates.com/
[twig]: http://www.twig-project.org/
