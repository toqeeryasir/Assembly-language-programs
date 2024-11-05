include irvine32.inc
.data
	star byte "*",0
.code
	main proc
	mov eax, 5

	mov edx, offset star

		.while eax >=1
			mov ebx, 1
			.while ebx <= eax
				call writestring
				inc ebx
			.endw
			call crlf
			dec eax
		.endw
			
	exit
	main endp
	end main

