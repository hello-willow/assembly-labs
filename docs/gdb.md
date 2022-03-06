# GDB Cheatsheet

General set-up:
| Command | Description | Shorthand |
| ----------- | ----------- | ----------- |
| `gdb` | Start GDB session ||
| `list` | Display full source code | `l` |
| `list N,M` | List source code from line `N` to line `M` | `l N,M` |
| `break N` | Set breakpoint at line `N` ||
| `d N` | Delete breakpoint number `N` ||
| `info b` | Show all breakpoints ||


Run & debug:
| Command | Description | Shorthand |
| ----------- | ----------- | ----------- |
| `run` | Run program ||
| `next` | Advance to next line of execution | `n` |
| `step` | Step into the next line executed in any subroutine | `s` |
| `backtrace` | Display stack frame for each active subroutine | `bt` |
| `continue` | Run to next breakpoint | `c` |
| `info locals` | Show value(s) of local var(s) ||
| `print <variable>` | Show value of specified variable | `p <variable>` |



### Sources
[GDB: The GNU Project Debugger](https://www.sourceware.org/gdb/) \
[pwndgb](https://github.com/pwndbg/pwndbg)
