"" Optixal's Neovim Init.vim

""" Vim-Plug
call plug#begin()

"""" Look & feel
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-journal'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'chrisbra/Colorizer'
Plug 'joshdick/onedark.vim'
Plug 'mhartington/oceanic-next'

"""" Format code
Plug 'sbdchd/neoformat'                                 " Automatically format code
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'Yggdroot/indentLine'

"""" Manipulate code
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'                          " Easy align around equals
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-abolish'                                " Substitute with Smart Case (:S//)
Plug 'tpope/vim-surround'                               " Surround
Plug 'tpope/vim-repeat'                                 " Repeat for plugins
Plug 'tomtom/tcomment_vim'                              " Comment lines
Plug 'scrooloose/nerdcommenter'

"""" Targets and text objects
Plug 'wellle/targets.vim'

"""" Snippets
Plug 'SirVer/ultisnips'                                 " Snippet engine
Plug 'honza/vim-snippets'                               " List of snippets

"""" Navigate code
Plug 'haya14busa/incsearch.vim'                             " Incremental search
Plug 'haya14busa/incsearch-fuzzy.vim'                       " Fuzzy incremental search
Plug 'majutsushi/tagbar'
Plug 'farmergreg/vim-lastplace'                             " Restore cursor position

"""" Navigate files, buffers and panes
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'christoomey/vim-tmux-navigator'                                           " Easy navigation between vim and tmux panes

"""" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }                   " Autocomplete engine
Plug 'zchee/deoplete-jedi'                                                      " Python
Plug 'Shougo/neco-vim'                                                          " Vim
Plug 'carlitux/deoplete-ternjs'                                                 " Javascript
Plug 'wellle/tmux-complete.vim'                                                 " Tmux panes
Plug 'zchee/deoplete-go', {'do': 'make'}                                        " Go
Plug 'zchee/deoplete-zsh'                                                       " ZSH

"""" Git
Plug 'tpope/vim-fugitive'                                                       " Git integration
Plug 'airblade/vim-gitgutter'                                                   " Git gutter

"""" Render code
Plug 'sheerun/vim-polyglot'                                                     " Many many syntaxes

"""" Lint code
Plug 'w0rp/ale'

"""" Language-specific
""""" Go
Plug 'fatih/vim-go'                                         " Go development
Plug 'mpickering/hlint-refactor-vim'                    " Fix lint issues

""""" Javascript
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }

""""" Java
" Plug 'artur-shaik/vim-javacomplete2'


" Functionalities
"Plug 'tpope/vim-sensible'

"Plug 'metakirby5/codi.vim'
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
Plug 'ervandew/supertab'

"Plug 'ludovicchabant/vim-gutentags'
"Plug 'kristijanhusak/vim-js-file-import'



" Vim plugin for tmux
"Plug 'benmills/vimux'

" single/multi line code handler: gS - split one line into multiple, gJ - combine multiple lines into one
"Plug 'AndrewRadev/splitjoin.vim'

" Fancy startup screen for vim {{{
Plug 'mhinz/vim-startify'

" Json
Plug 'elzr/vim-json', { 'for': 'json' }


" JavaScript {{{
"Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'moll/vim-node', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' }
"Plug 'mhartington/nvim-typescript', { 'for': 'typescript' }
" }}}


"Plug 'neomake/neomake'

" Entertainment
"Plug 'ryanss/vim-hackernews'

call plug#end()

""" Python3 VirtualEnv
" let g:python3_host_prog = expand('~/.config/nvim/env/bin/python')

""" Coloring
syntax on
"colorscheme gruvbox
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
let g:airline_theme='oceanicnext'


" set guifont=SauceCodePro\ Nerd\ Font\ Semibold\ 10
set guifont=FiraCode\ Medium\ 10


" make the highlighting of tabs and other non-text less annoying
highlight SpecialKey ctermfg=236
highlight NonText ctermfg=236

" make comments and HTML attributes italic
highlight Comment cterm=italic
highlight htmlArg cterm=italic
highlight xmlAttrib cterm=italic
highlight Type cterm=italic
highlight Normal ctermbg=none
highlight Pmenu guibg=white guifg=black gui=bold
"highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

