@echo off
@echo Swithching to %*
SET destdir=%*
C:\Windows\System32\cmd.exe /U /Q /K C:\Users\Yifei\msys2\msys2_shell.bat -c 'cd "${destdir}"; exec bash --init-file ~/.bash_profile'
