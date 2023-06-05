# Assembly MIPS

Notes and examples referring to the study of the set of instructions that form the basis of low-level programming of processors with a focus on the set of instructions of the 32-bit MIPS architecture.

## MIPS System Calls

MIPS programs can make system calls by placing parameters in specified registers, depending on the call, and executing a trap instruction. Returned results are made available in other specified registers, also depending on the call.

The trap mechanism used differs from the `syscall` mechanism used by real MIPS. However, the numbers used to identify the system calls are the same. (_where possible_)

|Service|Trap Code|Input|Output|Notes|
|--- |--- |--- |--- |--- |
|print_int|1|$4 is int to print||Print an int value to standard output in decimal.|
|print_float|2|$f12 is float to print||NOT IMPLEMENTED!  Print a float value to standard output.|
|print_double|3|$f12 (with $f13) is double to print||NOT IMPLEMENTED!  Print a double value to standard output.|
|print_string|4|$4 is address of `ASCIIZ` string to print||Print an `ASCIIZ` string to standard output. The contents of $1 are destroyed in the process.|
|read_int|5||$2 is int read|Read a line of standard input as an int value expressed in decimal.|
|read_float|6||$f12 is float read|NOT IMPLEMENTED!  Read a line of standard input as a float value.|
|read_double|7||$f12 (with $f13) is double read|NOT IMPLEMENTED!  Read a line of standard input as a double value.|
|read_string|8|$4 is address of buffer, $5 is buffer size in bytes||Read a line of standard input into a string buffer. The contents of $1 are destroyed in the process.|
|sbrk|9|$4 is number of bytes required|$2 is address of allocated memory|NOT IMPLEMENTED!  Allocate memory from the heap.|
|exit|10|||Terminate execution of the MIPS program.|
|print_byte|101|$4 contains byte to print||Print a single byte to standard output.|
|read_byte|102||$2 contains byte read|Read a single byte from standard input.|
|set_print_inst_on|103|||For debugging.  Turns on printing of each instruction before execution.|
|set_print_inst_off|104|||For debugging.  Turns off printing of each instruction before execution.|
|get_print_inst|105||$2 contains current status of printing instructions||