" Opaque Background (Comment out to use terminal's profile)
set termguicolors

" Transparent Background (For i3 and compton)
"highlight Normal guibg=NONE ctermbg=NONE
"highlight LineNr guibg=NONE ctermbg=NONE

""" Other Configurations
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set number
set relativenumber
set title
" Automatically write the file when switching buffers.
set autowriteall

"---------------Split Management-------------"
set splitbelow
set splitright

"--------------Main Configuration--------------"
set formatoptions+=l                                               " Don't wrap long lines when editing them
set formatoptions+=n                                               " Recognize numbered lists
set formatoptions+=o                                               " Continue comment when pressing o or O
set formatoptions+=r                                               " Continue comment when pressing Enter
set formatoptions-=c                                               " Don't wrap long comments
set formatoptions-=t                                               " Don't wrap long lines when typing them
set guioptions+=c
set guioptions-=T
set guioptions-=m

set clipboard=unnamed

if &term =~ '256color'
  " disable Background Color Erase (BCE)
  set t_ut=
endif

set ttyfast
"set term=screen-256color

""" Plugin Configurations

" NERDTree -----------------------------------
let NERDTreeShowHidden=1
"let g:NERDTreeDirArrowExpandable = '↠'
"let g:NERDTreeDirArrowCollapsible = '↡'
let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let NERDTreeDirArrowExpandable = "\u00a0" " make arrows invisible
let NERDTreeDirArrowCollapsible = "\u00a0" " make arrows invisible
let g:NERDTreeIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ 'Ignored'   : '☒',
        \ "Unknown"   : "?"
        \ }

" Airline-----------------------------------
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
"let g:airline#extensions#tabline#enabled = 1


"Neomake
" When writing a buffer (no delay).
"call neomake#configure#automake('w')

"let g:neomake_open_list = 2


" Neovim :Terminal-----------------------------------
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" Neosnippets-----------------------------------
"
" " Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

let g:neosnippet#snippets_directory='~/.config/nvim/snippets'

" Starify-----------------------------------
" Don't change to directory when selecting a file
let g:startify_files_number = 5
let g:startify_change_to_dir = 0
let g:startify_custom_header = [ ]
let g:startify_relative_path = 1
let g:startify_use_env = 1

function! s:list_commits()
    let git = 'git -C ' . getcwd()
    let commits = systemlist(git . ' log --oneline | head -n5')
    let git = 'G' . git[1:]
    return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
endfunction

" Custom startup list, only show MRU from current directory/project
let g:startify_lists = [
\  { 'type': 'dir',		  'header': [ 'Files '. getcwd() ] },
\  { 'type': function('s:list_commits'), 'header': [ 'Recent Commits' ] },
\  { 'type': 'sessions',  'header': [ 'Sessions' ]		 },
\  { 'type': 'bookmarks', 'header': [ 'Bookmarks' ]		 },
\  { 'type': 'commands',  'header': [ 'Commands' ]		 },
\ ]

let g:startify_commands = [
\	{ 'up': [ 'Update Plugins', ':PlugUpdate' ] },
\	{ 'ug': [ 'Upgrade Plugin Manager', ':PlugUpgrade' ] },
\ ]

let g:startify_bookmarks = [
    \ { 'c': '~/code/dotfiles/config/nvim/init.vim' },
    \ { 'z': '~/code/dotfiles/zsh/zshrc.symlink' }
\ ]

autocmd User Startified setlocal cursorline


" Json -----------------------------------
let g:vim_json_syntax_conceal = 0


" Deoplete-----------------------------------
set runtimepath+=~/.config/nvim/plugged/deoplete.nvim
let g:deoplete#enable_at_startup = 1
let g:python_host_prog  = '/home/mahdi/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/mahdi/.pyenv/versions/neovim3/bin/python'
let g:deoplete#sources#go#gocode_binary = '~/apps/go/src/github.com/nsf/gocode'

