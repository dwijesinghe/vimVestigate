# vimVestigate
##### Find in Folder/Find in Path functionality for Vim - built to integrate with NERDTree
---
![Screenshot](https://github.com/dwijesinghe/vimvestigate/raw/master/screenshots/VimVestigateResult.png)

## Introduction
Fully recursive folder searching in vim. For users of Sublime/Visual Studio Code, this plugin integrates with NERDTree to provide the same functionalality as right-clicking a folder in the sidebar and selecting Find in Folder/Find in Path.

## Installation

#### [Pathogen](https://github.com/tpope/vim-pathogen)

```sh
cd ~/.vim/bundle
git clone https://github.com/dwijesinghe/vimvestigate.git
```
For Windows users, use `vimfiles` instead of `.vim`

## Usage
If you don't have it already, install [NERDTree](https://github.com/preservim/nerdtree)

1. Move your cursor over the folder you want to search as shown below
![Screenshot](https://github.com/dwijesinghe/vimvestigate/raw/master/screenshots/VimVestigateStart.png)
2. Enter the command `:VV text to search` and press Enter as shown below
![Screenshot](https://github.com/dwijesinghe/vimvestigate/raw/master/screenshots/VimVestigateCommand.png)
3. The results will appear in a new vsplit pane to the right of the current buffer (in a buffer called `vimvestigator`...because I love puns)
![Screenshot](https://github.com/dwijesinghe/vimvestigate/raw/master/screenshots/VimVestigateEnd.png)
4. Move your cursor over the a result filename as shown below. Press `e` to open that file to the detected line number
