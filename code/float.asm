.text
main: 
	# get float value
	li	$v0,	6	# $f0 gets value
	syscall
	
	# copy $f0 to $f1
	mov.s	$f1,	$f0
	
	# get float value
	li	$v0,	6	# $f0 gets value
	syscall
	
	# copy $f0 to $f2
	mov.s	$f2,	$f0
	
	# add the two floats
	add.s	$f12,	$f1,	$f2
	
	li	$v0,	2	# print float
	#mov.s	$f0,	$f12
	syscall
	
	li	$v0,	10
	syscall
	
.data