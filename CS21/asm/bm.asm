# Lab 5
# Bit Manipulation (sb-exp-man) -> (man-exp-sb)
# lab lab

.text
main:
	li	$v0,	5
	syscall
	move	$a0,	$v0
	
	srl	$t0,	$a0,	31	#sb
	
	sll	$t1,	$a0,	9	#man
	
	sll	$t2,	$a0,	1
	andi	$t2,	$t2,	0xff800000
	srl	$t2,	$t2,	23	#exp
	
	or	$a0,	$t0,	$t1
	or	$a0,	$a0,	$t2
	li	$v0,	1
	syscall
	
	li	$v0,	10
	syscall
	