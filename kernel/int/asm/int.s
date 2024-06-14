section .text
global irq_init

irq_init:
    ; Initialize IRQs

    ; Set up the Interrupt Descriptor Table (IDT)
    cli  ; Disable interrupts while setting up the IDT

    ; Define the IDT descriptor size (8 bytes per descriptor)
    xor eax, eax  ; Clear EAX
    mov ax, 8 * 256  ; 8 * 256 entries (256 for interrupts)

    lea ebx, [idt_ptr]
    lidt [ebx]

    mov ecx, irq_handlers
    mov edx, 16  ; Number of IRQs to initialize (IRQ 0-15)

irq_loop:
    mov dword [ecx], irq_handler_stub
    add ecx, 4  ; Move to the next entry in irq_handlers
    loop irq_loop

    sti  ; This enables interrupts after IDT is set up
    ret

section .data
    ; Define the Interrupt Descriptor Table (IDT)
    align 4
    idt_ptr:
        dw idt_end - idt_start - 1  ; Limit (size of IDT)
        dd idt_start  ; Base address of IDT

    idt_start:
        ; Define your IDT entries here (each entry is 8 bytes)
        ; Example:
        times 256 dd 0  ; Placeholder for 256 IDT entries

    idt_end:

    ; Define IRQ handler stubs (ISR addresses)
    irq_handler_stub:
        ; Example IRQ handler stub
        pushad  ; Save general-purpose registers
        ; Handle the IRQ here
        popad   ; Restore general-purpose registers
        iretd   ; Return from interrupt

    ; Array to hold addresses of IRQ handlers
    irq_handlers:
        times 16 dd 0  ; Placeholder for 16 IRQ handler addresses
