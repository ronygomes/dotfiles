# dotfiles

Personal configuraiton files

### Configuraiton Structure

```shell
├── README.md
├── bin
├── install
├── tmux.conf
├── vim
│   ├── autoload
│   ├── ftplugin
│   │   ├── cpp.vim
│   │   ├── help.vim
│   │   ├── markdown.vim
│   │   ├── text.vim
│   │   └── vim.vim
│   ├── plugged
│   └── plugins.vim
└── vimrc
```

### Installation

Run following commands in bash shell from `$HOME`:
```shell
$ git clone https://github.com/ronygomes/dotfiles.git .dotfiles
$ .dotfiles/install
```
then open `vim` and run `:PlugInstall` to install vim plugins.
