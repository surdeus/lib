" J's VIM color file.
" surdeus: <surdeus@gmail.com>.
" (originally looked at slate.)
set background=dark
if exists("syntax_on")
	syntax reset
endif
" highlight clear

let colors_name = "jien"
" Main
hi Normal       guibg=black guifg=lightgray

" Cursor
hi Cursor gui=none guifg=red
hi iCursor gui=bold guifg=black guibg=red
hi TermCursor guibg=red
hi CursorLine gui=bold guifg=none guibg=none

" Information
hi Title        gui=none guifg=white guibg=gray
hi TitleSel gui=bold guifg=white guibg=black
hi VertSplit    gui=bold guifg=gray
hi StatusLine   gui=bold guifg=white guibg=green
hi StatusLineNC gui=none guifg=black guibg=lightgray

" Tabs
hi TabLine gui=none guibg=lightgray guifg=black
hi TabLineSel gui=bold guifg=white guibg=green
hi TabLineFill guifg=darkgray

" Search and comments
hi IncSearch gui=bold guifg=black guibg=magenta
hi Search gui=none guifg=black guibg=magenta
hi Comment gui=none guifg=magenta

" Popup
hi Pmenu gui=none guifg=black guibg=magenta

" Folding
hi Folded       gui=none guifg=black guibg=green
hi FoldColumn   gui=none guifg=yellow guibg=white

" Line number
hi LineNr       guibg=white guifg=black

hi ModeMsg      cterm=none             ctermfg=black             ctermbg=yellow
hi MoreMsg      cterm=none             ctermfg=darkgreen         ctermbg=none
hi NonText      cterm=none             ctermfg=darkgrey          ctermbg=none
hi Question     cterm=none             ctermfg=green             ctermbg=none
hi SpecialKey   cterm=none             ctermfg=darkgreen         ctermbg=none
hi Visual       gui=reverse
hi WarningMsg   cterm=none             ctermfg=1                 ctermbg=none

hi Statement    gui=none guifg=yellow
hi Function     gui=none guifg=yellow guibg=none

hi String       guifg=red 
hi Constant     guifg=red
hi Special      guifg=blue

hi Identifier   gui=bold guifg=lightgreen

hi Type         guifg=lightgreen cterm=none             ctermfg=green             ctermbg=none
hi Structure    gui=none             guifg=green             guibg=none

hi Operator     guifg=lightblue

hi Include      gui=bold guifg=red
hi PreProc      gui=none guifg=red guibg=none
hi Define       cterm=none             ctermfg=red               ctermbg=none

hi Ignore       cterm=none             ctermfg=7                 ctermbg=none
hi Directory    cterm=none             ctermfg=darkcyan          ctermbg=none
hi ErrorMsg     cterm=none             ctermfg=7                 ctermbg=1
hi VisualNOS    guifg=black
hi WildMenu     guifg=white guibg=darkmagenta
hi DiffAdd      ctermbg=4              ctermfg=none              ctermbg=none
hi DiffChange   ctermbg=5              ctermfg=none              ctermbg=none
hi DiffDelete   cterm=bold             ctermfg=4                 ctermbg=6
hi DiffText     cterm=bold             ctermfg=none              ctermbg=1
hi Underlined   guifg=underlined
hi Error        cterm=none             ctermfg=7 ctermbg=1       ctermbg=none
hi SpellErrors  cterm=bold             ctermfg=7 ctermbg=1       ctermbg=none
