# Right click "Bash-here" Shortcut Menus for MSYS2 & MINGW
This is all the configuration files needed for adding "bash here" options in 
the Windows right-click shortcut menu. This implementation should work for 
MSYS2 and MINGW32/64.

### Usage
0. Make sure environment variable %HOME% exists. 
   (This script will source %HOME%/.bash_profile)
1. `git clone git@github.com:njzhangyifei/msys2-mingw-shortcut-menus.git` into
   your desired directory to install
   - Or `git clone https://github.com/njzhangyifei/msys2-mingw-shortcut-menus.git`
   when git via ssh is not available
2. `./install` and follow the instructions
3. double-click `install_right_click_menu.reg` file to merge it into your
   windows registry

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
