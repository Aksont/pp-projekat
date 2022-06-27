
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$8,%15
@main_body:
		MOV 	$3,-4(%14)
		MOV 	$4,-8(%14)
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET