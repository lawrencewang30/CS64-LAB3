# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:

	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 5
	syscall
	move $t1, $v0

	li $v0, 5
	syscall
	move $t2, $v0

	li $t4, 100
	
	sub $t3, $t0, $t1
	sll $t3, $t3, 6

	mult $t2, $t4
	mfhi $t2
	mflo $t2
	
	add $t3, $t3, $t2

exit:
	li $v0, 1
	move $a0, $t3
	syscall

	li $v0, 10
	syscall

