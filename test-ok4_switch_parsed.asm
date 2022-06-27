
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$8,%15
@main_body:
		MOV 	$1,-4(%14)
		MOV 	$1,-8(%14)
		MOV 	$5,-8(%14)
		MOV 	$10,-8(%14)
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET