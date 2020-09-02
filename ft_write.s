global _ft_write

extern ___error
section .text

_error:
		push		rax
		call		___error
		pop			r10
		mov			[rax], r10
		mov			rax, -1
		ret

_ft_write:
		xor			rax, rax
		mov			rax, 0x02000004
		syscall
		jc			_error
		ret
