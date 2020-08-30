global _ft_strlen

section .text

ft_strlen:
xor     rax, rax                      ; rax = 0

length:
cmp     [rdi + rax], 0              ; сравнение элемента строки rdi[rax] с концом строки (0)
je      exit
inc     rax
jmp     length

exit:
ret