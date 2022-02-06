# assembly-labs
x86 labs

# Instructions
Available `make` targets:
```
$ make help
build   Build & link selected source file: make build file=<file.asm>
dump    Display objdump for selected executable file: make dump file=<executable>
hw      Run analytics & save to homework: make hw file=<executable> lab=<lab#>
clean   Remove all build content
help    List all available make targets
```
*Examples:*
```
$ make build file=exit.asm
scripts/build.sh exit.asm
Built executable bin/exit

$ make dump file=exit
scripts/dump.sh exit

bin/exit:     file format elf32-x86-64


Disassembly of section .text:

00401000 <_start>:
401000:       b0 01                   mov    al,0x1
401002:       8b 1c 25 00 20 40 00    mov    ebx,DWORD PTR ds:0x402000
401009:       cd 80                   int    0x80

$ make hw file=exit lab=0
scripts/homework.sh exit 0
Created analytics files in homework/lab0 for bin/exit
```

### FIXME
These commands work on Ubuntu 20:
```
$ uname -a
Linux ubuntu 5.11.0-46-generic #51~20.04.1-Ubuntu SMP Fri Jan 7 06:51:40 UTC 2022 x86_64 x86_64 x86_64 GNU/Linux
$ nasm -f elfX32 exit.asm
$ ld -m elf32_x86_64 exit.o -o exit
$ ./exit
$ echo $?
13
```

But these commands work on Debian 11:
```
$ uname -a
Linux debian 5.10.0-10-amd64 #1 SMP Debian 5.10.84-1 (2021-12-08) x86_64 GNU/Linux   
$ nasm -f elf64 exit.asm
$ ld exit.o -o exit
$ echo $?
13
```


Error when trying to run `elfX32` on Debian 11:
```
$ nasm -f elfX32 exit.asm
$ ld -m elf32_x86_64 exit.o -o exit
$ ./exit
-bash: ./exit: cannot execute binary file: Exec format error
$ file exit
exit: ELF 32-bit LSB executable, x86-64, version 1 (SYSV), statically linked, not stripped                                
```

# Content
All assembly files are located directly in `src/` for easier access in build scripts. All analytics
output (`file`, `objdump`, `strace`, etc.) is located in `homework/`, split by respective lab.

| Lab      | Filename | Description |
| ----------- | ----------- | -----------  |
| 0      | `exit.asm`       | Set return code to 13 |
| 1   | TBD        | TBD |
| 2   | TBD        | TBD |
| 3   | TBD        | TBD |
| 4   | TBD        | TBD |
| 5   | TBD        | TBD |
| 6   | TBD        | TBD |
| 7   | TBD        | TBD |
