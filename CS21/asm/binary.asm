# Lab 5
# Binary
# lab lab

.text
main:
	li	$v0,	5
	syscall
	move	$t0,	$v0
	
	li	$t1,	32
	li	$v0,	1
	loop:
		beqz	$t1,	end
		rol	$t0,	$t0,	1
		and	$a0,	$t0,	1
		syscall
		subi	$t1,	$t1,	1
		b	loop
	end:
	li	$v0,	10
	syscall
	