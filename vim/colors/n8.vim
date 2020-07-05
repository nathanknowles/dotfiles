" Quantum - A 24-bit Material color scheme for Vim
" Author: Nathan Knowles
" License: MIT

highlight clear

if exists('syntax_on')
    syntax reset
endif

set background=dark
let g:colors_name = 'n8'

let g:quantum_italics = get(g:, 'quantum_italics', 0)
let g:quantum_black = get(g:, 'quantum_black', 0)

" Color Palette

let s:gray     = '#b7bdc0'
let s:gray1    =   '#6c5c71'
let s:purple    = '#a48add'
let s:purple1   = '#3E313C'
let s:purple2   = '#463944'
let s:purple3   = '#8071a1'
let s:purple4   = '#3c343c' 
let s:white1    = '#f6f6f4'
let s:red       = '#dd7186'
let s:green     = '#87bb7c'
let s:yellow    = '#d5b875'
let s:blue      = '#70ace5'
let s:blue1     = '#67709b'
let s:cyan      = '#69c5ce'
let s:cyan2     = '#009888'
let s:orange    = '#ffc856'
let s:indigo    = '#7681de'

function! s:HL(group, fg, bg, attr)
    let l:attr = a:attr
    if !g:quantum_italics && l:attr ==# 'italic'
        let l:attr = 'none'
    endif

    if !empty(a:fg)
        exec 'hi ' . a:group . ' guifg=' . a:fg
    endif
    if !empty(a:bg)
        exec 'hi ' . a:group . ' guibg=' . a:bg
    endif
    if !empty(a:attr)
        exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
    endif
endfun

" Vim Editor
call s:HL('ColorColumn',                    '',         s:purple2,    '')
call s:HL('Cursor',                         s:purple2,    s:gray,    '')
call s:HL('CursorColumn',                   '',         s:purple2,    '')
call s:HL('CursorLine',                     s:purple,         s:purple2,    'none')
call s:HL('CursorLineNr',                   s:purple3,     s:purple2,    'none')
call s:HL('Directory',                      s:purple3,     '',         '')
call s:HL('DiffAdd',                        s:green,    s:purple2,    'none')
call s:HL('DiffChange',                     s:yellow,   s:purple2,    'none')
call s:HL('DiffDelete',                     s:red,      s:purple2,    'none')
call s:HL('DiffText',                       s:blue,     s:purple2,    'none')
call s:HL('ErrorMsg',                       s:red,      s:purple1,    'bold')
call s:HL('FoldColumn',                     s:orange,    s:purple1,    '')
call s:HL('Folded',                         s:purple4,    s:purple1,    '')
call s:HL('IncSearch',                      s:yellow,   '',         '')
call s:HL('LineNr',                         s:gray1,    '',         '')
call s:HL('MatchParen',                     s:orange,    s:purple3,     'bold')
call s:HL('ModeMsg',                        s:green,    '',         '')
call s:HL('MoreMsg',                        s:white1,    '',         '')
call s:HL('NonText',                        s:white1,    '',         'none')
call s:HL('Normal',                         s:gray,    s:purple1,    'none')
call s:HL('Pmenu',                          s:gray,    s:purple4,    '')
call s:HL('PmenuSbar',                      '',         s:purple2,    '')
call s:HL('PmenuSel',                       s:purple2,    s:purple3,     '')
call s:HL('PmenuThumb',                     '',         s:orange,    '')
call s:HL('Question',                       s:blue,     '',         'none')
call s:HL('Search',                         s:purple1,    s:yellow,   '')
call s:HL('SignColumn',                     s:gray,    s:purple1,    '')
call s:HL('SpecialKey',                     s:orange,    '',         '')
call s:HL('SpellCap',                       s:blue,     s:purple2,    'undercurl')
call s:HL('SpellBad',                       s:red,      s:purple2,    'undercurl')
call s:HL('StatusLine',                     s:gray,    s:purple4,    'none')
call s:HL('StatusLineNC',                   s:purple2,    s:orange,    '')
call s:HL('TabLine',                        s:orange,    s:purple2,    'none')
call s:HL('TabLineFill',                    s:orange,    s:purple2,    'none')
call s:HL('TabLineSel',                     s:yellow,   s:purple4,    'none')
call s:HL('Title',                          s:green,    '',         'none')
call s:HL('VertSplit',                      s:blue,    s:purple1,    'none')
call s:HL('Visual',                         s:gray,    s:purple4,    '')
call s:HL('WarningMsg',                     s:red,      '',         '')
call s:HL('WildMenu',                       s:purple2,    s:purple3,	    '')

