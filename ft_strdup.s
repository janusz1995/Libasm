global _ft_strdup

extern _ft_strlen
extern _ft_strcpy
extern _malloc

section .text

_exit_null:
		ret

_ft_strdup:
		xor			rax, rax
		push	rdi
		call	_ft_strlen
		mov		rdi, rax
		call	_malloc
		cmp		rax, 0
		je		_exit_null
		mov		rdi, rax
		pop		rsi
		call	_ft_strcpy
		ret