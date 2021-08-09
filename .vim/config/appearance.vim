if (has("termguicolors"))
  set termguicolors
endif

let g:onedark_terminal_italics = 1
let g:onedark_termcolors = 256
let g:onedark_hide_endofbuffer = 1

let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'
let g:onedark_color_overrides = {
\ "black": {"gui": "#1e222a", "cterm": "235", "cterm16": "0" },
\}

colorscheme onedark
