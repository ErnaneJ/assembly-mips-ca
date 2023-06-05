  .text
  .globl main
main:
  addi $v0, $zero, 4 # system call to print string to screen
  la $a0, message_h
  syscall

  addi $v0, $zero, 10
  syscall

  .data
message_h: .asciiz "Hello World!\n"

