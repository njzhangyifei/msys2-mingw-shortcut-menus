# Right-click "Bash Here" Shortcut in Context Menu for MSYS2 MINGW32/64 shell
These are all the configuration files needed to add "bash here" options in the Windows right-click shortcut/context menu. The menu options will be made available for both right-click on a folder background and [right-click on a folder](https://gist.github.com/magthe/a60293fe395af7245a9e#gistcomment-3164952).

This implementation should work for MSYS2 and MINGW32/64 shells that come with MSYS2.

![screenshot](https://cloud.githubusercontent.com/assets/2238599/15538737/d9d1e3a2-2232-11e6-9426-42c62c69925c.png)

## Usage
- Make sure the environment variable `$HOME` exists and points to `/home/<userid>` from your MSYS2/bash console. To test this, open an MSYS2/bash console, and type and run this command: `echo $HOME`. If it prints a valid path, the variable exists with a valid value. If it does not print a path, you need to fix up your install to include a `$HOME` environment variable (out of scope of this document). This is needed because this script will use `$HOME/.bash_profile`. Then, from an MSYS2/bash console, run these commands:
- From a directory into which you want to clone the direcotry of this repository: `git clone <full URL of this repository>`
- `cd <folder of this repository>`
- `./install` and follow the instructions
- **(Optional)** double-click `install_right_click_menu.reg` file to merge it into your windows registry if not automatically merged by the install script.
- **(Optional)** If you don't see icons in the context menu, please install `msys2-launcher`
   via pacman (`pacman -S msys/msys2-launcher-git`) or from source https://github.com/elieux/msys2-launcher

## Note (Manually add Context Menu shortcuts)
Double-click `install_right_click_menu.reg` and follow the Registry Editor prompts.

## Note (Manually remove Context Menu shortcuts)
Double-click `uninstall_right_click_menu.reg` and follow the Registry Editor prompts.

## Notes
- This script does not depend on `cygpath`.
- If you are using zsh, copy `reg_aio_zsh_msys2_shell_example.template` into you MSYS2 install directory, rename it to `msys2_shell_zsh.cmd`, and edit it as appropriate. You will need to change `TEMPLATE_SHELL` in the install script to `zsh`.
- If you are using MSYS2 with a filesystem newer than 2016.05-2, this script will only generate one `.reg` file, which is all you need to create this context menu. You can delete this directory after merging the `.reg` file.

### Notes (For msys2 version with start_shell.cmd)
- For the MSYS2 version with `start_shell.cmd`, the script will use `bash_here_start_shell.template` for generating bash scripts.
- You must have the environment variable `$HOME` defined as your home directory path.
- To use a shell other than `bash` (e.g. to use `zsh`), you might want to create a `start_shell_zsh.cmd` and `(mingw*/msys2)_shell_zsh.bat`. Then, you will need to modify either the template or the bash script generated to call the corresponding batch file.

## License
The MIT License (MIT) 2015 Yifei Zhang