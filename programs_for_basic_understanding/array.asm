include irvine32.inc

.model small

.data
myArray DWORD 10, 20, 30, 40, 50

.code
main PROC
	.while ecx > 16
    mov eax, myArray[ecx]   ; Access current element
    call WriteInt
    call Crlf
	dec ecx
	dec ecx
	dec ecx
	dec ecx
	.endw
    exit
main ENDP
END main