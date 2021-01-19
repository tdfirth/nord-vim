" Copyright (C) 2016-present Arctic Ice Studio <development@arcticicestudio.com>
" Copyright (C) 2016-present Sven Greb <development@svengreb.de>

" Project: Nord Vim
" Repository: https://github.com/arcticicestudio/nord-vim
" License: MIT

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "nordl"
let s:nordl_vim_version="0.15.0"
set background=light

" Background
let s:nordl0_gui = "ECEFF4"
" Dark White
let s:nordl1_gui = "#D8DEE9"
" Dark White
let s:nordl2_gui = "#D8DEE9"
" Grey
let s:nordl3_gui = "#7B88A1"
" Grey
let s:nordl3_gui_bright = "#7B88A1"
" Light Grey
let s:nordl4_gui = "#434C5E"
" Lightest Grey
let s:nordl4_gui_bright = "#4C566A"
" Dark Grey
let s:nordl5_gui = "#3B4252"
" Darkest Grey
let s:nordl6_gui = "#2E3440"
" Darkest Blue
let s:nordl7_gui = "#5E81AC"
" Turquoise
let s:nordl7_gui_bright = "#8FBCBB"
" Darkest Blue
let s:nordl8_gui = "#5272AF"
" Light Blue
let s:nordl8_gui_bright = "#88C0D0"
" Darkest Blue
let s:nordl9_gui = "#5272AF"
" Darkest Blue
let s:nordl10_gui = "#5272AF"
" Red
let s:nordl11_gui = "#99324B"
" Orange
let s:nordl12_gui = "#AC4426"
" Yellow
let s:nordl13_gui = "#9A7500"
" Green
let s:nordl14_gui = "#4F894C"
" Magenta
let s:nordl15_gui = "#97365B"
" Off White
let s:nordl16_gui = "#E5E9F0"

  " ;; name        default   256       16
  " ((bg         '("#E5E9F0" nil       nil))
  "  (bg-alt     '("#D8DEE9" nil       nil))
  "  (base0      '("#F0F4FC" "black"   "black"))
  "  (base1      '("#E3EAF5" "#1e1e1e" "brightblack"))
  "  (base2      '("#D8DEE9" "#2e2e2e" "brightblack"))
  "  (base3      '("#C2D0E7" "#262626" "brightblack"))
  "  (base4      '("#B8C5DB" "#3f3f3f" "brightblack"))
  "  (base5      '("#AEBACF" "#525252" "brightblack"))
  "  (base6      '("#A1ACC0" "#6b6b6b" "brightblack"))
  "  (base7      '("#60728C" "#979797" "brightblack"))
  "  (base8      '("#485163" "#dfdfdf" "white"))
  "  (fg         '("#3B4252" "#2d2d2d" "white"))
  "  (fg-alt     '("#2E3440" "#bfbfbf" "brightwhite"))

  "  (grey base4)
  "  (red       '("#99324B" "#ff6655" "red"))
  "  (orange    '("#AC4426" "#dd8844" "brightred"))
  "  (green     '("#4F894C" "#99bb66" "green"))
  "  (teal      '("#29838D" "#44b9b1" "brightgreen"))
  "  (yellow    '("#9A7500" "#ECBE7B" "yellow"))
  "  (blue      '("#3B6EA8" "#51afef" "brightblue"))
  "  (dark-blue '("#5272AF" "#2257A0" "blue"))
  "  (magenta   '("#97365B" "#c678dd" "magenta"))
  "  (violet    '("#842879" "#a9a1e1" "brightmagenta"))
  "  (cyan      '("#398EAC" "#46D9FF" "brightcyan"))
  "  (dark-cyan '("#2C7088" "#5699AF" "cyan"))

"  normal:
"0    black: '#3b4252'
"1    red: '#bf616a'
"2    green: '#a3be8c'
"3    yellow: '#ebcb8b'
"4    blue: '#81a1c1'
"5    magenta: '#b48ead'
"6    cyan: '#88c0d0'
"7    white: '#e5e9f0'
"  bright:
"8    black: '#4c566a'
"9    red: '#bf616a'
"10    green: '#a3be8c'
"11    yellow: '#ebcb8b'
"12    blue: '#81a1c1'
"13    magenta: '#b48ead'
"14    cyan: '#8fbcbb'
"15    white: '#eceff4'
"  dim:

let s:nordl0_term = "7"
let s:nordl1_term = "7"
let s:nordl2_term = "7"
let s:nordl3_term = "8"
let s:nordl4_term = "8"
let s:nordl5_term = "0"
let s:nordl6_term = "0"
let s:nordl7_term = "4"
let s:nordl8_term = "4"
let s:nordl9_term = "6"
let s:nordl10_term = "6"
let s:nordl11_term = "9"
let s:nordl12_term = "9"
let s:nordl13_term = "11"
let s:nordl14_term = "10"
let s:nordl15_term = "13"

let s:nordl3_gui_brightened = [
  \ s:nordl3_gui,
  \ "#4e586d",
  \ "#505b70",
  \ "#525d73",
  \ "#556076",
  \ "#576279",
  \ "#59647c",
  \ "#5b677f",
  \ "#5d6982",
  \ "#5f6c85",
  \ "#616e88",
  \ "#63718b",
  \ "#66738e",
  \ "#687591",
  \ "#6a7894",
  \ "#6d7a96",
  \ "#6f7d98",
  \ "#72809a",
  \ "#75829c",
  \ "#78859e",
  \ "#7b88a1",
\ ]

