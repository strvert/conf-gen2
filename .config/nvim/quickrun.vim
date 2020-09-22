let g:quickrun_config = {
\   "cpp": {
\       "cmdopt" : "-std=c++20 -Wall -Wextra -pedantic",
\       "hook/time/enable" : 1
\   },
\   "_" : {
\       "outputter/buffer/split" : ":botright 8sp",
\       "outputter/buffer/close_on_empty" : 1,
\       "outputter" : "quickfix",
\       "hook/time/enable" : 1
\   },
\}
