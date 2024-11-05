include irvine32.inc
.data
	num dword ?
	msg byte "Input number for factorial = ",0
	ans byte "Factorial of the given number is = ",0
.code
	main proc
	mov edx, offset msg
	call writestring
	call readint
	mov ebx, eax

	.while ebx != 1
		dec ebx
		imul eax, ebx
	.endw
	
	mov edx, offset ans
	call writestring
	call writedec
	call crlf

	exit
	main endp
	end main