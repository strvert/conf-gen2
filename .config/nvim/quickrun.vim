let g:quickrun_config = {
\   "cpp/g++" : {
\       "cmdopt" : "-std=c++20",
\       "hook/time/enable" : 1
\   },
\   "_" : {
\       "runner" : "vimproc",
\       "outputter/buffer/split" : ":botright 8sp",
\       "outputter/buffer/close_on_empty" : 1,
\       "outputter" : "quickfix",
\       "hook/time/enable" : 1
\   },
\}
