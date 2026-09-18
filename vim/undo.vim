" Use persistent history.
let s:undo_dir = stdpath('state') . '/undo'
if !isdirectory(s:undo_dir)
    call mkdir(s:undo_dir, "p", 0700)
endif

execute 'set undodir=' . escape(s:undo_dir, ' ' . '\')
set undofile
