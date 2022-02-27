# GDB Cheatsheet

General set-up:
| Command | Description | Example | Shorthand |
| ----------- | ----------- | :----------- | ----------- |
| `gdb` | Start GDB session | `gdb <executable>` ||
| `list` | Display full source code | `list` | `l` |
| `list N,M` | List source code from line `N` to line `M` | `list 5,10` | `l 5,10` |
| `break N` | Set breakpoint at line `N` | `break 7` ||
| `d N` | Delete breakpoint number `N` | `d 3` ||
| `info b` | Show all breakpoints | `info b` ||


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
