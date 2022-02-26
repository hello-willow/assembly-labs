# Instructions

| Name | Purpose | Description |
| ----------- | ----------- | :----------- |
| `NOP` | **No operation** | Used to pad/align bytes or delay execution |
| `PUSH` | **Push data onto stack** | Used to add word/doubleword/quadword onto stack and **decrement** `ESP` by size of data |
| `POP` | **Pop data from stack** | Used to take word/doubleword/quadword from stack and **increment** `ESP` by size of data |
| `CALL` | **Call procedure** | Transfer control to different function by pushing address of next instruction onto stack and then changing `EIP` to the given address |
| `RET` | **Return from procedure** | 2 forms: 1) `ret` alone to pop top off stack into `EIP`, 2) `ret 0x8`, `ret 0x20`, etc. to pop top off stack into `EIP` and add constant number of bytes to `ESP`  |
| `MOV` | **Move data** | Copy data from one location to another: register > register, register > memory, memory > register, immediate > register, immediate > memory, but **NEVER** memory > memory |
| `LEA` | **Load Effective Address** | Loads address of effective operand into register rather than acting upon that memory location; can be used to pass address of array element to subroutine |
| `ADD` | **Add** | stuff |
| `SUB` | **Subtract** | stuff |
| `JMP` | **Jump** | stuff |
| `Jcc` | **Jump if condition** | stuff |
| `CMP` | **Compare operands** | stuff |
| `TEST` | **Logical compare** | stuff |
| `AND` | **Logical `AND`** | stuff |
| `OR` | **Logical `OR`** | stuff |
| `XOR` | **Logical `XOR`** | stuff |
| `NOT` | **Logical `NOT`** | stuff |
| `SHR` | **Shift right** | stuff |
| `SHL` | **Shift left** | stuff |
| `IMUL` | **Signed multiply** | stuff |
| `DIV` | **Unsigned Divide** | stuff |
| `LEAVE` | **High-level procedure exit** | Releases stack frame set up by an earlier ENTER instruction; copies frame pointer (in `EBP`) into stack pointer (`ESP`), releasing the stack space allocated to the stack frame |
| `XCHG` | **Exchange data** | stuff |


# Sources
[x86 Integer Instructions](https://en.wikipedia.org/wiki/X86_instruction_listings#x86_integer_instructions)
