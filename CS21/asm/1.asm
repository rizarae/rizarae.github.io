# LAB 1
# lab lab

.text
main:	
	li	$t1,	9		#load 9 to t1
	li	$t2,	38		#load 38 to t2 (displays 0x00000026)
	li	$t3,	-421		#load -421 to t3 (displays -421 in 2's complement)
	li	$t4,	0x00001985	#loads 0x00001985 to t4
	li	$t5,	0xABCD0000	#loads 0xabcd0000 to t5
	
	li	$v0, 	10		#syscall 10 (exit)
	syscall
.data