" Standard Syntax
call s:HL('Comment',                        s:blue1,    '',         'italic')
call s:HL('Constant',                       s:orange,   '',         '')
call s:HL('String',                         s:green,    '',         '')
call s:HL('Character',                      s:green,    '',         '')
call s:HL('Identifier',                     s:red,      '',         'none')
call s:HL('Function',                       s:blue,     '',         '')
call s:HL('Statement',                      s:purple,   '',         'none')
call s:HL('Operator',                       s:cyan,     '',         '')
call s:HL('PreProc',                        s:cyan,     '',         '')
call s:HL('Include',                        s:blue,     '',         '')
call s:HL('Define',                         s:purple,   '',         'none')
call s:HL('Macro',                          s:purple,   '',         '')
call s:HL('Type',                           s:yellow,   '',         'italic')
call s:HL('Structure',                      s:cyan,     '',         '')
call s:HL('Special',                        s:yellow,   '',         'italic')
call s:HL('Underlined',                     s:blue,     '',         'none')
call s:HL('Error',                          s:red,      s:purple1,    'bold')
call s:HL('Todo',                           s:orange,   s:purple1,    'bold')

" CSS
call s:HL('cssAttrComma',                   s:gray,    '',         '')
call s:HL('cssPseudoClassId',               s:yellow,   '',         '')
call s:HL('cssBraces',                      s:gray,    '',         '')
call s:HL('cssClassName',                   s:yellow,   '',         '')
call s:HL('cssClassNameDot',                s:yellow,   '',         '')
call s:HL('cssFunctionName',                s:blue,     '',         '')
call s:HL('cssImportant',                   s:cyan,     '',         '')
call s:HL('cssIncludeKeyword',              s:purple,   '',         '')
call s:HL('cssTagName',                     s:red,      '',         '')
call s:HL('cssMediaType',                   s:orange,   '',         '')
call s:HL('cssProp',                        s:gray,    '',         '')
call s:HL('cssSelectorOp',                  s:cyan,     '',         '')
call s:HL('cssSelectorOp2',                 s:cyan,     '',         '')

" Commit Messages (Git)
call s:HL('gitcommitHeader',                s:purple,   '',         '')
call s:HL('gitcommitUnmerged',              s:green,    '',         '')
call s:HL('gitcommitSelectedFile',          s:green,    '',         '')
call s:HL('gitcommitDiscardedFile',         s:red,      '',         '')
call s:HL('gitcommitUnmergedFile',          s:yellow,   '',         '')
call s:HL('gitcommitSelectedType',          s:green,    '',         '')
call s:HL('gitcommitSummary',               s:blue,     '',         '')
call s:HL('gitcommitDiscardedType',         s:red,      '',         '')
hi link gitcommitNoBranch       gitcommitBranch
hi link gitcommitUntracked      gitcommitComment
hi link gitcommitDiscarded      gitcommitComment
hi link gitcommitSelected       gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow  gitcommitSelectedFile
hi link gitcommitUnmergedArrow  gitcommitUnmergedFile

" HTML
call s:HL('htmlEndTag',                     s:blue,     '',         '')
call s:HL('htmlLink',                       s:red,      '',         '')
call s:HL('htmlTag',                        s:blue,     '',         '')
call s:HL('htmlTitle',                      s:gray,    '',         '')
call s:HL('htmlSpecialTagName',             s:purple,   '',         '')

" Javascript
call s:HL('javaScriptBraces',               s:gray,    '',         '')
call s:HL('javaScriptNull',                 s:orange,   '',         '')
call s:HL('javaScriptIdentifier',           s:purple,   '',         '')
call s:HL('javaScriptNumber',               s:orange,   '',         '')
call s:HL('javaScriptRequire',              s:purple3,     '',         '')
call s:HL('javaScriptReserved',             s:purple,   '',         '')
" pangloss/vim-javascript
call s:HL('jsArrowFunction',                s:purple,   '',         '')
call s:HL('jsAsyncKeyword',                 s:purple,   '',         '')
call s:HL('jsExtendsKeyword',               s:purple,   '',         '')
call s:HL('jsClassKeyword',                 s:purple,   '',         '')
call s:HL('jsDocParam',                     s:green,    '',         '')
call s:HL('jsDocTags',                      s:purple3,     '',         '')
call s:HL('jsForAwait',                     s:purple,   '',         '')
call s:HL('jsFlowArgumentDef',              s:yellow,   '',         '')
call s:HL('jsFrom',                         s:purple,   '',         '')
call s:HL('jsImport',                       s:purple,   '',         '')
call s:HL('jsExport',                       s:purple,   '',         '')
call s:HL('jsExportDefault',                s:purple,   '',         '')
call s:HL('jsFuncCall',                     s:blue,     '',         '')
call s:HL('jsFunction',                     s:purple,   '',         '')
call s:HL('jsGlobalObjects',                s:yellow,   '',         '')
call s:HL('jsGlobalNodeObjects',            s:yellow,   '',         '')
call s:HL('jsModuleAs',                     s:purple,   '',         '')
call s:HL('jsNull',                         s:orange,   '',         '')
call s:HL('jsStorageClass',                 s:purple,   '',         '')
call s:HL('jsTemplateBraces',               s:red,      '',         '')
call s:HL('jsTemplateExpression',           s:red,      '',         '')
call s:HL('jsThis',                         s:red,      '',         '')
call s:HL('jsUndefined',                    s:orange,   '',         '')