if !exists("g:nord_bold")
  let g:nord_bold = 1
endif

let s:bold = "bold,"
if g:nord_bold == 0
  let s:bold = ""
endif

if !exists("g:nord_italic")
  if has("gui_running") || $TERM_ITALICS == "true"
    let g:nord_italic = 1
  else
    let g:nord_italic = 0
  endif
endif

let s:italic = "italic,"
if g:nord_italic == 0
  let s:italic = ""
endif

let s:underline = "underline,"
if ! get(g:, "nord_underline", 1)
  let s:underline = "NONE,"
endif

let s:italicize_comments = ""
if exists("g:nord_italic_comments")
  if g:nord_italic_comments == 1
    let s:italicize_comments = s:italic
  endif
endif

if !exists('g:nord_uniform_status_lines')
  let g:nord_uniform_status_lines = 0
endif

function! s:logWarning(msg)
  echohl WarningMsg
  echomsg 'nord: warning: ' . a:msg
  echohl None
endfunction

if exists("g:nord_comment_brightness")
  call s:logWarning('Variable g:nord_comment_brightness has been deprecated and will be removed in version 1.0.0!' .
                   \' The comment color brightness has been increased by 10% by default.' .
                   \' Please see https://github.com/arcticicestudio/nord-vim/issues/145 for more details.')
  let g:nord_comment_brightness = 10
endif

if !exists("g:nord_uniform_diff_background")
  let g:nord_uniform_diff_background = 0
endif

if !exists("g:nord_cursor_line_number_background")
  let g:nord_cursor_line_number_background = 0
endif

if !exists("g:nord_bold_vertical_split_line")
  let g:nord_bold_vertical_split_line = 0
endif

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfunction

"+---------------+
"+ UI Components +
"+---------------+
"+--- Attributes ---+
call s:hi("Bold", "", "", "", "", s:bold, "")
call s:hi("Italic", "", "", "", "", s:italic, "")
call s:hi("Underline", "", "", "", "", s:underline, "")

"+--- Editor ---+
call s:hi("ColorColumn", "", s:nordl16_gui, "NONE", s:nordl1_term, "", "")
call s:hi("Cursor", s:nordl0_gui, s:nordl4_gui, "", "NONE", "", "")
call s:hi("CursorLine", "", s:nordl16_gui, "NONE", s:nordl1_term, "NONE", "")
call s:hi("Error", s:nordl0_gui, s:nordl11_gui, "", s:nordl11_term, "", "")
call s:hi("iCursor", s:nordl0_gui, s:nordl4_gui, "", "NONE", "", "")
call s:hi("LineNr", s:nordl3_gui, "NONE", s:nordl3_term, "NONE", "", "")
call s:hi("MatchParen", s:nordl4_gui_bright, s:nordl2_gui, s:nordl8_term, s:nordl3_term, "", "")
call s:hi("NonText", s:nordl2_gui, "", s:nordl3_term, "", "", "")
call s:hi("Normal", s:nordl4_gui, s:nordl0_gui, "NONE", "NONE", "", "")
call s:hi("PMenu", s:nordl4_gui, s:nordl16_gui, "NONE", s:nordl1_term, "NONE", "")
call s:hi("PmenuSbar", s:nordl4_gui, s:nordl16_gui, "NONE", s:nordl1_term, "", "")
call s:hi("PMenuSel", s:nordl4_gui, s:nordl2_gui, s:nordl8_term, s:nordl3_term, "", "")
call s:hi("PmenuThumb", s:nordl8_gui, s:nordl2_gui, "NONE", s:nordl3_term, "", "")
call s:hi("SpecialKey", s:nordl3_gui, "", s:nordl3_term, "", "", "")
call s:hi("SpellBad", s:nordl11_gui, s:nordl0_gui, s:nordl11_term, "NONE", "undercurl", s:nordl11_gui)
call s:hi("SpellCap", s:nordl13_gui, s:nordl0_gui, s:nordl13_term, "NONE", "undercurl", s:nordl13_gui)
call s:hi("SpellLocal", s:nordl5_gui, s:nordl0_gui, s:nordl5_term, "NONE", "undercurl", s:nordl5_gui)
call s:hi("SpellRare", s:nordl6_gui, s:nordl0_gui, s:nordl6_term, "NONE", "undercurl", s:nordl6_gui)
call s:hi("Visual", "", s:nordl2_gui, "", s:nordl1_term, "", "")
call s:hi("VisualNOS", "", s:nordl2_gui, "", s:nordl1_term, "", "")
"+- Neovim Support -+
call s:hi("healthError", s:nordl11_gui, s:nordl1_gui, s:nordl11_term, s:nordl1_term, "", "")
call s:hi("healthSuccess", s:nordl14_gui, s:nordl1_gui, s:nordl14_term, s:nordl1_term, "", "")
call s:hi("healthWarning", s:nordl13_gui, s:nordl1_gui, s:nordl13_term, s:nordl1_term, "", "")
call s:hi("TermCursorNC", "", s:nordl1_gui, "", s:nordl1_term, "", "")