call deoplete#custom#source('_', 'min_pattern_length', 1)
call deoplete#custom#source('around', 'rank', 100)
call deoplete#custom#source('ultisnips', 'rank', 200)

"""" Deoplete-ternjs (JS completion)
let g:tern_request_timeout = 1
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

" Disable documentation window
set completeopt-=preview

" Supertab-----------------------------------
let g:SuperTabDefaultCompletionType = "<C-n>"

" Ultisnips-----------------------------------
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-x>"
let g:UltiSnipsUsePythonVersion = 3

"""" ALE
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
"let b:ale_fixers = ['prettier', 'eslint']
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_save = 1
" let g:ale_lint_on_enter = 0

"""" Incsearch
let g:incsearch#auto_nohlsearch = 1

map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

" EasyAlign-----------------------------------
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" indentLine-----------------------------------
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

" TagBar-----------------------------------
let g:tagbar_width = 30
let g:tagbar_iconchars = ['↠', '↡']

" fzf-vim-----------------------------------
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }


" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10split enew' }

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Type'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Character'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Prettier-----------------------------------
let g:prettier#config#tab_width = 4
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#single_quote = 'true'

" UltiSnips
"let g:UltiSnipsUsePythonVersion = 3

""" Filetype-Specific Configurations

" HTML, XML, Jinja-----------------------------------
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango inoremap {{ {{  }}<left><left><left>
autocmd FileType htmldjango inoremap {% {%  %}<left><left><left>
autocmd FileType htmldjango inoremap {# {#  #}<left><left><left>

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Java
" autocmd FileType java setlocal omnifunc=javacomplete#Complete


""" Custom Functions

" Trim Whitespaces
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction

" Dracula Mode (Dark)
function! ColorDracula()
    let g:airline_theme=''
    color dracula
    IndentLinesEnable
endfunction

" Gruvbox Mode (Dark)
function! ColorGruvbox()
    "let g:airline_theme=''
    color gruvbox
    set background=dark
    IndentLinesEnable
endfunction


" Zazen Mode (Black & White)
function! ColorOnedark()
    let g:airline_theme='onedark'
    color onedark
    IndentLinesEnable
endfunction

""" Custom Mappings

let mapleader=","
nmap <leader>q :NERDTreeToggle<CR>
nmap \ <leader>q
nmap <leader>w :TagbarToggle<CR>
nmap <leader>ee :Colors<CR>
nmap <leader>ea :AirlineTheme
nmap <leader>e1 :call ColorDracula()<CR>
nmap <leader>e2 :call ColorOnedark()<CR>
nmap <leader>e3 :call ColorGruvbox()<CR>
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>t :call TrimWhitespace()<CR>
xmap <leader>a gaip*
nmap <leader>a gaip*
nmap <leader>s <C-w>s<C-w>j<CR>
nmap <leader>vs <C-w>v<C-w>l<CR>
nmap <leader>d <Plug>(pydocstring)
nmap <leader>f :Files<CR>
nmap <leader>bl :Buffers<CR>
nmap <leader>g :Goyo<CR>
nmap <leader>h :RainbowParentheses!!<CR>
nmap <leader>j :set filetype=journal<CR>
nmap <leader>k :ColorToggle<CR>
nmap <leader>l :Limelight!!<CR>
xmap <leader>l :Limelight!!<CR>
autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>
nmap <leader>n :HackerNews best<CR>J
nmap <silent> <leader><space> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
nmap <leader>ev :e ~/.config/nvim/init.vim<CR>
nmap <leader>es :e ~/.config/nvim/UltiSnips/
nmap <leader>et :e ~/.tmux.conf<CR>
nmap <leader>bd :bd<CR>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

"""" Copy to system clipboard
nnoremap <Leader>y "+y
vnoremap <Leader>y "+y

"""" Paste from system clipboard
nnoremap <Leader>v "+p
vnoremap <Leader>v "+p
nnoremap <Leader>V "+P
vnoremap <Leader>V "+P

" Specific keys
nmap <leader>er :e ./routes/index.js<CR>
nmap <leader>ec :Files ./controllers/<CR>
nmap <leader>em :Files ./models/<CR>
