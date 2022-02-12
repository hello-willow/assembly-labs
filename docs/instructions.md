# Instructions

| Name | Purpose | Description |
| ----------- | ----------- | :----------- |
| `NOP` | **No operation** | Used to pad/align bytes or delay execution |
| `PUSH` | **Push data onto stack** | Used to add word/doubleword/quadword onto stack and **decrement** `ESP` by size of data |
| `POP` | **Pop data from stack** | Used to take word/doubleword/quadword from stack and **increment** `ESP` by size of data |
| `CALL` | **Call procedure** | Transfer control to different function by pushing address of next instruction onto stack and then changing `EIP` to the given address |
| `RET` | **Return from procedure** | 2 forms: 1) `ret` alone to pop top off stack into `EIP`, 2) `ret 0x8`, `ret 0x20`, etc. to pop top off stack into `EIP` and add constant number of bytes to `ESP`  |
| `MOV` | **Move data** | Copy data from one location to another: register > register, register > memory, memory > register, immediate > register, immediate > memory, but **NEVER** memory > memory |


# Sources
[x86 Integer Instructions](https://en.wikipedia.org/wiki/X86_instruction_listings#x86_integer_instructions)
