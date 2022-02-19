# Registers & EFLAGS

## Registers
### General Purpose
16-bit, in order of a push-to-stack operation:
| Register | Name | Description |
| ----------- | ----------- | :----------- |
| `AX` | **Accumulator** | Used in arithmetic operations, stores function return values |
| `CX` | **Counter** | Used in shift/rotate instructions, loops, and string operations |
| `DX` | **Data** | I/O pointer, used in arithemetic & I/O operations |
| `BX` | **Base** | Base pointer for data section |
| `SI` | **Source Index** | Source pointer for string operations, used as pointer to source in stream operations |
| `DI` | **Destination Index** | Destination pointer for string operations, used as pointer to destination in stream operations |

### Reserved
| Register | Name | Description |
| ----------- | ----------- | :----------- |
| `SP` | **Stack Pointer** | Used to point to top of the stack |
| `BP` | **Stack Base Pointer** | Used to point to base of the stack |
| `IP` | **Instruction Pointer** | Pointer for the next instruction to execute (if no branching), can only be read through stack after a `call` |

### Naming Conventions
Accumulator register `AX` in 8-, 16-, 32-, and 64-bit naming conventions:

![Register Naming Conventions](media/x86_registers_modes.png)

## EFLAGS
| Flag | Name | Description |
| ----------- | ----------- | :----------- |
| `SF` | **Sign Flag** | Set to most significant bit of result, which is the sign bit for signed ints (0 = positive, 1 = negative) |
| `ZF` | **Zero Flag** | Set if result of an operation is zero |
| `CF` | **Carry Flag** | Set if carry or borrow has been generated |
| `OF` | **Overflow Flag** | Set when arithmetic overflow occurs in an operation (result won't fit in bits used for result) |
| `AF` | **Adjust/Auxiliary Carry Flag** | Set to `1` if there is a carry from low to high during an add operation, or a borrow from high to low during a subtraction operation |
| `PF` | **Parity Flag** | Indicates if number of set bits is odd or even (`0` for odd, `1` for even) |



## Sources
[Wikibooks: x86 Assembly/X86 Architecture](https://en.wikibooks.org/wiki/X86_Assembly/X86_Architecture) \
[HackUCF: x86 Assembly Crash Course](https://youtu.be/75gBFiFtAb8) \
[FLAGS register](https://en.wikipedia.org/wiki/FLAGS_register)
