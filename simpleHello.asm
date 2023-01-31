.data
	name1: .asciiz "Hello World 2023!\n"
    name2: .asciiz "Enter an integer:\n"
    name3: .asciiz "The magic number is "
    name4: .asciiz "!!!\n"

.text
main:

# Print a STRING to std.output
    li $v0, 4
    la $a0, name2
    syscall

    li $v0 5
    syscall
    move $t0, $v0

# Print another STRING to std.output
    li $v0, 4
    la $a0, name1
    syscall

    li $v0, 4
    la $a0, name3
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, name4
    syscall

# End program
    li $v0, 10
	syscall