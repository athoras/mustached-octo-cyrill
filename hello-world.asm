SECTION .data

;Sets my message in hex

MyMsg: db 048h,065h,06Ch,06Ch,06Fh,020h,057h,06Fh,072h,06Ch,064h,021h,0Ah

;Counts the lenght of my message to pass along with the system call

MyLen: equ $-MyMsg

SECTION .bss

SECTION .text

global _start


_start:
	mov eax,4	;Calling sys_write
	mov ebx,1	;Standard output
	mov ecx,MyMsg	;Passing the offset
	mov edx,MyLen	;Passing the length
	int 80H		;Making the syscall

	mov eax,1	;Calling Exit
	mov ebx,0	;Return 0
	int 80H		;Making the syscall