call s:hi("QuickFixLine", s:nordl6_gui, s:nordl1_gui, s:nordl6_term, s:nordl1_term, "", "")

"+- Vim 8 Terminal Colors -+
if has('terminal')
  let g:terminal_ansi_colors = [s:nordl1_gui, s:nordl11_gui, s:nordl14_gui, s:nordl13_gui, s:nordl9_gui, s:nordl15_gui, s:nordl8_gui, s:nordl5_gui, s:nordl3_gui, s:nordl11_gui, s:nordl14_gui, s:nordl13_gui, s:nordl9_gui, s:nordl15_gui, s:nordl7_gui, s:nordl6_gui]
endif

"+- Neovim Terminal Colors -+
if has('nvim')
  let g:terminal_color_0 = s:nordl1_gui
  let g:terminal_color_1 = s:nordl11_gui
  let g:terminal_color_2 = s:nordl14_gui
  let g:terminal_color_3 = s:nordl13_gui
  let g:terminal_color_4 = s:nordl9_gui
  let g:terminal_color_5 = s:nordl15_gui
  let g:terminal_color_6 = s:nordl8_gui
  let g:terminal_color_7 = s:nordl5_gui
  let g:terminal_color_8 = s:nordl3_gui
  let g:terminal_color_9 = s:nordl11_gui
  let g:terminal_color_10 = s:nordl14_gui
  let g:terminal_color_11 = s:nordl13_gui
  let g:terminal_color_12 = s:nordl9_gui
  let g:terminal_color_13 = s:nordl15_gui
  let g:terminal_color_14 = s:nordl7_gui
  let g:terminal_color_15 = s:nordl6_gui
endif

"+--- Gutter ---+
call s:hi("CursorColumn", "", s:nordl1_gui, "NONE", s:nordl1_term, "", "")
if g:nord_cursor_line_number_background == 0
  call s:hi("CursorLineNr", s:nordl4_gui, "", "NONE", "", "NONE", "")
else
  call s:hi("CursorLineNr", s:nordl4_gui, s:nordl1_gui, "NONE", s:nordl1_term, "NONE", "")
endif
call s:hi("Folded", s:nordl3_gui, s:nordl1_gui, s:nordl3_term, s:nordl1_term, s:bold, "")
call s:hi("FoldColumn", s:nordl3_gui, s:nordl0_gui, s:nordl3_term, "NONE", "", "")
call s:hi("SignColumn", s:nordl1_gui, s:nordl0_gui, s:nordl1_term, "NONE", "", "")

"+--- Navigation ---+
call s:hi("Directory", s:nordl8_gui, "", s:nordl8_term, "NONE", "", "")

"+--- Prompt/Status ---+
call s:hi("EndOfBuffer", s:nordl1_gui, "", s:nordl1_term, "NONE", "", "")
call s:hi("ErrorMsg", s:nordl11_gui, s:nordl0_gui, s:nordl11_term, "NONE", "inverse", "")
call s:hi("ModeMsg", s:nordl4_gui, "", "", "", "", "")
call s:hi("MoreMsg", s:nordl8_gui, "", s:nordl8_term, "", "", "")
call s:hi("Question", s:nordl4_gui, "", "NONE", "", "", "")
if g:nord_uniform_status_lines == 0
  call s:hi("StatusLine", s:nordl8_gui, s:nordl3_gui, s:nordl8_term, s:nordl3_term, "NONE", "")
  call s:hi("StatusLineNC", s:nordl4_gui, s:nordl1_gui, "NONE", s:nordl1_term, "NONE", "")
  call s:hi("StatusLineTerm", s:nordl8_gui, s:nordl3_gui, s:nordl8_term, s:nordl3_term, "NONE", "")
  call s:hi("StatusLineTermNC", s:nordl4_gui, s:nordl1_gui, "NONE", s:nordl1_term, "NONE", "")
else
  call s:hi("StatusLine", s:nordl8_gui, s:nordl3_gui, s:nordl8_term, s:nordl3_term, "NONE", "")
  call s:hi("StatusLineNC", s:nordl4_gui, s:nordl3_gui, "NONE", s:nordl3_term, "NONE", "")
  call s:hi("StatusLineTerm", s:nordl8_gui, s:nordl3_gui, s:nordl8_term, s:nordl3_term, "NONE", "")
  call s:hi("StatusLineTermNC", s:nordl4_gui, s:nordl3_gui, "NONE", s:nordl3_term, "NONE", "")
endif
call s:hi("WarningMsg", s:nordl0_gui, s:nordl13_gui, s:nordl1_term, s:nordl13_term, "", "")
call s:hi("WildMenu", s:nordl8_gui, s:nordl1_gui, s:nordl8_term, s:nordl1_term, "", "")

"+--- Search ---+
call s:hi("IncSearch", s:nordl6_gui, s:nordl10_gui, s:nordl6_term, s:nordl10_term, s:underline, "")
call s:hi("Search", s:nordl1_gui, s:nordl8_gui, s:nordl1_term, s:nordl8_term, "NONE", "")

