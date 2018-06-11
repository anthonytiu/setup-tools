"#######################################################################
" Your own setting for color, font, window size, menu.
" Please change any setting here to let you feel better when coding
"#######################################################################
"################################################ Color, Font & GUI ####
colorscheme PaperColor
set background=dark            "background color type
set t_Co=256                   "set vim to use 256 color
"#######################################################################
"############################################################## GUI ####
winsize 100 38                 "default windos size
set guioptions-=T              "remove toolbar
set guioptions-=m              "remove menu bar
set guioptions-=L              "remove left hand scrollbars
set guioptions-=r              "remove right hand scrollbars
set mousemodel=popup           "right click for menu
set langmenu=en_US.UTF-8       "language for menu (GUI)
"#######################################################################
"############################################################# Font ####
if has("gui_running")
  if has("gui_win32")
    set guifont=Roboto\ Mono\ for\ Powerline\ Regular:h11:cANSI
  elseif has("gui_macvim")
    set guifont=Roboto\ Mono\ for\ Powerline\ Regular:h11
  else
    set guifont=Roboto\ Mono\ for\ Powerline\ Regular\ 11
  endif
endif
"#######################################################################


