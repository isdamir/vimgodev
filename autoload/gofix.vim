autocmd QuickFixCmdPre * :update 
autocmd QuickFixCmdPost * :copen 
autocmd FileType qf call AdjustWindowHeight(2, 6)
