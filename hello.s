; https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-messageboxa

global _start

extern ExitProcess
extern MessageBoxA

section .rodata
	msgText:	db	"Hello, World!", 10, 0
	msgTitle:	db	"Hello!", 0

section .text
	_exit:
		mov rcx, 0 ; Exit Call
		call ExitProcess ; THE THING! D:

	_start:
		xor rcx, rcx ; hWnd (optional)
		mov rdx, msgText ; lpText
		mov r8, msgTitle ; lpCaption
		xor r9, r9 ; uType
		call MessageBoxA

		test rax, rax
		jnz _exit