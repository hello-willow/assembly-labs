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
| `ADD` | **Add** | Add first operand (destination) and second operand (source), and store result in destination operand; `Destination = Destination + Source` |
| `SUB` | **Subtract** | Subtract second operand (source) from first operand (destination), and store result in destination operand; `Destination = Destination - Source` |
| `INC` | **Increment** | Add value of `1` to the operand and store result in the operand; does not affect `CF` flag; destination can be register or memory location |
| `DEC` | **Decrement** | Subtract value of `1` from the operand and store result in the operand; does not affect `CF` flag; destination can be register or memory location |
| `JMP` | **Jump** | Jump to label for next line of execution |
| `Jcc` | **Jump if condition** | Conditional jump (see options below) |
| `CMP` | **Compare operands** | Compare first operand (destination) with second operand (source) |
| `TEST` | **Logical compare** | Performs bitwise `AND` on two operands and then modifies flags `SF`, `ZF`, `PF` and discards result of `AND`; sets `OF` and `CF` flags to 0, and leaves `AF` flag as undefined; can compare 8/16/32/64-bit values, registers, immediate values, and register indirect values |
| `AND` | **Logical `AND`** | Performs bitwise `AND` on first operand (destination) and second operand (source), and then stores result in the destination operand location; source operand can be an immediate, a register, or a memory location; destination operand can be a register or a memory location, but two memory operands cannot be used in one instruction |
| `OR` | **Logical `OR`** | stuff |
| `XOR` | **Logical `XOR`** | stuff |
| `NOT` | **Logical `NOT`** | stuff |
| `SHR` | **Shift right** | stuff |
| `SHL` | **Shift left** | stuff |
| `IMUL` | **Signed multiply** | stuff |
| `DIV` | **Unsigned Divide** | stuff |
| `LEAVE` | **High-level procedure exit** | Releases stack frame set up by an earlier ENTER instruction; copies frame pointer (in `EBP`) into stack pointer (`ESP`), releasing the stack space allocated to the stack frame |
| `XCHG` | **Exchange data** | stuff |

## `JMP` options
| Name | Description | Misc. |
| ----------- | ----------- | :----------- |
| `JE` | Jump if equal ||
| `JZ` | Jump if zero ||
| `JE` | Jump if equal ||
| `JNE` | Jump if **not** equal ||
| `JNZ` | Jump if **not** zero ||
| `JL` | Jump if less ||
| `JG` | Jump if greater ||
| `JLE` | Jump if less or equal ||
| `JGE` | Jump if greater or equal ||
| `JCXZ` | Jump if `CX` register is zero ||
| `JECXZ` | Jump if `ECX` register is zero ||


# Sources
[x86 Integer Instructions](https://en.wikipedia.org/wiki/X86_instruction_listings#x86_integer_instructions) \
[Mirror of: Into the Void: x86 Instruction Set Reference](https://c9x.me/x86/) \
[Steve Friedl's Unixwiz.net Tech Tips: Intel x86 JUMP quick reference](http://www.unixwiz.net/techtips/x86-jumps.html)