" JSON
call s:HL('jsonBraces',                     s:gray,    '',         '')

" Less
call s:HL('lessAmpersand',                  s:red,      '',         '')
call s:HL('lessClassChar',                  s:yellow,   '',         '')
call s:HL('lessCssAttribute',               s:gray,    '',         '')
call s:HL('lessFunction',                   s:blue,     '',         '')
call s:HL('lessVariable',                   s:purple,   '',         '')

" Markdown
call s:HL('markdownBold',                   s:yellow,   '',         'bold')
call s:HL('markdownCode',                   s:purple3,     '',         '')
call s:HL('markdownCodeBlock',              s:purple3,     '',         '')
call s:HL('markdownCodeDelimiter',          s:purple3,     '',         '')
call s:HL('markdownHeadingDelimiter',       s:green,    '',         '')
call s:HL('markdownHeadingRule',            s:orange,    '',         '')
call s:HL('markdownId',                     s:purple,   '',         '')
call s:HL('markdownItalic',                 s:blue,     '',         'italic')
call s:HL('markdownListMarker',             s:orange,   '',         '')
call s:HL('markdownOrderedListMarker',      s:orange,   '',         '')
call s:HL('markdownRule',                   s:orange,    '',         '')
call s:HL('markdownUrl',                    s:purple,   '',         '')
call s:HL('markdownUrlTitleDelimiter',      s:green,    '',         '')

" Ruby
call s:HL('rubyInterpolation',              s:purple3,     '',         '')
call s:HL('rubyInterpolationDelimiter',     s:indigo,   '',         '')
call s:HL('rubyRegexp',                     s:purple3,     '',         '')
call s:HL('rubyRegexpDelimiter',            s:indigo,   '',         '')
call s:HL('rubyStringDelimiter',            s:green,    '',         '')

" Sass
call s:HL('sassAmpersand',                  s:red,      '',         '')
call s:HL('sassClassChar',                  s:yellow,   '',         '')
call s:HL('sassMixinName',                  s:blue,     '',         '')
call s:HL('sassVariable',                   s:purple,   '',         '')

" Vim-Fugitive
call s:HL('diffAdded',                      s:green,    '',         '')
call s:HL('diffRemoved',                    s:red,      '',         '')

" Vim-Gittgutter
call s:HL('GitGutterAdd',                   s:green,    '',         '')
call s:HL('GitGutterChange',                s:yellow,   '',         '')
call s:HL('GitGutterChangeDelete',          s:orange,   '',         '')
call s:HL('GitGutterDelete',                s:red,      '',         '')

" Vim-Signify
hi link SignifySignAdd GitGutterAdd
hi link SignifySignChange GitGutterChange
hi link SignifySignDelete GitGutterDelete

" XML
call s:HL('xmlAttrib',                      s:yellow,   '',         '')
call s:HL('xmlEndTag',                      s:blue,     '',         '')
call s:HL('xmlTag',                         s:blue,     '',         '')
call s:HL('xmlTagName',                     s:blue,     '',         '')

" Neovim terminal colors
if has('nvim')
    let g:terminal_color_0 = s:purple1
    let g:terminal_color_1 = s:red
    let g:terminal_color_2 = s:green
    let g:terminal_color_3 = s:yellow
    let g:terminal_color_4 = s:blue
    let g:terminal_color_5 = s:purple
    let g:terminal_color_6 = s:purple3
    let g:terminal_color_7 = s:white1
    let g:terminal_color_8 = s:purple4
    let g:terminal_color_9 = s:red
    let g:terminal_color_10 = s:green
    let g:terminal_color_11 = s:yellow
    let g:terminal_color_12 = s:blue
    let g:terminal_color_13 = s:purple
    let g:terminal_color_14 = s:purple3
    let g:terminal_color_15 = s:orange
    let g:terminal_color_background = g:terminal_color_0
    let g:terminal_color_foreground = g:terminal_color_7
endif
