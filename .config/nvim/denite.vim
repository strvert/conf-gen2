autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> s
  \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> h
  \ denite#do_map('do_action', 'split')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
  set winblend=20
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o> <Plug>(denite_filter_quit)
  set winblend=20
endfunction

command! Df :Denite file/rec
command! Dg :Denite grep

let s:ignore_globs = ['.git/', 'node_modules/', 'CMakeFiles/', '*.ninja']

call denite#custom#var('file/rec', 'command',
	\ ['ag',
    \ '--follow',
    \ ] + map(deepcopy(s:ignore_globs), { k, v -> '--ignore=' . v }) + [
    \ '--nocolor',
    \ '--nogroup',
    \ '-g',
    \''
    \ ])

call denite#custom#var('grep', {
    \ 'command': ['ag'],
    \ 'default_opts': ['-i', '--vimgrep'],
    \ 'recursive_opts': [],
    \ 'pattern_opt': [],
    \ 'separator': ['--'],
    \ 'final_opts': [],
    \ })

call denite#custom#source(
	\ 'file_mru', 'matchers', ['matcher/fuzzy', 'matcher/project_files'])

call denite#custom#filter(
    \ 'matcher/ignore_globs', 'ignore_globs', s:ignore_globs)

let s:denite_win_width_percent = 0.85
let s:denite_win_height_percent = 0.7
let s:denite_default_options = {
    \ 'split': 'floating',
    \ 'winwidth': float2nr(&columns * s:denite_win_width_percent),
    \ 'wincol': float2nr((&columns - (&columns * s:denite_win_width_percent)) / 2),
    \ 'winheight': float2nr(&lines * s:denite_win_height_percent),
    \ 'winrow': float2nr((&lines - (&lines * s:denite_win_height_percent)) / 2),
    \ 'highlight_filter_background': 'DeniteFilter',
    \ 'prompt': '$ ',
    \ 'start_filter': v:true,
    \ }
call denite#custom#option('default', s:denite_default_options)
