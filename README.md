# assembly-labs
x86 labs

# Instructions (WIP)

These commands work on Ubuntu 20:
```bash
$ uname -a
Linux ubuntu 5.11.0-46-generic #51~20.04.1-Ubuntu SMP Fri Jan 7 06:51:40 UTC 2022 x86_64 x86_64 x86_64 GNU/Linux
$ nasm -f elfX32 exit.asm
$ ld -m elf32_x86_64 exit.o -o exit
$ ./exit
$ echo $?
13
```

But these commands work on Debian 11:
```bash
$ uname -a
Linux debian 5.10.0-10-amd64 #1 SMP Debian 5.10.84-1 (2021-12-08) x86_64 GNU/Linux   
$ nasm -f elf64 exit.asm
$ ld exit.o -o exit
$ echo $?
13
```


Error when trying to run `elfX32` on Debian 11:
```bash
$ nasm -f elfX32 exit.asm
$ ld -m elf32_x86_64 exit.o -o exit
$ ./exit
-bash: ./exit: cannot execute binary file: Exec format error
$ file exit
exit: ELF 32-bit LSB executable, x86-64, version 1 (SYSV), statically linked, not stripped                                
```

# Content

All labs are located in `src/` for easier access in build scripts.

| Lab      | Filename | Description |
| ----------- | ----------- |
| 0      | `exit.asm`       | Set return code to 13 |
| 1   | TBD        | TBD |
| 2   | TBD        | TBD |
| 3   | TBD        | TBD |
| 4   | TBD        | TBD |
| 5   | TBD        | TBD |
| 6   | TBD        | TBD |
| 7   | TBD        | TBD |
