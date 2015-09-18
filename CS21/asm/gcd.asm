# Lab 4
# GCD
# lab lab

.text
main:
	li	$v0,	5
	syscall				# first int (a)
	move	$t0,	$v0
	li	$v0,	5
	syscall				# second int (b)
	move	$t1,	$v0
	
	gcd:
		beqz	$t1,	end
		rem	$t2,	$t0,	$t1	# a mod b
		move	$t0,	$t1
		move	$t1,	$t2
		b	gcd

	end:
		move	$a0,	$t0
		li	$v0,	1
		syscall
		
	li	$v0,	10
	syscall