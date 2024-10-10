section .data
    gdtr:
        dw 0
        dq 0

section .text
    global setGdt
    global reloadSegments

setGdt:
    mov     word [rel gdtr], di
    mov     [rel gdtr+2], rsi
    lgdt    [rel gdtr]
    ret

reloadSegments:
   ; Reload CS register:
   PUSH 0x08                 ; Push code segment to stack, 0x08 is a stand-in for your code segment
   LEA RAX, [rel .reload_CS] ; Load address of .reload_CS into RAX
   PUSH RAX                  ; Push this value to the stack
   RETFQ                     ; Perform a far return, RETFQ or LRETQ depending on syntax
.reload_CS:
   ; Reload data segment registers
   MOV   AX, 0x10 ; 0x10 is a stand-in for your data segment
   MOV   DS, AX
   MOV   ES, AX
   MOV   FS, AX
   MOV   GS, AX
   MOV   SS, AX
   RET