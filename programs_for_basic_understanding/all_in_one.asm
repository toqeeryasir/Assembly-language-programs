include irvine32.inc
.data
    num1 dword ?
    num2 dword ?
    msg1 byte "Input first number = ",0
    msg2 byte "Input second number = ",0
    oper byte "Input operator (+, -, *, /) = ",0
    ans byte "Your answer is = ",0
    error byte "Division can't be performed because 1st number is less than 2nd number!",0

.code
main proc

    ; Input first number
    mov edx, offset msg1
    call writestring
    call readint
    mov num1, eax
	call crlf

    ; Input second number
    mov edx, offset msg2
    call writestring
    call readint
    mov num2, eax
	call crlf

    ; Input operator
    mov edx, offset oper
    call writestring
    call readchar
	call crlf

    mov bl, al

    mov eax, num1

    .if bl == '+'
        add eax, num2
        mov edx, offset ans
        call writestring
        call writeint
		call crlf

    .elseif bl == '-'
        sub eax, num2
        mov edx, offset ans
        call writestring
        call writeint
		call crlf

    .elseif bl == '*'
        imul eax, num2
        mov edx, offset ans
        call writestring
        call writeint
		call crlf

    .elseif bl == '/'
        .if eax < num2
            mov edx, offset error
            call writestring
			call crlf
        .else
            mov edx, 0
            div num2
            mov edx, offset ans
            call writestring
            call writeint
			call crlf
        .endif

    .endif

    exit
main endp
end main
