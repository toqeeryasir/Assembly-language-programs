include irvine32.inc
.data
	star byte " * ",0
.code
	main proc
	mov eax, 1

	mov edx, offset star

		.while eax <=5
			mov ebx, 1
			.while ebx <= 5
				call writestring
				inc ebx
			.endw
			call crlf
			inc eax
		.endw
			
	exit
	main endp
	end main

