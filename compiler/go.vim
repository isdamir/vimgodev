if exists("current_compiler")
  finish
endif
let current_compiler = "go"
 
let s:cpo_save = &cpo
set cpo-=C
 
if exists(":CompilerSet") != 2          " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif
 
"Compiler program
CompilerSet makeprg=go\ build
 
"Compiler error format for go build
CompilerSet errorformat=%f:%l:%m
 
let &cpo = s:cpo_save
unlet s:cpo_save
