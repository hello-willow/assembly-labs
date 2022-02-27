# assembly-labs
x86 labs

## Usage
Available `make` targets:
```
$ make help
build   Build & link selected source file: make build file=<file.asm>
dump    Display objdump for selected executable: make dump file=<executable>
info    Get file info & save to analysis dir: make info file=<executable>
clean   Delete build content for selected file only: make clean file=<executable>
broom   Clean sweep & delete all build content
help    List all available make targets
```

Examples:
```
$ make build file=exit.asm
scripts/build.sh exit.asm
Built executable bin/exit
```

```
$ make dump file=exit
scripts/dump.sh exit

bin/exit:     file format elf32-x86-64


Disassembly of section .text:

00401000 <_start>:
401000:       b0 01                   mov    al,0x1
401002:       8b 1c 25 00 20 40 00    mov    ebx,DWORD PTR ds:0x402000
401009:       cd 80                   int    0x80
```

```
$ make info file=exit
scripts/info.sh exit
Saved analysis output (objdump, file, strace, hexdump, xxd) in analysis/exit/ for bin/exit
```

## Content
### Labs
All assembly files are located in `src/`. Build utilities will produce executables in `bin/`, and
output of analysis tools will be saved in `analysis/`. (Neither of these output directories is tracked
by `git`.) All C code lives in `c-examples`.

| Lab      | Filename | Description |
| ----------- | ----------- | -----------  |
| 0   | `exit.asm` | Set return value to 13 |
| 1   | `hello.asm` | Print `Hello, Clarice.` to console |
| 2   | `jump.asm`  | TODO: Use `JMP` to jump to exit syscall |
| 3   | `call.asm` | Use `CALL` to run function that sets return value to 101 |
| 4   | `goodbye.asm` | TODO: modify earlier labs to implement `goodbye.c` |
| 5   | `while.asm` | TODO: implement `loop.c` using mix of `CALL` and `JMP` |
| 6   | `dowhile.asm` | TODO: implement `dowhile.c` |
| 7   | `for.asm` | TODO: implement `for.c` |
| 99  | `bonus.asm` | TODO: choose your own adventure & instruction |

### Docs
Charts & cheatsheets are available for the following material:
- [Registers](docs/registers.md)
- [Instructions](docs/instructions.md)
- [Data Types](docs/data_types.md)
- [GDB](docs/gdb.md)
- [Reference](docs/reference.md)
