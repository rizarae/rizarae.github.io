# Lab 6
# recursive fibonacci
# lab lab

.text
main:
	li	$v0,	5	#get input
	syscall
	move	$a0,	$v0	#parameter for fib function
	jal	fib		#function call
	move	$a0,	$v0	#move return value to a0 for printing
	li	$v0,	1	#print
	syscall
	li	$v0,	10	#exit
	syscall
	
fib:
	subi	$sp,	$sp,	32	
	sw	$ra,	28($sp)		#save value of $ra to stack ($ra will be modified during recursion, so we want to save its original value)
	sw	$fp,	24($sp)		#save value of $fp
	sw	$a0,	20($sp)		#save value of $a0 (parameter)
	sw	$s0,	16($sp)		#save value of $s0
	
	beqz	$a0,	zero		#base case 0
	beq	$a0,	1,	one	#base case 1
	
	subi	$a0,	$a0,	1	
	jal	fib			#compute fib(n-1)
	move	$s0,	$v0
	subi	$a0,	$a0,	1
	jal	fib			#compute fib(n-2)
	add	$v0,	$s0,	$v0	#$v0 gets fib(n-1) + fib(n-2)
	b	fib_end
	
	zero:
		li	$v0,	0
		b	fib_end
		
	one:
		li	$v0,	1
	
	fib_end:
	lw	$s0,	16($sp)		#reload to $s0 its original value
	lw	$a0,	20($sp)		#reload to $a0 its original value
	lw	$fp,	24($sp)		#reload to $fp its original value
	lw	$ra,	28($sp)		#reload to $ra its original value
	addi	$sp,	$sp,	32
	jr	$ra			#return to caller block