# LAB 2
# lab lab

.text
main:
	li 	$t0,	0		#t0 holds the sum
	li	$t1,	1		#t1 holds the product
	
	li	$v0,	5		#syscall 5 (read int)
	syscall
	add	$t0,	$t0,	$v0	
	mul	$t1,	$t1,	$v0
	
	li	$v0,	5		#syscall 5 (read int)
	syscall
	add	$t0,	$t0,	$v0	
	mul	$t1,	$t1,	$v0
	
	li	$v0,	5		#syscall 5 (read int)
	syscall
	add	$t0,	$t0,	$v0	
	mul	$t1,	$t1,	$v0
	
	li	$v0,	5		#syscall 5 (read int)
	syscall
	add	$t0,	$t0,	$v0	
	mul	$t1,	$t1,	$v0
	
	li	$v0,	5		#syscall 5 (read int)
	syscall
	add	$t0,	$t0,	$v0	
	mul	$t1,	$t1,	$v0
	
	li	$v0,	1		#syscall 1 (print int)
	move	$a0,	$t0		#print sum
	syscall
	move	$a0,	$t1		#print product
	syscall
.data