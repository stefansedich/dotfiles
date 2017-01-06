syntax enable

set nocompatible
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set laststatus=2
set number
set hidden
set tags=./.tags;,~/.vimtags
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set omnifunc=syntaxcomplete#Complete
set clipboard=unnamed

filetype on
filetype indent on
filetype plugin on

let g:airline_theme = 'one'
let g:airline_powerline_fonts = 1
let g:easytags_dynamic_files = 1
let g:easytags_async = 1
let g:rspec_command = "Dispatch bundle exec rspec {spec}"
let g:rspec_runner = "os_x_iterm"
let g:syntastic_ruby_checkers = ['rubocop', 'rubylint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5
let g:ruby_debugger_progname = 'mvim'
