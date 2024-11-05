include irvine32.inc
.data
	marks dword ?
	msg byte "Input marks = ",0
	msg1 byte "You got A grade",0
	msg2 byte "You got B grade",0
	msg3 byte "You got C grade",0
	msg4 byte "You got D grade",0
	msg5 byte "You are fail!",0
.code
	main proc
	
	mov edx, offset msg
	call writestring
	call readint
	call crlf
	mov marks, eax

	.if marks >= 80
		mov edx, offset msg1
		call writestring
		call crlf

	.elseif marks >= 60
		mov edx, offset msg2
		call writestring
		call crlf

	.elseif marks >= 40
		mov edx, offset msg3
		call writestring
		call crlf

	.elseif marks >= 20
		mov edx, offset msg4
		call writestring
		call crlf

	.else
		mov edx, offset msg5
		call writestring
		call crlf

	.endif
	exit
	main endp
	end main