"+--- Tabs ---+
call s:hi("TabLine", s:nordl4_gui, s:nordl1_gui, "NONE", s:nordl1_term, "NONE", "")
call s:hi("TabLineFill", s:nordl4_gui, s:nordl1_gui, "NONE", s:nordl1_term, "NONE", "")
call s:hi("TabLineSel", s:nordl8_gui, s:nordl3_gui, s:nordl8_term, s:nordl3_term, "NONE", "")

"+--- Window ---+
call s:hi("Title", s:nordl4_gui, "", "NONE", "", "NONE", "")

if g:nord_bold_vertical_split_line == 0
  call s:hi("VertSplit", s:nordl2_gui, s:nordl0_gui, s:nordl3_term, "NONE", "NONE", "")
else
  call s:hi("VertSplit", s:nordl2_gui, s:nordl1_gui, s:nordl3_term, s:nordl1_term, "NONE", "")
endif

"+----------------------+
"+ Language Base Groups +
"+----------------------+
call s:hi("Boolean", s:nordl9_gui, "", s:nordl9_term, "", "", "")
call s:hi("Character", s:nordl14_gui, "", s:nordl14_term, "", "", "")
call s:hi("Comment", s:nordl3_gui_bright, "", s:nordl3_term, "", s:italicize_comments, "")
call s:hi("Conditional", s:nordl9_gui, "", s:nordl9_term, "", "", "")
call s:hi("Constant", s:nordl4_gui, "", "NONE", "", "", "")
call s:hi("Define", s:nordl9_gui, "", s:nordl9_term, "", "", "")
call s:hi("Delimiter", s:nordl6_gui, "", s:nordl6_term, "", "", "")
call s:hi("Exception", s:nordl9_gui, "", s:nordl9_term, "", "", "")
call s:hi("Float", s:nordl15_gui, "", s:nordl15_term, "", "", "")
call s:hi("Function", s:nordl8_gui, "", s:nordl8_term, "", "", "")
call s:hi("Identifier", s:nordl4_gui, "", "NONE", "", "NONE", "")
call s:hi("Include", s:nordl9_gui, "", s:nordl9_term, "", "", "")
call s:hi("Keyword", s:nordl9_gui, "", s:nordl9_term, "", "", "")
call s:hi("Label", s:nordl9_gui, "", s:nordl9_term, "", "", "")
call s:hi("Number", s:nordl15_gui, "", s:nordl15_term, "", "", "")
call s:hi("Operator", s:nordl9_gui, "", s:nordl9_term, "", "NONE", "")
call s:hi("PreProc", s:nordl9_gui, "", s:nordl9_term, "", "NONE", "")
call s:hi("Repeat", s:nordl9_gui, "", s:nordl9_term, "", "", "")
call s:hi("Special", s:nordl4_gui, "", "NONE", "", "", "")
call s:hi("SpecialChar", s:nordl13_gui, "", s:nordl13_term, "", "", "")
call s:hi("SpecialComment", s:nordl8_gui, "", s:nordl8_term, "", s:italicize_comments, "")
call s:hi("Statement", s:nordl9_gui, "", s:nordl9_term, "", "", "")
call s:hi("StorageClass", s:nordl9_gui, "", s:nordl9_term, "", "", "")
call s:hi("String", s:nordl14_gui, "", s:nordl14_term, "", "", "")
call s:hi("Structure", s:nordl9_gui, "", s:nordl9_term, "", "", "")
call s:hi("Tag", s:nordl4_gui, "", "", "", "", "")
call s:hi("Todo", s:nordl13_gui, "NONE", s:nordl13_term, "NONE", "", "")
call s:hi("Type", s:nordl9_gui, "", s:nordl9_term, "", "NONE", "")
call s:hi("Typedef", s:nordl9_gui, "", s:nordl9_term, "", "", "")
hi! link Macro Define
hi! link PreCondit PreProc

