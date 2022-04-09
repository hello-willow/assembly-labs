# GDB Cheatsheet

General set-up:
| Command | Description | Shorthand |
| ----------- | ----------- | ----------- |
| `gdb <executable>` | Start GDB session ||
| `list` | Display full source code (if available) | `l` |
| `list N,M` | List source code from line `N` to line `M` (if available) | `l N,M` |
| `break N` | Set breakpoint at line `N` | `b N` |
| `break <label>` | Set breakpoint at `label` | `b <label>` |
| `delete N` | Delete breakpoint number `N` | `d N` |
| `info break` | Show all breakpoints | `i b` |
| `info registers` | Show value of all registers | `i r` |
| `info registers eax` | Show value of `eax` only | `i r eax` |


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
