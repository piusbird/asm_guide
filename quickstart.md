---
title: Quickstart
date: 2024-08-04 08:09
---

# know what you're doing?

If you've coded in ASM before all you likely need are these hints

```asm
; Just a hello world with nasm syntax as opposed to MASM

SYS_WRITE equ 1
SYS_EXIT equ 60
stdio equ 1

global _start ; all program begin exec at _start or main
; _start is ok if you don't intend to call functions from 
; libraries otherwise go with main

section .data
	goodbye: db "Goodbye cruel world!", 0x0a, 0

section .text
_start:
	mov rax, SYS_WRITE ; in rax goes this syscall by number
	; follow fastcall as defined in syscall manpage
	mov rdi, stdio ; int fd at startup you have file 0-2 open
	mov rsi, goodbye ; char *buf
	mov rdx, 22 ; int count always account for NULL terminator
	syscall ; this instruction on amd64, not int 0x80
	mov r10, rax ; move return value into a spare register
	mov rax, SYS_EXIT 
normal: 
	xor rdi, rdi ; exit int status of 0 all is well
	cmp r10, 22
	jne error
	syscall
error:
	mov rdi, r10 ; exit status non zero for how much we did write
	syscall
	 

```

Assembler is NASM invoked as `nasm -felf64 -g -o quickstart.o quickstart.asm`
Linker is invoked with `ld -o quick quickstart.o`