# assembly-labs
x86 labs

## Usage
Available `make` targets:
```
$ make help
build   Build & link selected source file: make build file=<file.asm>
dump    Display objdump for selected executable: make dump file=<executable>
info    Get file info & save to analysis dir: make info file=<executable>
static  Build C executable, static linking: make file=<file.c>
dynamic Build C executable, dynamic linking: make file=<file.c>
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
output of analysis tools is saved in `analysis/`. (Neither of these output directories is tracked
by git.) All C code lives in `c-src/`.

| Lab      | Filename | Description |
| ----------- | ----------- | -----------  |
| 0   | `exit.asm` | Set return value to 13 |
| 1   | `hello.asm` | Print `Hello, Clarice.` to console |
| 2   | `jump.asm`  | Use `JMP` to jump to exit function for `sys_exit` |
| 3.0   | `call.asm` | Use `CALL` to run function that sets return value to 101 |
| 3.1   | `bye.asm` | Use `CALL` to run function `bye` that prints `Goodbye, Clarice.` to console |
| 4   | `branch.asm` | Implement `goodbye.c`, and print `Goodbye, Clarice.` with hardcoded test val set to `1` |
| 5   | `loop.asm` | TODO: implement `loop.c` using mix of `CALL` and `JMP` |
| 6   | `dowhile.asm` | TODO: implement `dowhile.c` |
| 7   | `for.asm` | TODO: implement `for.c` |
| 99  | `bonus.asm` | TODO: choose your own adventure & instruction |

### Docs
Charts & cheatsheets are available for the following material:
- [Registers](docs/registers.md)
- [Instructions](docs/instructions.md)
- [Data Types](docs/data_types.md)
- [System Calls](docs/syscalls.md)
- [GDB](docs/gdb.md)
- [Reference](docs/reference.md)
