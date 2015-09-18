# Lab 4
# Multiplication of Two Non-negative Integers via Repeated Addition
# lab lab

.text
main:
	li	$v0,	5	#get first input
	syscall
	move	$t0,	$v0
	li	$v0,	5	#get second input
	syscall	
	move	$t1	$v0
	
	li	$a0,	0
	loop:
		beqz	$t1,	end
		add	$a0,	$a0,	$t0
		subi	$t1,	$t1,	1
		b	loop
	end:
	li	$v0,	1
	syscall
	li	$v0,	10
	syscall
.data