global _ft_strcpy

section .text

_ft_strcpy:
		xor		rax, rax
		mov		r10, 0

_copy:
		cmp     byte[rsi + r10], 0
		je		_exit
		mov		r11b, byte[rsi + r10]
		mov		byte[rdi + r10], r11b
		inc		r10
		jmp		_copy

_exit:
		mov		rax, rdi
		ret