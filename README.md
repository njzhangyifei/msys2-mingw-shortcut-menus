# Right click "Bash-here" Shortcut in Context Menu for MSYS2 MINGW32/64 shell
This is all the configuration files needed for adding "bash here" options in 
the Windows right-click shortcut/context menu. 

This implementation should work for MSYS2 and MINGW32/64 shells that come with MSYS2.


![screenshot](https://cloud.githubusercontent.com/assets/2238599/15538737/d9d1e3a2-2232-11e6-9426-42c62c69925c.png)


### Usage
0. Make sure environment variable `%HOME%` exists. 
   (This script will source `%HOME%/.bash_profile`)
1. `git clone git@github.com:njzhangyifei/msys2-mingw-shortcut-menus.git` into
   your desired directory to install
   - Or `git clone https://github.com/njzhangyifei/msys2-mingw-shortcut-menus.git`
   when git via ssh is not available
2. `./install` and follow the instructions
3. double-click `install_right_click_menu.reg` file to merge it into your
   windows registry
4. **(Optional)** If you don't see icons in the context menu, please install `msys2-launcher`
   via pacman (`pacman -S msys/msys2-launcher-git`) or from source https://github.com/elieux/msys2-launcher

### Note
- This script does NOT depend on `cygpath`.
- For the MSYS2 version with `start_shell.cmd`, the script will 
  use `bash_here_start_shell.template` for generating bash scripts.
  - You **MUST** have environmental variable `$HOME` defined as 
    your home directory path.
- To use shell other than `bash` (e.g. to use `zsh`), you might want to create a 
  `start_shell_zsh.cmd` and `(mingw*/msys2)_shell_zsh.bat`. Then, you will need
  to modify either the template or the bash script generated to call the
  corresponding batch file.

### License
The MIT License (MIT) 2015 Yifei Zhang
