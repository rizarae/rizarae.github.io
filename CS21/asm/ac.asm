# Lab 4
# Alternating Cases
# lab lab

.text
	li	$v0,	5	#get string length
	syscall
	add	$v0,	$v0,	1
	move	$a1,	$v0
	la	$a0,	input	#load input address from data section
	li	$v0,	8	#get string
	syscall
	
	add	$t0,	$a0,	$a1	#address of last letter in the string
	loop:
		bge	$a0,	$t0,	end
		lbu	$t1,	1($a0)			#load letter
		addiu	$t1,	$t1,	32		#add 32 to letter (change to lowercase)
		sb	$t1,	1($a0)
		addi	$a0,	$a0,	2
		b	loop
	end:
	li	$v0,	4			#syscall 5 (print string)
	la	$a0,	newline
	syscall
	la	$a0,	input
	syscall
	li	$v0,	10
	syscall
.data
newline:
	.asciiz		"\n"
input: