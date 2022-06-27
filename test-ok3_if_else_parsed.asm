
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$8,%15
@main_body:
		MOV 	$5,-4(%14)
		MOV 	$0,-8(%14)
@if0:
		CMPS 	-4(%14),$0
		JLES	@false0
@true0:
		MOV 	$3,-8(%14)
		JMP 	@exit0
@false0:
		MOV 	$5,-8(%14)
@exit0:
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET