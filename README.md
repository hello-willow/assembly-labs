# assembly-labs
x86 labs

## Usage
Available `make` targets:
```
$ make help
build   Build & link selected source file: make build file=<file.asm>
dump    Display objdump for selected executable file: make dump file=<executable>
hw      Run analytics & save to homework: make hw file=<executable> lab=<lab#>
clean   Remove all build content
help    List all available make targets
```
Examples:
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

## Content
### Labs
All assembly files are located in `src/`. Build utilities will produce executables in `bin/` (not tracked by `git`). 

| Lab      | Filename | Description |
| ----------- | ----------- | -----------  |
| 0   | `exit.asm` | Set exit code (return value) to 13 |
| 1   | `hello.asm` | Print `Hello, Clarice.` to console |
| 2   | TBD        | TBD |
| 3   | TBD        | TBD |
| 4   | TBD        | TBD |
| 5   | TBD        | TBD |
| 6   | TBD        | TBD |
| 7   | TBD        | TBD |

All analytics output (`file`, `objdump`, `strace`, etc.) is located in `homework/`, split by respective lab.

### Docs
Charts & cheatsheets are available for the following material:
- [Registers](docs/registers.md)
- [Instructions](docs/instructions.md)
- [Data Types](docs/data_types.md)
- [GDB](docs/gdb.md)
- [Reference](docs/reference.md)
