include irvine32.inc
.data
	start dword ?
	end1 dword ?
	table dword ?
	msg1 byte "Input table number = ",0
	msg2 byte "Input table starting value = ",0
	msg3 byte "Input table ending value = ",0
	star byte " * ",0
	eql byte " = ",0
.code
	main proc

	mov edx, offset msg1
	call writestring
	call readint
	mov table, eax

	mov edx, offset msg2
	call writestring
	call readint
	mov start, eax

	mov edx, offset msg3
	call writestring
	call readint
	mov end1, eax

	mov ecx, end1

	.while start <= ecx
		
		mov eax, table
		call writedec
		
		mov edx, offset star
		call writestring

		mov eax, start
		call writedec

		imul eax, table

		mov edx, offset eql
		call writestring

		call writedec
		call crlf

		inc start

	.endw
		
	exit
	main endp
	end main

