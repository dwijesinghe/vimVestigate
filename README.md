# vimVestigate
### Find in Folder/Find in Path functionality for Vim - built to integrate with NERDTree
![Screenshot](https://github.com/dwijesinghe/vimvestigate/raw/master/screenshots/VimVestigateResult.png)

## Introduction
Fully recursive folder searching in vim. For users of Sublime/Visual Studio Code, this plugin integrates with NERDTree to provide the same functionalality as right-clicking a folder in the sidebar and selecting Find in Folder/Find in Path.

## Installation

#### [Pathogen](https://github.com/tpope/vim-pathogen)

```sh
cd ~/.vim/bundle
git clone https://github.com/dwijesinghe/vimVestigate.git
```

## Usage
If you don't have it already, install [NERDTree](https://github.com/preservim/nerdtree)

1. Move your cursor over the folder you want to search as shown below
![Screenshot](https://github.com/dwijesinghe/vimvestigate/raw/master/screenshots/VimVestigateStart.png)

2. Enter the command `:VV text to search` (no quotes needed around search text) and press Enter as shown below
![Screenshot](https://github.com/dwijesinghe/vimvestigate/raw/master/screenshots/VimVestigateCommand.png)

3. The results will appear in a new vsplit pane to the right of the current buffer (in a buffer called `vimvestigator`...because I love puns)

4. Move your cursor over the a result filename as shown below. Press `e` to open that file to the detected line number
![Screenshot](https://github.com/dwijesinghe/vimvestigate/raw/master/screenshots/VimVestigateResult.png)

5. To enable highlighting move `syntax/vimvestigatorSyntax.vim` to `~/.vim/syntax/` (or move the syntax folder to `~/.vim` if you don't have a syntax folder already)

## Why is it called "vimVestigate"? Why not just "Find In Folder" or "Find In Path"?
Because I can't resist a good pun ;)

## Notes
* This plugin creates the file `~/.vim/vimvestigator` which is used to store the folder search results. The first time the `:VV` command is used, this file will be created.
* This plugin uses Python 2

## Contributing
I welcome collaboration. Please maintain the general style of code and always feel free to poke me for additional information.


## License 

(The MIT License)

Copyright (c) 2020

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
