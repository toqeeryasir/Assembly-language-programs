include irvine32.inc
.data
	num1 dword ?
	msg1 byte "Input first number = ",0
	msg2 byte "Input second number = ",0
	ans byte "Result of given numbers is = ",0
.code
	main proc
	mov edx, offset msg1
	call writestring
	call readint
	mov num1, eax

	mov edx, offset msg2
	call writestring
	call readint
	mov ebx, eax
	
	mov eax, num1
	sub eax, ebx
	
	mov edx, offset ans
	call writestring
	call writedec
	call crlf

	exit
	main endp
	end main

