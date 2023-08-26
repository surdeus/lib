" J's VIM color file.
" surdeus: <surdeus@gmail.com>.
" (originally looked at slate.)
set background=dark
if exists("syntax_on")
	syntax reset
endif
" highlight clear

let colors_name = "jien"
hi Normal       guibg=black guifg=lightgray
hi Cursor       gui=reverse
hi TermCursor   guibg=red
hi CursorLine   gui=bold
hi VertSplit    gui=bold guifg=yellow

hi Folded       gui=none guifg=black guibg=green
hi FoldColumn   gui=none guifg=yellow guibg=white
hi IncSearch    gui=none             guifg=yellow            ctermbg=green
hi LineNr       guibg=white guifg=black

hi ModeMsg      cterm=none             ctermfg=black             ctermbg=yellow
hi MoreMsg      cterm=none             ctermfg=darkgreen         ctermbg=none
hi NonText      cterm=none             ctermfg=darkgrey          ctermbg=none
hi Question     cterm=none             ctermfg=green             ctermbg=none
hi Search       cterm=none             ctermfg=black             ctermbg=yellow
hi SpecialKey   cterm=none             ctermfg=darkgreen         ctermbg=none
hi StatusLine   gui=bold guifg=black guibg=red
hi StatusLineNC guifg=gray
hi Title        guifg=yellow
hi Statement    gui=none guifg=magenta
hi Visual       gui=reverse
hi WarningMsg   cterm=none             ctermfg=1                 ctermbg=none

hi String       guifg=red 
hi Constant     guifg=red

hi Comment      guifg=yellow
hi Special      guifg=lightblue
hi Identifier   gui=bold guifg=lightgreen
hi Include      gui=bold guifg=red
hi PreProc      cterm=none             ctermfg=red               ctermbg=none
hi Operator     guifg=lightblue
hi Define       cterm=none             ctermfg=red               ctermbg=none
hi Type         guifg=lightgreen cterm=none             ctermfg=green             ctermbg=none
hi Function     gui=none             guifg=darkmagenta       guibg=none
hi Structure    gui=none             guifg=green             guibg=none

hi Ignore       cterm=none             ctermfg=7                 ctermbg=none
hi Directory    cterm=none             ctermfg=darkcyan          ctermbg=none
hi ErrorMsg     cterm=none             ctermfg=7                 ctermbg=1
hi VisualNOS    cterm=bold,underline   ctermfg=none              ctermbg=none
hi WildMenu     cterm=none             ctermfg=black             ctermbg=yellow
hi DiffAdd      ctermbg=4              ctermfg=none              ctermbg=none
hi DiffChange   ctermbg=5              ctermfg=none              ctermbg=none
hi DiffDelete   cterm=bold             ctermfg=4                 ctermbg=6
hi DiffText     cterm=bold             ctermfg=none              ctermbg=1
hi Underlined   cterm=underline        ctermfg=5                 ctermbg=none
hi Error        cterm=none             ctermfg=7 ctermbg=1       ctermbg=none
hi SpellErrors  cterm=bold             ctermfg=7 ctermbg=1       ctermbg=none