"+-----------+
"+ Languages +
"+-----------+
call s:hi("asciidocAttributeEntry", s:nordl10_gui, "", s:nordl10_term, "", "", "")
call s:hi("asciidocAttributeList", s:nordl10_gui, "", s:nordl10_term, "", "", "")
call s:hi("asciidocAttributeRef", s:nordl10_gui, "", s:nordl10_term, "", "", "")
call s:hi("asciidocHLabel", s:nordl9_gui, "", s:nordl9_term, "", "", "")
call s:hi("asciidocListingBlock", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("asciidocMacroAttributes", s:nordl8_gui, "", s:nordl8_term, "", "", "")
call s:hi("asciidocOneLineTitle", s:nordl8_gui, "", s:nordl8_term, "", "", "")
call s:hi("asciidocPassthroughBlock", s:nordl9_gui, "", s:nordl9_term, "", "", "")
call s:hi("asciidocQuotedMonospaced", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("asciidocTriplePlusPassthrough", s:nordl7_gui, "", s:nordl7_term, "", "", "")
hi! link asciidocAdmonition Keyword
hi! link asciidocAttributeRef markdownH1
hi! link asciidocBackslash Keyword
hi! link asciidocMacro Keyword
hi! link asciidocQuotedBold Bold
hi! link asciidocQuotedEmphasized Italic
hi! link asciidocQuotedMonospaced2 asciidocQuotedMonospaced
hi! link asciidocQuotedUnconstrainedBold asciidocQuotedBold
hi! link asciidocQuotedUnconstrainedEmphasized asciidocQuotedEmphasized
hi! link asciidocURL markdownLinkText

call s:hi("awkCharClass", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("awkPatterns", s:nordl9_gui, "", s:nordl9_term, "", s:bold, "")
hi! link awkArrayElement Identifier
hi! link awkBoolLogic Keyword
hi! link awkBrktRegExp SpecialChar
hi! link awkComma Delimiter
hi! link awkExpression Keyword
hi! link awkFieldVars Identifier
hi! link awkLineSkip Keyword
hi! link awkOperator Operator
hi! link awkRegExp SpecialChar
hi! link awkSearch Keyword
hi! link awkSemicolon Delimiter
hi! link awkSpecialCharacter SpecialChar
hi! link awkSpecialPrintf SpecialChar
hi! link awkVariables Identifier

call s:hi("cIncluded", s:nordl7_gui, "", s:nordl7_term, "", "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit

call s:hi("cmakeGeneratorExpression", s:nordl10_gui, "", s:nordl10_term, "", "", "")

hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment

call s:hi("cssAttributeSelector", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("cssDefinition", s:nordl7_gui, "", s:nordl7_term, "", "NONE", "")
call s:hi("cssIdentifier", s:nordl7_gui, "", s:nordl7_term, "", s:underline, "")
call s:hi("cssStringQ", s:nordl7_gui, "", s:nordl7_term, "", "", "")
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

call s:hi("dosiniHeader", s:nordl8_gui, "", s:nordl8_term, "", "", "")
hi! link dosiniLabel Type

call s:hi("dtBooleanKey", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("dtExecKey", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("dtLocaleKey", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("dtNumericKey", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("dtTypeKey", s:nordl7_gui, "", s:nordl7_term, "", "", "")
hi! link dtDelim Delimiter
hi! link dtLocaleValue Keyword
hi! link dtTypeValue Keyword

if g:nord_uniform_diff_background == 0
  call s:hi("DiffAdd", s:nordl14_gui, s:nordl0_gui, s:nordl14_term, "NONE", "inverse", "")
  call s:hi("DiffChange", s:nordl13_gui, s:nordl0_gui, s:nordl13_term, "NONE", "inverse", "")
  call s:hi("DiffDelete", s:nordl11_gui, s:nordl0_gui, s:nordl11_term, "NONE", "inverse", "")
  call s:hi("DiffText", s:nordl9_gui, s:nordl0_gui, s:nordl9_term, "NONE", "inverse", "")
else
  call s:hi("DiffAdd", s:nordl14_gui, s:nordl1_gui, s:nordl14_term, s:nordl1_term, "", "")
  call s:hi("DiffChange", s:nordl13_gui, s:nordl1_gui, s:nordl13_term, s:nordl1_term, "", "")
  call s:hi("DiffDelete", s:nordl11_gui, s:nordl1_gui, s:nordl11_term, s:nordl1_term, "", "")
  call s:hi("DiffText", s:nordl9_gui, s:nordl1_gui, s:nordl9_term, s:nordl1_term, "", "")
endif
" Legacy groups for official git.vim and diff.vim syntax
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete

call s:hi("gitconfigVariable", s:nordl7_gui, "", s:nordl7_term, "", "", "")

call s:hi("goBuiltins", s:nordl7_gui, "", s:nordl7_term, "", "", "")
hi! link goConstants Keyword

call s:hi("helpBar", s:nordl3_gui, "", s:nordl3_term, "", "", "")
call s:hi("helpHyperTextJump", s:nordl8_gui, "", s:nordl8_term, "", s:underline, "")

call s:hi("htmlArg", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("htmlLink", s:nordl4_gui, "", "", "", "NONE", "NONE")
hi! link htmlBold Bold
hi! link htmlEndTag htmlTag
hi! link htmlItalic Italic
hi! link htmlH1 markdownH1
hi! link htmlH2 markdownH1
hi! link htmlH3 markdownH1
hi! link htmlH4 markdownH1
hi! link htmlH5 markdownH1
hi! link htmlH6 markdownH1
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag Keyword
hi! link htmlTagN htmlTag

call s:hi("javaDocTags", s:nordl7_gui, "", s:nordl7_term, "", "", "")
hi! link javaCommentTitle Comment
hi! link javaScriptBraces Delimiter
hi! link javaScriptIdentifier Keyword
hi! link javaScriptNumber Number

call s:hi("jsonKeyword", s:nordl7_gui, "", s:nordl7_term, "", "", "")

call s:hi("lessClass", s:nordl7_gui, "", s:nordl7_term, "", "", "")
hi! link lessAmpersand Keyword
hi! link lessCssAttribute Delimiter
hi! link lessFunction Function
hi! link cssSelectorOp Keyword

hi! link lispAtomBarSymbol SpecialChar
hi! link lispAtomList SpecialChar
hi! link lispAtomMark Keyword
hi! link lispBarSymbol SpecialChar
hi! link lispFunc Function

hi! link luaFunc Function

call s:hi("markdownBlockquote", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("markdownCode", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("markdownCodeDelimiter", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("markdownFootnote", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("markdownId", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("markdownIdDeclaration", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("markdownH1", s:nordl8_gui, "", s:nordl8_term, "", "", "")
call s:hi("markdownLinkText", s:nordl8_gui, "", s:nordl8_term, "", "", "")
call s:hi("markdownUrl", s:nordl4_gui, "", "NONE", "", "NONE", "")
hi! link markdownBold Bold
hi! link markdownBoldDelimiter Keyword
hi! link markdownFootnoteDefinition markdownFootnote
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownIdDelimiter Keyword
hi! link markdownItalic Italic
hi! link markdownItalicDelimiter Keyword
hi! link markdownLinkDelimiter Keyword
hi! link markdownLinkTextDelimiter Keyword
hi! link markdownListMarker Keyword
hi! link markdownRule Keyword
hi! link markdownHeadingDelimiter Keyword

call s:hi("perlPackageDecl", s:nordl7_gui, "", s:nordl7_term, "", "", "")

call s:hi("phpClasses", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("phpClass", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("phpDocTags", s:nordl7_gui, "", s:nordl7_term, "", "", "")
hi! link phpDocCustomTags phpDocTags
hi! link phpMemberSelector Keyword
hi! link phpMethod Function
hi! link phpFunction Function

call s:hi("podCmdText", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("podVerbatimLine", s:nordl4_gui, "", "NONE", "", "", "")
hi! link podFormat Keyword

hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar

call s:hi("rubyConstant", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("rubySymbol", s:nordl6_gui, "", s:nordl6_term, "", s:bold, "")
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

call s:hi("rustAttribute", s:nordl10_gui, "", s:nordl10_term, "", "", "")
call s:hi("rustEnum", s:nordl7_gui, "", s:nordl7_term, "", s:bold, "")
call s:hi("rustMacro", s:nordl8_gui, "", s:nordl8_term, "", s:bold, "")
call s:hi("rustModPath", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("rustPanic", s:nordl9_gui, "", s:nordl9_term, "", s:bold, "")
call s:hi("rustTrait", s:nordl7_gui, "", s:nordl7_term, "", s:italic, "")
hi! link rustCommentLineDoc Comment
hi! link rustDerive rustAttribute
hi! link rustEnumVariant rustEnum
hi! link rustEscape SpecialChar
hi! link rustQuestionMark Keyword

call s:hi("sassClass", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("sassId", s:nordl7_gui, "", s:nordl7_term, "", s:underline, "")
hi! link sassAmpersand Keyword
hi! link sassClassChar Delimiter
hi! link sassControl Keyword
hi! link sassControlLine Keyword
hi! link sassExtend Keyword
hi! link sassFor Keyword
hi! link sassFunctionDecl Keyword
hi! link sassFunctionName Function
hi! link sassidChar sassId
hi! link sassInclude SpecialChar
hi! link sassMixinName Function
hi! link sassMixing SpecialChar
hi! link sassReturn Keyword

hi! link shCmdParenRegion Delimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shDerefVar Identifier

hi! link sqlKeyword Keyword
hi! link sqlSpecial Keyword

call s:hi("vimAugroup", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("vimMapRhs", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("vimNotation", s:nordl7_gui, "", s:nordl7_term, "", "", "")
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

call s:hi("xmlAttrib", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("xmlCdataStart", s:nordl3_gui_bright, "", s:nordl3_term, "", s:bold, "")
call s:hi("xmlNamespace", s:nordl7_gui, "", s:nordl7_term, "", "", "")
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlProcessingDelim Keyword
hi! link xmlTagName Keyword

call s:hi("yamlBlockMappingKey", s:nordl7_gui, "", s:nordl7_term, "", "", "")
hi! link yamlBool Keyword
hi! link yamlDocumentStart Keyword

"+----------------+
"+ Plugin Support +
"+----------------+
"+--- UI ---+
" ALE
" > w0rp/ale
call s:hi("ALEWarningSign", s:nordl13_gui, "", s:nordl13_term, "", "", "")
call s:hi("ALEErrorSign" , s:nordl11_gui, "", s:nordl11_term, "", "", "")
call s:hi("ALEWarning" , s:nordl13_gui, "", s:nordl13_term, "", "undercurl", "")
call s:hi("ALEError" , s:nordl11_gui, "", s:nordl11_term, "", "undercurl", "")

" Coc
" > neoclide/coc
call s:hi("CocWarningHighlight" , s:nordl13_gui, "", s:nordl13_term, "", "undercurl", "")
call s:hi("CocErrorHighlight" , s:nordl11_gui, "", s:nordl11_term, "", "undercurl", "")
call s:hi("CocWarningSign", s:nordl13_gui, "", s:nordl13_term, "", "", "")
call s:hi("CocErrorSign" , s:nordl11_gui, "", s:nordl11_term, "", "", "")
call s:hi("CocInfoSign" , s:nordl8_gui, "", s:nordl8_term, "", "", "")
call s:hi("CocHintSign" , s:nordl10_gui, "", s:nordl10_term, "", "", "")

" Nvim LSP
" > neovim/nvim-lsp
call s:hi("LSPDiagnosticsWarning", s:nordl13_gui, "", s:nordl13_term, "", "", "")
call s:hi("LSPDiagnosticsError" , s:nordl11_gui, "", s:nordl11_term, "", "", "")
call s:hi("LSPDiagnosticsInformation" , s:nordl8_gui, "", s:nordl8_term, "", "", "")
call s:hi("LSPDiagnosticsHint" , s:nordl10_gui, "", s:nordl10_term, "", "", "")

" GitGutter
" > airblade/vim-gitgutter
call s:hi("GitGutterAdd", s:nordl14_gui, "", s:nordl14_term, "", "", "")
call s:hi("GitGutterChange", s:nordl13_gui, "", s:nordl13_term, "", "", "")
call s:hi("GitGutterChangeDelete", s:nordl11_gui, "", s:nordl11_term, "", "", "")
call s:hi("GitGutterDelete", s:nordl11_gui, "", s:nordl11_term, "", "", "")

" Signify
" > mhinz/vim-signify
call s:hi("SignifySignAdd", s:nordl14_gui, "", s:nordl14_term, "", "", "")
call s:hi("SignifySignChange", s:nordl13_gui, "", s:nordl13_term, "", "", "")
call s:hi("SignifySignChangeDelete", s:nordl11_gui, "", s:nordl11_term, "", "", "")
call s:hi("SignifySignDelete", s:nordl11_gui, "", s:nordl11_term, "", "", "")

" fugitive.vim
" > tpope/vim-fugitive
call s:hi("gitcommitDiscardedFile", s:nordl11_gui, "", s:nordl11_term, "", "", "")
call s:hi("gitcommitUntrackedFile", s:nordl11_gui, "", s:nordl11_term, "", "", "")
call s:hi("gitcommitSelectedFile", s:nordl14_gui, "", s:nordl14_term, "", "", "")

" davidhalter/jedi-vim
call s:hi("jediFunction", s:nordl4_gui, s:nordl3_gui, "", s:nordl3_term, "", "")
call s:hi("jediFat", s:nordl8_gui, s:nordl3_gui, s:nordl8_term, s:nordl3_term, s:underline.s:bold, "")

" NERDTree
" > scrooloose/nerdtree
call s:hi("NERDTreeExecFile", s:nordl7_gui, "", s:nordl7_term, "", "", "")
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

" CtrlP
" > ctrlpvim/ctrlp.vim
hi! link CtrlPMatch Keyword
hi! link CtrlPBufferHid Normal

" vim-clap
" > liuchengxu/vim-clap
call s:hi("ClapDir", s:nordl4_gui, "", "", "", "", "")
call s:hi("ClapDisplay", s:nordl4_gui, s:nordl1_gui, "", s:nordl1_term, "", "")
call s:hi("ClapFile", s:nordl4_gui, "", "", "NONE", "", "")
call s:hi("ClapMatches", s:nordl8_gui, "", s:nordl8_term, "", "", "")
call s:hi("ClapNoMatchesFound", s:nordl13_gui, "", s:nordl13_term, "", "", "")
call s:hi("ClapSelected", s:nordl7_gui, "", s:nordl7_term, "", s:bold, "")
call s:hi("ClapSelectedSign", s:nordl9_gui, "", s:nordl9_term, "", "", "")

let s:clap_matches = [
        \ [s:nordl8_gui,  s:nordl8_term] ,
        \ [s:nordl9_gui,  s:nordl9_term] ,
        \ [s:nordl10_gui, s:nordl10_term] ,
        \ ]
for s:nordl_clap_match_i in range(1,12)
  let clap_match_color = s:clap_matches[s:nordl_clap_match_i % len(s:clap_matches) - 1]
  call s:hi("ClapMatches" . s:nordl_clap_match_i, clap_match_color[0], "", clap_match_color[1], "", "", "")
  call s:hi("ClapFuzzyMatches" . s:nordl_clap_match_i, clap_match_color[0], "", clap_match_color[1], "", "", "")
endfor
unlet s:nordl_clap_match_i

hi! link ClapCurrentSelection PmenuSel
hi! link ClapCurrentSelectionSign ClapSelectedSign
hi! link ClapInput Pmenu
hi! link ClapPreview Pmenu
hi! link ClapProviderAbout ClapDisplay
hi! link ClapProviderColon Type
hi! link ClapProviderId Type

" vim-indent-guides
" > nathanaelkane/vim-indent-guides
call s:hi("IndentGuidesEven", "", s:nordl1_gui, "", s:nordl1_term, "", "")
call s:hi("IndentGuidesOdd", "", s:nordl2_gui, "", s:nordl3_term, "", "")

" vim-plug
" > junegunn/vim-plug
call s:hi("plugDeleted", s:nordl11_gui, "", "", s:nordl11_term, "", "")

" vim-signature
" > kshenoy/vim-signature
call s:hi("SignatureMarkText", s:nordl8_gui, "", s:nordl8_term, "", "", "")

" vim-startify
" > mhinz/vim-startify
call s:hi("StartifyFile", s:nordl6_gui, "", s:nordl6_term, "", "", "")
call s:hi("StartifyFooter", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("StartifyHeader", s:nordl8_gui, "", s:nordl8_term, "", "", "")
call s:hi("StartifyNumber", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("StartifyPath", s:nordl8_gui, "", s:nordl8_term, "", "", "")
hi! link StartifyBracket Delimiter
hi! link StartifySlash Normal
hi! link StartifySpecial Comment

"+--- Languages ---+
" Haskell
" > neovimhaskell/haskell-vim
call s:hi("haskellPreProc", s:nordl10_gui, "", s:nordl10_term, "", "", "")
call s:hi("haskellType", s:nordl7_gui, "", s:nordl7_term, "", "", "")
hi! link haskellPragma haskellPreProc

" JavaScript
" > pangloss/vim-javascript
call s:hi("jsGlobalNodeObjects", s:nordl8_gui, "", s:nordl8_term, "", s:italic, "")
hi! link jsBrackets Delimiter
hi! link jsFuncCall Function
hi! link jsFuncParens Delimiter
hi! link jsThis Keyword
hi! link jsNoise Delimiter
hi! link jsPrototype Keyword
hi! link jsRegexpString SpecialChar

" TypeScript
" > HerringtonDarkholme/yats.vim
call s:hi("typescriptBOMWindowMethod", s:nordl8_gui, "", s:nordl8_term, "", s:italic, "")
call s:hi("typescriptClassName", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("typescriptDecorator", s:nordl12_gui, "", s:nordl12_term, "", "", "")
call s:hi("typescriptInterfaceName", s:nordl7_gui, "", s:nordl7_term, "", s:bold, "")
call s:hi("typescriptRegexpString", s:nordl13_gui, "", s:nordl13_term, "", "", "")
" TypeScript JSX
 call s:hi("tsxAttrib", s:nordl7_gui, "", s:nordl7_term, "", "", "")
hi! link typescriptOperator Operator
hi! link typescriptBinaryOp Operator
hi! link typescriptAssign Operator
hi! link typescriptMember Identifier
hi! link typescriptDOMStorageMethod Identifier
hi! link typescriptArrowFuncArg Identifier
hi! link typescriptGlobal typescriptClassName
hi! link typescriptBOMWindowProp Function
hi! link typescriptArrowFuncDef Function
hi! link typescriptAliasDeclaration Function
hi! link typescriptPredefinedType Type
hi! link typescriptTypeReference typescriptClassName
hi! link typescriptTypeAnnotation Structure
hi! link typescriptDocNamedParamType SpecialComment
hi! link typescriptDocNotation Keyword
hi! link typescriptDocTags Keyword
hi! link typescriptImport Keyword
hi! link typescriptExport Keyword
hi! link typescriptTry Keyword
hi! link typescriptVariable Keyword
hi! link typescriptBraces Normal
hi! link typescriptObjectLabel Normal
hi! link typescriptCall Normal
hi! link typescriptClassHeritage typescriptClassName
hi! link typescriptFuncTypeArrow Structure
hi! link typescriptMemberOptionality Structure
hi! link typescriptNodeGlobal typescriptGlobal
hi! link typescriptTypeBrackets Structure
hi! link tsxEqual Operator
hi! link tsxIntrinsicTagName htmlTag
hi! link tsxTagName tsxIntrinsicTagName

" Markdown
" > plasticboy/vim-markdown
call s:hi("mkdCode", s:nordl7_gui, "", s:nordl7_term, "", "", "")
call s:hi("mkdFootnote", s:nordl8_gui, "", s:nordl8_term, "", "", "")
call s:hi("mkdRule", s:nordl10_gui, "", s:nordl10_term, "", "", "")
call s:hi("mkdLineBreak", s:nordl9_gui, "", s:nordl9_term, "", "", "")
hi! link mkdBold Bold
hi! link mkdItalic Italic
hi! link mkdString Keyword
hi! link mkdCodeStart mkdCode
hi! link mkdCodeEnd mkdCode
hi! link mkdBlockquote Comment
hi! link mkdListItem Keyword
hi! link mkdListItemLine Normal
hi! link mkdFootnotes mkdFootnote
hi! link mkdLink markdownLinkText
hi! link mkdURL markdownUrl
hi! link mkdInlineURL mkdURL
hi! link mkdID Identifier
hi! link mkdLinkDef mkdLink
hi! link mkdLinkDefTarget mkdURL
hi! link mkdLinkTitle mkdInlineURL
hi! link mkdDelimiter Keyword

" Vimwiki
" > vimwiki/vimwiki
if !exists("g:vimwiki_hl_headers") || g:vimwiki_hl_headers == 0
  for s:i in range(1,6)
    call s:hi("VimwikiHeader".s:i, s:nordl8_gui, "", s:nordl8_term, "", s:bold, "")
  endfor
else
  let s:vimwiki_hcolor_guifg = [s:nordl7_gui, s:nordl8_gui, s:nordl9_gui, s:nordl10_gui, s:nordl14_gui, s:nordl15_gui]
  let s:vimwiki_hcolor_ctermfg = [s:nordl7_term, s:nordl8_term, s:nordl9_term, s:nordl10_term, s:nordl14_term, s:nordl15_term]
  for s:i in range(1,6)
    call s:hi("VimwikiHeader".s:i, s:vimwiki_hcolor_guifg[s:i-1] , "", s:vimwiki_hcolor_ctermfg[s:i-1], "", s:bold, "")
  endfor
endif

call s:hi("VimwikiLink", s:nordl8_gui, "", s:nordl8_term, "", s:underline, "")
hi! link VimwikiHeaderChar markdownHeadingDelimiter
hi! link VimwikiHR Keyword
hi! link VimwikiList markdownListMarker

" YAML
" > stephpy/vim-yaml
call s:hi("yamlKey", s:nordl7_gui, "", s:nordl7_term, "", "", "")
