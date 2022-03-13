# Linux System Calls

| `ax` val | Name | Action | `bx` type | `cx` type | `dx` type | `sx` type |  `di` type |
| -----------:|:-----------|:----------|:----------:|:----------:|:----------:|:----------:|:----------:|
| 0 | `sys_setup` | Return -ENOSYS on Linux 2.2 (old) ||||||
| 1 | `sys_exit` | Terminate current process | int |||||
| 2 | `sys_fork` | Create child process | struct `pt_regs` |||||
| 3 | `sys_read` | Read from a file descriptor | unsigned int | char * | `size_t` |||
| 4 | `sys_write` | Write to a file descriptor | unsigned int | const char * | `size_t` |||
| 5 | `sys_open` | Open and/or create file or device | const char * | int | int |||
| 6 | `sys_close` | Close a file descriptor | unsigned int |||||
| 15 | `sys_chmod` | Change permissions of a file, specified by path | const char * | `mode_t` ||||
| 16 | `sys_lchown` | Change ownership of a file | const char * | `uid_t` ||||
| 20 | `sys_getpid` | Get process ID ||||||
| 23 | `sys_setuid` | Set user ID | `uid_t` |||||
| 24 | `sys_getuid` | Get user ID ||||||
| 37 | `sys_kill` | Send signal to process | int | int ||||
| 46 | `sys_setgid` | Set group ID | `gid_t` |||||
| 47 | `sys_getgid` | Get group ID ||||||
| 61 | `sys_chroot` | Change root directory | const char * |||||
| 94 | `sys_fchmod` | Change permissions of a file, specified by file descriptor | unsigned int | `mode_t`||||
| 95 | `sys_fchown` | Change ownership of file, specified by file descriptor | unsigned int | `uid_t` | `gid_t` |||
| 102 | `sys_socketcall` | Kernel entry point for socket calls | int | unsigned long * ||||
| 182 | `sys_chown` | Change ownership of file, specified by path | const char * | `uid_t` | `gid_t` |||


# Sources
[Linux System Call Table](https://faculty.nps.edu/cseagle/assembly/sys_call.html) \
[List of Linux/i386 system calls](http://asm.sourceforge.net/syscall.html) \
[Linux man pages online](https://man7.org/linux/man-pages/index.html)
