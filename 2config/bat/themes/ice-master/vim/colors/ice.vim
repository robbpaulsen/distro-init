highlight clear
if exists("syntax_on")
  syntax reset
endif

if has("termguicolors")
  set termguicolors
endif

set background=dark
let colors_name="Ice"

highlight clear CursorLine
set cursorline
highlight LineNr guifg=#567080
highlight CursorLineNr cterm=NONE gui=NONE guifg=#aab7c0

highlight Normal guifg=#c0cad0 guibg=#012841

highlight NCDefaultLibraryFunctionCall  guifg=#86f9d2
highlight NCFunctionCall  guifg=#86f9d2
highlight NCVariable  guifg=#c0cad0
highlight NCConstant  guifg=#b3fbff
highlight NCMiscellaneous  guifg=#a8a8ff
highlight NCType  guifg=#4dc3fe
highlight NCParameter  guifg=#e5e9ec
highlight NCOperator  guifg=#d1aaf8
highlight NCComparisonLogicalOperator  guifg=#b3fbff
highlight NCComment cterm=italic gui=italic guifg=#456174
highlight NCDocumentationComment  guifg=#aab7c0
highlight NCFunctionDeclaration  guifg=#7ece98
highlight NCLiteralConstant  guifg=#a8a8ff
highlight NCDefaultLibraryClassType  guifg=#77d8f8
highlight NCNamespaceClassStruct  guifg=#77d8f8
highlight NCString  guifg=#20dfd6
highlight NCProperty  guifg=#2dd2ae
highlight NCKeyword  guifg=#d1aaf8
highlight NCPunctuation  guifg=#788c9a
highlight NCTag  guifg=#2dd2ae
highlight NCItalic  guifg=#b3fbff
highlight NCHeading cterm=bold gui=bold guifg=#86f9d2
highlight NCLinkTag  guifg=#d1aaf8
highlight NCMetaTag  guifg=#d1aaf8
highlight NCStyleTag  guifg=#d1aaf8
highlight NCObjectTag  guifg=#77d8f8
highlight NCInlineTag  guifg=#86f9d2
highlight NCCustomTag  guifg=#a8a8ff
highlight NCScriptTag  guifg=#d1aaf8
highlight NCAttributeName  guifg=#86f9d2
highlight NCTagPunctuation  guifg=#788c9a
highlight NCUnrecognizedTag  guifg=#b3fbff
highlight NCJsonLevel01  guifg=#2dd2ae
highlight NCJsonLevel02  guifg=#d1aaf8
highlight NCJsonLevel03  guifg=#4dc3fe
highlight NCJsonLevel04  guifg=#86f9d2
highlight NCJsonLevel05  guifg=#77d8f8
highlight NCJsonLevel06  guifg=#2dd2ae
highlight NCJsonLevel07  guifg=#d1aaf8
highlight NCJsonLevel08  guifg=#4dc3fe
highlight NCJsonLevel09  guifg=#86f9d2
highlight NCJsonLevel10  guifg=#77d8f8
highlight NCJsonLevel11  guifg=#2dd2ae

hi! link xmlAttrib NCAttributeName
hi! link cssTagName NCAttributeName
hi! link htmlArg NCAttributeName
hi! link Comment NCComment
hi! link cssAtRuleLogical NCComparisonLogicalOperator
hi! link shOption NCComparisonLogicalOperator
hi! link awkBoolLogic NCComparisonLogicalOperator
hi! link Constant NCConstant
hi! link rubyInstanceVariable NCConstant
hi! link rubyClassVariable NCConstant
hi! link csInterpolationDelimiter NCConstant
hi! link elixirVariable NCConstant
hi! link elixirInterpolationDelimiter NCConstant
hi! link shDeref NCConstant
hi! link yamlNodeTag NCConstant
hi! link yamlAlias NCConstant
hi! link phpIntVar NCDefaultLibraryClassType
hi! link cssColor NCDefaultLibraryClassType
hi! link awkVariables NCDefaultLibraryClassType
hi! link phpFunctions NCDefaultLibraryFunctionCall
hi! link cssFunctionName NCDefaultLibraryFunctionCall
hi! link pythonBuiltin NCDefaultLibraryFunctionCall
hi! link goBuiltins NCDefaultLibraryFunctionCall
hi! link shCmdSubRegion NCDefaultLibraryFunctionCall
hi! link javaCommentTitle NCDocumentationComment
hi! link shArithmetic NCForeground
hi! link shCommandSub NCForeground
hi! link Function NCFunctionCall
hi! link rustMacro NCFunctionCall
hi! link perlMethod NCFunctionCall
hi! link rubyMethodName NCFunctionDeclaration
hi! link rustFuncName NCFunctionDeclaration
hi! link elixirFunctionDeclaration NCFunctionDeclaration
hi! link shFunction NCFunctionDeclaration
hi! link perlSubName NCFunctionDeclaration
hi! link perlFunctionName NCFunctionDeclaration
hi! link htmlTitle NCHeading
hi! link tomlTable NCHeading
hi! link Statement NCKeyword
hi! link PreProc NCKeyword
hi! link phpStructure NCKeyword
hi! link phpStorageClass NCKeyword
hi! link javaScriptFunction NCKeyword
hi! link rustStorage NCKeyword
hi! link csStorage NCKeyword
hi! link csModifier NCKeyword
hi! link csClass NCKeyword
hi! link javaScopeDecl NCKeyword
hi! link javaClassDecl NCKeyword
hi! link javaStorageClass NCKeyword
hi! link Number NCLiteralConstant
hi! link Boolean NCLiteralConstant
hi! link Float NCLiteralConstant
hi! link cssAttr NCLiteralConstant
hi! link elixirAtom NCLiteralConstant
hi! link poHeaderItem NCLiteralConstant
hi! link htmlSpecialTagName NCMetaTag
hi! link Special NCMiscellaneous
hi! link rustAttribute NCMiscellaneous
hi! link javaAnnotation NCMiscellaneous
hi! link yamlDocumentStart NCMiscellaneous
hi! link poCommentSources NCMiscellaneous
hi! link Identifier NCNamespaceClassStruct
hi! link phpClasses NCNamespaceClassStruct
hi! link rubyModuleName NCNamespaceClassStruct
hi! link rubyClassName NCNamespaceClassStruct
hi! link rustModPath NCNamespaceClassStruct
hi! link csClassType NCNamespaceClassStruct
hi! link elixirModuleDeclaration NCNamespaceClassStruct
hi! link elixirAlias NCNamespaceClassStruct
hi! link perlPackageDecl NCNamespaceClassStruct
hi! link perlPackageRef NCNamespaceClassStruct
hi! link Operator NCOperator
hi! link cssSelectorOp NCOperator
hi! link shVarAssign NCOperator
hi! link shArithRegion NCOperator
hi! link awkOperator NCOperator
hi! link awkExpression NCOperator
hi! link cssProp NCProperty
hi! link tomlKey NCProperty
hi! link shSetList NCProperty
hi! link shVariable NCProperty
hi! link yamlBlockMappingKey NCProperty
hi! link yamlBlockCollectionItemStart NCPunctuation
hi! link String NCString
hi! link Character NCString
hi! link yamlPlainScalar NCString
hi! link Tag NCTag
hi! link csXmlTag NCTag
hi! link xmlTag NCTag
hi! link htmlTagName NCTag
hi! link xmlTagName NCTag
hi! link htmlTag NCTagPunctuation
hi! link xmlTag NCTagPunctuation
hi! link Type NCType
hi! link htmlTagN NCUnrecognizedTag
hi! link perlVarPlain NCVariable