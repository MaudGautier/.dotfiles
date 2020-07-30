" VIM Configuration - Vincent Jousse
" Annule la compatibilite avec l'ancetre Vi : totalement indispensable
set nocompatible
" Activation de pathogen
call pathogen#infect()

" -- Affichage
set title                 " Met a jour le titre de votre fenetre ou de
                          " votre terminal
set nonumber              " Ne pas afficher le numero des lignes
nnoremap <F2> :set nonumber!<CR>
set ruler                 " Affiche la position actuelle du curseur
set wrap                  " Affiche les lignes trop longues sur plusieurs
                          " lignes

set scrolloff=3           " Affiche un minimum de 3 lignes autour du curseur
                          " (pour le scroll)

" -- Recherche
set ignorecase            " Ignore la casse lors d'une recherche
set smartcase             " Si une recherche contient une majuscule,
                          " re-active la sensibilite a la casse
set incsearch             " Surligne les resultats de recherche pendant la
                          " saisie
set hlsearch              " Surligne les resultats de recherche

" -- Beep
" set visualbell            " Empeche Vim de beeper
set noerrorbells          " Empeche Vim de beeper

" Active le comportement 'habituel' de la touche retour en arriere
set backspace=indent,eol,start

" Cache les fichiers lors de l'ouverture d'autres fichiers
set hidden

" Active la coloration syntaxique
syntax enable
" Active les comportements specifiques aux types de fichiers comme
" la syntaxe et l’indentation
filetype on
filetype plugin on
filetype indent on

set background=dark
" colorscheme molokai 

set guifont="Source Code Pro for Powerline":h13
set antialias

" Activation de NERDTree au lancement de vim
autocmd vimenter * NERDTree | wincmd p

" Leader is now ,
let mapleader=","

" Ctrl + N for NERDTree
map <C-n> :NERDTreeToggle<CR>

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=2

 " powerline symbols
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
	if bufwinnr(t:NERDTreeBufName) != -1
	  if winnr("$") == 1
		q
	  endif
	 endif
   endif
 endfunction

" NERD Commenter
filetype plugin on

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Allow commenting and inverting empty lines (useful when commenting a
" region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Use c++11
let g:syntastic_cpp_compiler_options = ' -std=c++11'


" "Add c++ options
" " Highlighting of class scope
" let g:cpp_class_scope_highlight = 1
" " Highlighting of member variables
" let g:cpp_member_variable_highlight = 1
" " Highlighting of class names
" let g:cpp_class_decl_highlight = 1
" " Highlighting of library concepts
" " Highlighting of user defined functions
" let g:cpp_no_function_highlight = 1
" " Comments italic
" highlight Comment cterm=italic
" " To enable highlighting of C++ library concepts
" let g:cpp_concepts_highlight = 1


" From vimrc_pbil
" map <silent> <F3> "<Esc>:match ErrorMsg '\%>80v.\+'<CR>"

" Syntastic recommmendations
" (https://github.com/vim-syntastic/syntastic/tree/675f67eea29308537438eb49b3b28a444c1e4689)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Commenting blocks of code. (https://stackoverflow.com/questions/1676632/whats-a-quick-way-to-comment-uncomment-lines-in-vim/1676690)
" NOT required with NERD commenter!
" autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
" autocmd FileType sh,ruby,python   let b:comment_leader = '# '
" autocmd FileType conf,fstab       let b:comment_leader = '# '
" autocmd FileType tex              let b:comment_leader = '% '
" autocmd FileType mail             let b:comment_leader = '> '
" autocmd FileType vim              let b:comment_leader = '" '
" noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
" noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Highlight special words (https://stackoverflow.com/questions/4097259/in-vim-how-do-i-highlight-todo-and-fixme)
augroup vimrc_todo
    au!
    au Syntax * syn match MyTodo /\v<(FIXME|NB|TODO|OPTIMIZE|XXX|WARNING|ERROR)/
          \ containedin=.*Comment,vimCommentTitle
augroup END
hi def link MyTodo Todo

" Allow to check r syntax with lint
" let g:syntastic_enable_r_lintr_checker = 1
" let g:syntastic_r_checkers = ['lintr']


