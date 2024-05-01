; Source code goes over the 4 different flags used in assembly, carry, zero, overflow, and sign flag
; Each section will set or clear each of the flags individually. 


.DATA
MyData DWORD 55

.CODE
main PROC

	mov rax, 0

;	Carry Flag

	mov al, 255
	add al, 1		; overflow, carry flag set

	mov al, 20
	add al, 1		; carry flag not set

	stc				; set the carry flag
	clc				; clear carry flag


;	Zero flag

	mov rax, 5
	sub rax, 5		;zero flag is set

	mov rax, 2
	dec rax			;zero flag clear


;	Sign Flag

	mov rax, 2
	sub rax, 3		; sign flag set

	mov rax, 5
	sub rax, 3		; sign flag cleared


;	Overflow flag

	mov al, 127
	add al, 1		; overflow flag set

	mov al, -127
	sub al, 1		;overflow flag cleared
	sub al, 1		;overflow flag set

	mov rax, 0
	ret
main ENDP

END
