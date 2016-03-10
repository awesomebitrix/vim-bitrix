" Syntax file
" Language:    CMS Bitrix
" Maintainer:  Anton Salnikov <antares@antares.me>
" Last Change: July 16th, 2015
" Version:     0.0.1
" URL:         https://github.com/antares-me/vim-bitrix/

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

if !exists("main_syntax")
      let main_syntax = 'php'
endif

ru! syntax/php.vim
unlet b:current_syntax

syn match   bitrixMain          /CMain\|\$APPLICATION/

if version >= 508 || !exists("did_lisp_syntax_inits")
      if version < 508
              let did_lisp_syntax_inits = 1
              command -nargs=+ HiLink hi link <args>
      else
              command -nargs=+ HiLink hi def link <args>
      endif

      HiLink bitrixMain          Identifier

      delcommand HiLink
endif

let b:current_syntax = 'bitrix'
