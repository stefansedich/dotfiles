syntax enable

set nocompatible
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set list
set listchars=tab:▸\ ,space:.
set laststatus=2
set number
set hidden
set tags=./.tags;,~/.vimtags
set clipboard=unnamed,unnamedplus
set mouse=a
set autoread
set completeopt=noselect,menuone,preview

filetype on
filetype indent on
filetype plugin on

let NERDTreeShowHidden=1
let NERDTreeCascadeSingleChildDir=0
let NERDTreeCascadeOpenSingleChildDir=0
let g:terraform_fmt_on_save=1
let g:ale_set_balloons=1
let g:go_version_warning = 0
let g:airline_theme = 'one'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_completion_enabled = 1
let g:ale_python_auto_pipenv = 1
let g:ale_python_flake8_change_directory = 0
let g:ale_linter_aliases = {'typescriptreact': 'typescript'}
let g:ale_linters = {
  \ 'typescript': ['tslint', 'tsserver'],
  \ 'typescriptreact': ['tslint', 'tsserver'],
  \ 'python': ['flake8', 'mypy', 'pyls'],
  \ 'go': ['gofmt', 'golint', 'govet', 'gopls'],
  \ 'hcl': ['terraform_lsp']
  \ }
let g:ale_fix_on_save = 1
let g:ale_fixers = {
  \ 'python': ['black', 'isort'],
  \ 'go': ['gofmt', 'goimports'],
  \ 'hcl': ['terraform']
  \ }
let g:ale_python_pyls_config = {
  \   'pyls': {
  \     'plugins': {
  \       'pylint': {
  \         'enabled': 0
  \        },
  \        'pycodestyle': {
  \          'enabled': 0
  \        },
  \        'pyflakes': {
  \          'enabled': 0
  \        }
  \      }
  \    }
  \ }
let g:deoplete#enable_at_startup = 1
let g:easytags_dynamic_files = 1
let g:easytags_async = 1
let g:rspec_command = "Dispatch bundle exec rspec --format progress {spec}"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:ruby_debugger_progname = 'mvim'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  
  let g:ackprg = 'ag --vimgrep'
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
