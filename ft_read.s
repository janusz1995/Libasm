global _ft_read

extern ___error
section .text

_error:
		push		rax
		call		___error
		pop			r10
		mov			[rax], r10
		mov			rax, -1
		ret

_ft_read:
		xor			rax, rax
		mov			rax, 0x02000003
		syscall
		jc			_error
		ret
