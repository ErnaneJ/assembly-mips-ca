  .text
  .globl main

main:
  # print message asking for the first number
  addi $v0, $zero, 4
  la $a0, message_first_number
  syscall

  # reads the first number
  addi $v0, $zero, 5
  syscall
  add $t0, $v0, $zero

  # print message asking for the second number
  addi $v0, $zero, 4
  la $a0, message_second_number
  syscall

  # reads the second number
  addi $v0, $zero, 5
  syscall
  add $t1, $v0, $zero

  # add the two numbers entered
  add $t2, $t0, $t1

  # print result message   
  addi $v0, $zero, 4
  la $a0, sum_result_message
  syscall

  # print the result of the sum
  addi $v0, $zero, 1
  add $a0, $t0, $zero
  syscall

  # print new line
  addi $v0, $zero, 4
  la $a0, new_line
  syscall

  # exit program
  addi $v0, $zero, 10
  syscall

  .data
message_first_number: .asciiz "Enter first number: "
message_second_number: .asciiz "Enter second number: "
sum_result_message: .asciiz "The sum is: "
new_line: .asciiz "\n"