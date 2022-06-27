
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$16,%15
@main_body:
		MOV 	$0,-4(%14)
		MOV 	$0,-8(%14)
		ADDS	dob,dob,%0
		MOV 	%0,-8(%14)
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET