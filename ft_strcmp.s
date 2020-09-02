global _ft_strcmp

section .text

_ft_strcmp:
		xor		rax, rax
		mov		r10, 0
		xor		rbx, rbx

_compare:
		mov		bl, byte[rsi + r10]
		mov		al, byte[rdi + r10]
		cmp		byte[rdi + r10], 0
		je		_return
		cmp		byte[rsi + r10], 0
		je		_return
		cmp     rax, rbx
		jne		_return
		inc		r10
		jmp		_compare

_return:
		mov		al, byte[rdi + r10]
		mov		bl, byte[rsi + r10]
		sub		rax, rbx
		ret