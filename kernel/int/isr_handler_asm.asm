global isr_handler_asm
extern isr_handler

isr_handler_asm:
    cli                         ; Disable interrupts (optional, but ensures no further interrupts)
    push rax                    ; Save general-purpose registers
    push rbx
    push rcx
    push rdx
    push rsi
    push rdi
    push rbp
    push r8
    push r9
    push r10
    push r11
    push r12
    push r13
    push r14
    push r15

    mov rdi, rsp                ; Pass the pointer to the stack frame to the C handler
    call isr_handler            ; Call the C interrupt handler

    pop r15                     ; Restore registers in reverse order
    pop r14
    pop r13
    pop r12
    pop r11
    pop r10
    pop r9
    pop r8
    pop rbp
    pop rdi
    pop rsi
    pop rdx
    pop rcx
    pop rbx
    pop rax

    sti                         ; Re-enable interrupts
    iretq                       ; Return from interrupt, restore RIP, CS, and flags