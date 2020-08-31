global _ft_strlen

section .text

_ft_strlen:
xor     rax, rax                      ; rax = 0

_length:
cmp     byte[rdi + rax], 0              ; сравнение элемента строки rdi[rax] с концом строки (0)
je      _exit
inc     rax
jmp     _length

_exit:
ret