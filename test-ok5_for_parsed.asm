
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$4,%15
@main_body:
		MOV 	$0,-4(%14)
		CMPS 	-4(%14),$8
		ADDS	-4(%14),-4(%14),%0
		MOV 	%0,-4(%14)
		CMPS 	-4(%14),$8
		ADDS	-4(%14),-4(%14),%0
		MOV 	%0,-4(%14)
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET