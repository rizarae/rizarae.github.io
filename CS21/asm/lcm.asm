# Lab 4
# LCM
# lab lab

.text
main:
	li	$v0,	5
	syscall				# first int (a)
	move	$t0,	$v0
	li	$v0,	5
	syscall				# second int (b)
	move	$t1,	$v0
	
	move	$s0,	$t0
	move	$s1,	$t1
	lcm:
		beq	$t0,	$t1,	end
		bgt	$t0,	$t1,	add_to_t1
		add	$t0,	$t0,	$s0
		b	lcm
		add_to_t1:
			add	$t1,	$t1,	$s1
			b	lcm
	end:
	
	li	$v0,	1
	move	$a0,	$t0
	syscall
	
	li	$v0,	10
	syscall