section .data
    ; Define GDT with null descriptor, code segment descriptor, and data segment descriptor
    gdt:
        dq 0x0000000000000000  ; Null descriptor
        dq 0x00cf9a000000ffff  ; Code segment descriptor (base=0, limit=4GB, code, read/exe, accessed)
        dq 0x00cf92000000ffff  ; Data segment descriptor (base=0, limit=4GB, data, read/write, accessed)

    gdt_descriptor:
        dw gdt_end - gdt - 1  ; Limit (size of GDT - 1)
        dd gdt                ; Base address of GDT

    gdt_end:

section .text
global load_gdt
load_gdt:
    cli
    lgdt [gdt_descriptor]     ; Load the GDT descriptor into GDTR
    ret
