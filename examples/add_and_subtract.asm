  .text
  .glob main
main: 
  addi $t2, $zero, 25  # Add value (0 + 25) in $t2 register
  # or => li $t2, 25

  lw $t3, valor # Load value in $t3 register

  add $t4, $t2, $t3 # Add $t2 and $t3 and save in $t4: 25 + 12 = 37
  sub $t5, $t2, $t3 # Sub $t2 and $t3 and save in $t5: 25 - 12 = 13
  sub $t6, $t3, $t2 # Sub $t3 and $t2 and save in $t6: 12 - 25 = -13

  addi $v0, $zero, 10 # Set exit syscall
  syscall # Call syscall

  .data
valor: 
  .word 12

