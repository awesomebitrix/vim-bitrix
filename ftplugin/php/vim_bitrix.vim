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
let param_name = input('Введите название параметра: ')
python << endOfPython
import vim

from vim_bitrix import format_component_param
param_name = vim.eval("l:param_name")
vim.current.buffer.append(format_component_param(param_name, '1', '2', '3', '4'))

endOfPython
endfunction

" --------------------------------
"  Expose our commands to the user
" --------------------------------
command! Example call TemplateExample()
command! CreateComponentParam call ComponentParamCreate()
