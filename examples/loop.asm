 .text
 .globl main
main:
  # Print message_1
  li $v0, 4 # print_string syscall code = 4
  la $a0, message_1 
  syscall

  # Get N from user and save
  li $v0, 5     # read_int syscall code = 5
  syscall 
  move $t0, $v0 # syscall results returned in $v0

  # Initialize registers
  li $t1, 0 # initialize counter (i)
  li $t2, 0 # initialize sum

  # Main loop body
  loop: addi $t1, $t1, 1 # i = i + 1

  # Print i
  li $v0, 1 # print_int syscall code = 1
  move $a0, $t1
  syscall
    


  add $t2, $t2, $t1      # sum = sum + i
  beq $t0, $t1, exit_loop     # if i = N, continue

  # Print plus_sign
  li $v0, 4 # print_string syscall code = 4
  la $a0, plus_sign
  syscall

  j loop

  # Exit routine - print equal_sign
  exit_loop: li $v0, 4 # print_string syscall code = 4
  la $a0, equal_sign
  syscall

  # Print sum
  li $v0, 1 # print_string syscall code = 4
  move $a0, $t2
  syscall

  # Print newline
  li $v0, 4 # print_string syscall code = 4
  la $a0, new_line
  syscall

  li $v0,10 # exit
  syscall

  # Start .data segment (data!)
  .data
message_1: .asciiz "Number of integers (N)?  "
equal_sign: .asciiz " = "
new_line:  .asciiz "\n"
plus_sign: .asciiz " + "

###############################################
########## Expected output for N = 5 ##########
# Number of integers (N)?  5
# 1 + 2 + 3 + 4 + 5 = 15
###############################################