nasm -g -O0 -fwin64 -gcv8 %1.s
golink /debug coff /entry _start /console %1.obj kernel32.dll msvcrt.dll shell32.dll user32.dll