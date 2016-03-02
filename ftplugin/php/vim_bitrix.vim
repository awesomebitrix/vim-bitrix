" --------------------------------
" Add our plugin to the path
" --------------------------------
python import sys
python import vim
python sys.path.append(vim.eval('expand("<sfile>:h")'))

" --------------------------------
"  Function(s)
" --------------------------------
function! TemplateExample()
python << endOfPython

from vim_bitrix import vim_bitrix_example

for n in range(5):
    print(vim_bitrix_example())

endOfPython
endfunction

function! ComponentParamCreate()
python << endOfPython

from vim_bitrix import vim_component_param_create
vim.current.buffer.append(vim_component_param_create())

endOfPython
endfunction

" --------------------------------
"  Expose our commands to the user
" --------------------------------
command! Example call TemplateExample()
command! CreateComponentParam call ComponentParamCreate()
