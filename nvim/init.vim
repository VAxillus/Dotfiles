call plug#begin('~/.config/nvim/plugged')

" Plugins {
    " ctrl-p is a fuzzy file finder.
    Plug 'kien/ctrlp.vim'
    " airline is a better status line and a tab-bar for nvim.
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Dracula Theme
    Plug 'dracula/vim', { 'as': 'dracula' }
    " gruvbox colorscheme
    Plug 'morhetz/gruvbox'
    " neomake is a code linting tool that runs in the background.
    Plug 'neomake/neomake'
    " A Vim Plugin for Lively Previewing LaTeX PDF Output
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    " NERDTree - A File Explorer Plugin"
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    " YouCompleteMe - Auto completion "
    Plug 'Valloric/YouCompleteMe'
" }

call plug#end()


    set showmatch           " Show matching brackets.
    set number              " Show the line numbers on the left side.
    set formatoptions+=o    " Continue comment marker in new lines.
    set expandtab           " Insert spaces when TAB is pressed.
    set tabstop=4           " Render TABs using this many spaces.
    syntax on
    colorscheme dracula
    "colorscheme gruvbox
    set background=dark
    hi Normal guibg=NONE ctermbg=NONE
    " Relative numbering
    set nornu
    set number
    set rnu

    set formatoptions+=o    " Continue comment marker in new lines.
    set shiftwidth=4        " Indentation amount for < and > commands.
    set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

    " More natural splits
    set splitbelow          " Horizontal split below current.
    set splitright          " Vertical split to right of current.

    if !&scrolloff
        set scrolloff=3       " Show next 3 lines while scrolling.
    endif
    if !&sidescrolloff
        set sidescrolloff=5   " Show next 5 columns while side-scrolling.
    endif
    set nostartofline       " Do not jump to first character with page commands.

    " Tell Vim which characters to show for expanded TABs,
    " trailing whitespace, and end-of-lines. VERY useful!
    if &listchars ==# 'eol:$'
        set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
    endif
    set list                " Show problematic characters.

    " Also highlight all tabs and trailing whitespace characters.
    highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
    match ExtraWhitespace /\s\+$\|\t/


" Plugin Settings {
    " Airline {
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#buffer_idx_mode = 1
        let g:airline#extensions#tabline#fnamemod = ':t'
        let g:airline#extensions#tabline#left_sep = ''
        let g:airline#extensions#tabline#left_alt_sep = ''
        let g:airline#extensions#tabline#right_sep = ''
        let g:airline#extensions#tabline#right_alt_sep = ''
        let g:airline_left_sep = ''
        let g:airline_left_alt_sep = ''
        let g:airline_right_sep = ''
        let g:airline_right_alt_sep = ''
        let g:airline_theme= 'deus'
    " }
    " CtrlP {
        " Open file menu
        nnoremap <Leader>o :CtrlP<CR>
        " Open buffer menu
        nnoremap <Leader>b :CtrlPBuffer<CR>
        " Open most recently used files
        nnoremap <Leader>f :CtrlPMRUFiles<CR>
    " }
    " NERDTree {
        map <C-n> :NERDTreeToggle<CR>
    " }
    " neomake {
        autocmd! BufWritePost * Neomake
        nnoremap <Leader>l :lopen<CR>
    " }
    " netrw {
        let g:netrw_liststyle=3 " tree (change to 0 for thin)
        let g:netrw_banner=0    " no banner
        let g:netrw_altv=1      " open files on right
        let g:netrw_winsize=80  " only use 20% screen for netrw
        " FIXME: Preview opens to left and is very narrow
        let g:netrw_preview=1   " open previews vertically
    " }
" }
