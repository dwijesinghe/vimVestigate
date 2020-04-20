function! VimVestigate(...)

normal cd
wincmd l
let s:string = join(a:000)
let s:folderpath = getcwd() 
vsplit
wincmd l
e ~/.vim/vimvestigator
w!

" We start the python code like the next line.

python << EOF
import vim
import os
import errno

def folderSearch(folderpath, string):

	vvFilePath = os.path.expanduser('~/.vim/vimvestigator')
	vvFile = open(vvFilePath, "w+")
	fullPath = os.path.expanduser(folderpath)
	vvFile.write('Searching {} for "{}":'.format(fullPath, string))
	count = 0 
	# This portion of code taken and modified from Stack Overflow
	# user jwpfox. Special thanks for an excellent answer.
	# Original post can be found at:
	# https://stackoverflow.com/questions/39974584/search-all-files-in-a-folder
	for(path, dirs, files) in os.walk(fullPath, topdown=True):
		for filename in files:
			filepath = os.path.join(path, filename)
			with open(filepath, 'r') as currentfile:
				for index, line in enumerate(currentfile):
					if string in line:
						count += 1
						vvFile.write('\n')
						vvFile.write('\n{}. In {}, line {}:\n{}'.format(count, filepath, index+1, line))
	
	vvFile.write('\n')
	vvFile.write('\n')
	if count == 0:
		vvFile.write('"{}" not found'.format(string))
	else:
		vvFile.write('{} occurences found'.format(count))

	vvFile.close()

folderSearch(vim.eval('s:folderpath'), vim.eval('s:string'))
EOF

e ~/.vim/vimvestigator
set syntax=vimvestigatorSyntax
map <buffer> e :call GoToResult()<cr>
/\d\.
endfunction

function! GoToResult()
let s:line = getline('.')
let s:path = getline('.')
let s:path = substitute(s:path,'^\d.*In\s','','g') 
let s:path = substitute(s:path,', line \d.*:\s*$','','g') 
let s:line= substitute(s:line,'^.*, line ','','g') 
let s:line= substitute(s:line,':\s*$','','g') 
execute 'e ' . s:path
execute s:line
"echo ':e ' . s:path
"echo ':' . s:line
endfunction

command! -nargs=* VV call VimVestigate(<f-args>)
