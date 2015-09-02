# LAB 3
# lab lab

.data
input:
	.asciiz		"AAAAAA"		#6-letter string
newline:
	.asciiz		"\n"

.text
main:
	li	$v0,	8			#syscall 8 (read string)
	la	$a0,	input
	li	$a1,	7
	syscall
	
	lbu	$t0,	1($a0)			#load second letter
	addiu	$t0,	$t0,	32		#add 32 to second letter (change to lowercase)
	sb	$t0,	1($a0)			#save changes
	
	lbu	$t0,	3($a0)			#load fourth letter
	addiu	$t0,	$t0,	32		#add 32 to fourth letter (change to lowercase)
	sb	$t0,	3($a0)			#save changes
	
	lbu	$t0,	5($a0)			#load last letter
	addiu	$t0,	$t0,	32		#add 32 to last letter (change to lowercase)
	sb	$t0,	5($a0)
	
	li	$v0,	4			#syscall 5 (print string)
	la	$a0,	newline
	syscall
	la	$a0,	input
	syscall