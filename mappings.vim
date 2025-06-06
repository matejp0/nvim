" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Paste on the next line
"noremap t :pu<CR> nigga

noremap P :pu<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>

nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-g> :Goyo<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>

nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-g> :Goyo<CR>
nnoremap <C-n> :call GoyoNarrow()<CR>


nnoremap <C-b> bi**<esc>ea**<esc>
vnoremap <C-b> c**<c-r>"**

" nnoremap <C-B> bi*<esc>ea*<esc>
" vnoremap <C-B> c*<c-r>"*

" Tabbing
vnoremap < <gv
vnoremap > >gv

" Select line without the newline character
noremap yn 0vg_y

" substitute

" disable recording, because i don't use it and worsens my life
map q <Nop>

nnoremap qr :%s//g<Left><Left>
nnoremap qd :g//d<Left><Left>
nnoremap qe :g//s/^/\/\/ /<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
nnoremap qs i<Space><Right><Space><Esc>0
nnoremap qb :g/^$/d<CR>

xnoremap qr :s//g<Left><Left>
xnoremap qd :g//d<Left><Left>
xnoremap qe :s/^/\/\/ /<Enter>

nnoremap q= :call FillNextLineWithChar('=')<CR>
nnoremap q- :call FillNextLineWithChar('-')<CR>
nnoremap q# :call AddBlankLineAboveHash()<CR>


xnoremap qn :s/^/\=(line('.')-line("'<")+1).') '/<CR>
xnoremap qm :s/\v^\d+\)\s//<CR>

nnoremap qh a<Space>←<Esc>
nnoremap ql a<Space>→<Esc>
nnoremap qj a<Space>~<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
nnoremap <C-d> :bdelete<CR>

nnoremap <Leader>b :buffers<CR>:buffer<Space>

noremap <C-j> :%!jq<CR>
map <C-f> /

nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
