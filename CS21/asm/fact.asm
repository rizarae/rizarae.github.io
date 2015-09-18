# Lab 6
# factorial
# lab lab

.text
main:
	li	$v0,	5	#get input
	syscall
	move	$a0,	$v0	#parameter for factorial function
	
	jal	factorial	#function call
	
	move	$a0,	$v0	#move return value to a0 for printing
	li	$v0,	1	#print
	syscall
	li	$v0,	10	#exit
	syscall
	
factorial:
	subi	$sp,	$sp,	32	
	sw	$ra,	28($sp)		#save value of $ra to stack ($ra will be modified during recursion, so we want to save its original value)
	sw	$fp,	24($sp)		#save value of $fp
	sw	$a0,	20($sp)		#save value of $a0
	
	ble	$a0,	1,	base	#base case is 0 and 1, both 0! and 1! are 1.
	subi	$a0,	$a0,	1
	jal	factorial
	lw	$a0	20($sp)		#reload to $a0 its original value (necessary because $a0 was modified for the recursive step)
	mul	$v0,	$a0,	$v0	#v0 gets n * factorial(n-1)
	b	factorial_end
	
	base:
		li	$v0,	1
	
	factorial_end:
	lw	$fp,	24($sp)		#reload to $fp its original value
	lw	$ra,	28($sp)		#reload to $ra its original value
	addi	$sp,	$sp,	32
	jr	$ra			#return to caller block