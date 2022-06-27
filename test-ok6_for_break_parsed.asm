
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$4,%15
@main_body:
		MOV 	$0,-4(%14)
		CMPS 	-4(%14),$8
@if0:
		CMPS 	-4(%14),$5
		JLES	@false0
@true0:
		MOV 	$3,-4(%14)
		JMP 	@exit0
@false0:
		MOV 	$5,-4(%14)
@exit0:
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET