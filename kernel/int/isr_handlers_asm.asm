
global isr_handler_asm_0
extern isr_handler_c_0

isr_handler_asm_0:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_0            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_1
extern isr_handler_c_1

isr_handler_asm_1:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_1            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_2
extern isr_handler_c_2

isr_handler_asm_2:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_2            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_3
extern isr_handler_c_3

isr_handler_asm_3:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_3            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_4
extern isr_handler_c_4

isr_handler_asm_4:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_4            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_5
extern isr_handler_c_5

isr_handler_asm_5:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_5            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_6
extern isr_handler_c_6

isr_handler_asm_6:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_6            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_7
extern isr_handler_c_7

isr_handler_asm_7:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_7            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_8
extern isr_handler_c_8

isr_handler_asm_8:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_8            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_9
extern isr_handler_c_9

isr_handler_asm_9:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_9            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_10
extern isr_handler_c_10

isr_handler_asm_10:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_10            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_11
extern isr_handler_c_11

isr_handler_asm_11:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_11            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_12
extern isr_handler_c_12

isr_handler_asm_12:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_12            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_13
extern isr_handler_c_13

isr_handler_asm_13:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_13            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_14
extern isr_handler_c_14

isr_handler_asm_14:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_14            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_15
extern isr_handler_c_15

isr_handler_asm_15:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_15            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_16
extern isr_handler_c_16

isr_handler_asm_16:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_16            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_17
extern isr_handler_c_17

isr_handler_asm_17:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_17            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_18
extern isr_handler_c_18

isr_handler_asm_18:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_18            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_19
extern isr_handler_c_19

isr_handler_asm_19:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_19            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_20
extern isr_handler_c_20

isr_handler_asm_20:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_20            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_21
extern isr_handler_c_21

isr_handler_asm_21:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_21            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_22
extern isr_handler_c_22

isr_handler_asm_22:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_22            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_23
extern isr_handler_c_23

isr_handler_asm_23:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_23            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_24
extern isr_handler_c_24

isr_handler_asm_24:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_24            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_25
extern isr_handler_c_25

isr_handler_asm_25:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_25            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_26
extern isr_handler_c_26

isr_handler_asm_26:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_26            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_27
extern isr_handler_c_27

isr_handler_asm_27:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_27            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_28
extern isr_handler_c_28

isr_handler_asm_28:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_28            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_29
extern isr_handler_c_29

isr_handler_asm_29:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_29            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_30
extern isr_handler_c_30

isr_handler_asm_30:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_30            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_31
extern isr_handler_c_31

isr_handler_asm_31:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_31            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_32
extern isr_handler_c_32

isr_handler_asm_32:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_32            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_33
extern isr_handler_c_33

isr_handler_asm_33:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_33            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_34
extern isr_handler_c_34

isr_handler_asm_34:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_34            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_35
extern isr_handler_c_35

isr_handler_asm_35:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_35            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_36
extern isr_handler_c_36

isr_handler_asm_36:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_36            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_37
extern isr_handler_c_37

isr_handler_asm_37:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_37            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_38
extern isr_handler_c_38

isr_handler_asm_38:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_38            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_39
extern isr_handler_c_39

isr_handler_asm_39:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_39            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_40
extern isr_handler_c_40

isr_handler_asm_40:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_40            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_41
extern isr_handler_c_41

isr_handler_asm_41:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_41            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_42
extern isr_handler_c_42

isr_handler_asm_42:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_42            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_43
extern isr_handler_c_43

isr_handler_asm_43:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_43            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_44
extern isr_handler_c_44

isr_handler_asm_44:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_44            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_45
extern isr_handler_c_45

isr_handler_asm_45:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_45            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_46
extern isr_handler_c_46

isr_handler_asm_46:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_46            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_47
extern isr_handler_c_47

isr_handler_asm_47:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_47            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_48
extern isr_handler_c_48

isr_handler_asm_48:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_48            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_49
extern isr_handler_c_49

isr_handler_asm_49:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_49            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_50
extern isr_handler_c_50

isr_handler_asm_50:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_50            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_51
extern isr_handler_c_51

isr_handler_asm_51:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_51            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_52
extern isr_handler_c_52

isr_handler_asm_52:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_52            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_53
extern isr_handler_c_53

isr_handler_asm_53:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_53            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_54
extern isr_handler_c_54

isr_handler_asm_54:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_54            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_55
extern isr_handler_c_55

isr_handler_asm_55:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_55            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_56
extern isr_handler_c_56

isr_handler_asm_56:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_56            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_57
extern isr_handler_c_57

isr_handler_asm_57:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_57            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_58
extern isr_handler_c_58

isr_handler_asm_58:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_58            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_59
extern isr_handler_c_59

isr_handler_asm_59:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_59            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_60
extern isr_handler_c_60

isr_handler_asm_60:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_60            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_61
extern isr_handler_c_61

isr_handler_asm_61:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_61            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_62
extern isr_handler_c_62

isr_handler_asm_62:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_62            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_63
extern isr_handler_c_63

isr_handler_asm_63:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_63            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_64
extern isr_handler_c_64

isr_handler_asm_64:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_64            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_65
extern isr_handler_c_65

isr_handler_asm_65:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_65            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_66
extern isr_handler_c_66

isr_handler_asm_66:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_66            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_67
extern isr_handler_c_67

isr_handler_asm_67:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_67            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_68
extern isr_handler_c_68

isr_handler_asm_68:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_68            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_69
extern isr_handler_c_69

isr_handler_asm_69:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_69            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_70
extern isr_handler_c_70

isr_handler_asm_70:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_70            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_71
extern isr_handler_c_71

isr_handler_asm_71:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_71            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_72
extern isr_handler_c_72

isr_handler_asm_72:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_72            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_73
extern isr_handler_c_73

isr_handler_asm_73:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_73            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_74
extern isr_handler_c_74

isr_handler_asm_74:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_74            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_75
extern isr_handler_c_75

isr_handler_asm_75:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_75            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_76
extern isr_handler_c_76

isr_handler_asm_76:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_76            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_77
extern isr_handler_c_77

isr_handler_asm_77:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_77            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_78
extern isr_handler_c_78

isr_handler_asm_78:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_78            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_79
extern isr_handler_c_79

isr_handler_asm_79:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_79            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_80
extern isr_handler_c_80

isr_handler_asm_80:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_80            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_81
extern isr_handler_c_81

isr_handler_asm_81:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_81            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_82
extern isr_handler_c_82

isr_handler_asm_82:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_82            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_83
extern isr_handler_c_83

isr_handler_asm_83:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_83            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_84
extern isr_handler_c_84

isr_handler_asm_84:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_84            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_85
extern isr_handler_c_85

isr_handler_asm_85:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_85            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_86
extern isr_handler_c_86

isr_handler_asm_86:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_86            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_87
extern isr_handler_c_87

isr_handler_asm_87:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_87            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_88
extern isr_handler_c_88

isr_handler_asm_88:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_88            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_89
extern isr_handler_c_89

isr_handler_asm_89:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_89            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_90
extern isr_handler_c_90

isr_handler_asm_90:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_90            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_91
extern isr_handler_c_91

isr_handler_asm_91:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_91            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_92
extern isr_handler_c_92

isr_handler_asm_92:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_92            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_93
extern isr_handler_c_93

isr_handler_asm_93:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_93            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_94
extern isr_handler_c_94

isr_handler_asm_94:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_94            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_95
extern isr_handler_c_95

isr_handler_asm_95:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_95            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_96
extern isr_handler_c_96

isr_handler_asm_96:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_96            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_97
extern isr_handler_c_97

isr_handler_asm_97:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_97            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_98
extern isr_handler_c_98

isr_handler_asm_98:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_98            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_99
extern isr_handler_c_99

isr_handler_asm_99:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_99            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_100
extern isr_handler_c_100

isr_handler_asm_100:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_100            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_101
extern isr_handler_c_101

isr_handler_asm_101:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_101            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_102
extern isr_handler_c_102

isr_handler_asm_102:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_102            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_103
extern isr_handler_c_103

isr_handler_asm_103:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_103            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_104
extern isr_handler_c_104

isr_handler_asm_104:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_104            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_105
extern isr_handler_c_105

isr_handler_asm_105:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_105            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_106
extern isr_handler_c_106

isr_handler_asm_106:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_106            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_107
extern isr_handler_c_107

isr_handler_asm_107:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_107            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_108
extern isr_handler_c_108

isr_handler_asm_108:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_108            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_109
extern isr_handler_c_109

isr_handler_asm_109:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_109            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_110
extern isr_handler_c_110

isr_handler_asm_110:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_110            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_111
extern isr_handler_c_111

isr_handler_asm_111:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_111            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_112
extern isr_handler_c_112

isr_handler_asm_112:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_112            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_113
extern isr_handler_c_113

isr_handler_asm_113:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_113            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_114
extern isr_handler_c_114

isr_handler_asm_114:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_114            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_115
extern isr_handler_c_115

isr_handler_asm_115:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_115            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_116
extern isr_handler_c_116

isr_handler_asm_116:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_116            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_117
extern isr_handler_c_117

isr_handler_asm_117:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_117            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_118
extern isr_handler_c_118

isr_handler_asm_118:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_118            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_119
extern isr_handler_c_119

isr_handler_asm_119:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_119            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_120
extern isr_handler_c_120

isr_handler_asm_120:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_120            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_121
extern isr_handler_c_121

isr_handler_asm_121:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_121            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_122
extern isr_handler_c_122

isr_handler_asm_122:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_122            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_123
extern isr_handler_c_123

isr_handler_asm_123:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_123            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_124
extern isr_handler_c_124

isr_handler_asm_124:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_124            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_125
extern isr_handler_c_125

isr_handler_asm_125:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_125            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_126
extern isr_handler_c_126

isr_handler_asm_126:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_126            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_127
extern isr_handler_c_127

isr_handler_asm_127:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_127            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_128
extern isr_handler_c_128

isr_handler_asm_128:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_128            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_129
extern isr_handler_c_129

isr_handler_asm_129:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_129            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_130
extern isr_handler_c_130

isr_handler_asm_130:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_130            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_131
extern isr_handler_c_131

isr_handler_asm_131:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_131            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_132
extern isr_handler_c_132

isr_handler_asm_132:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_132            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_133
extern isr_handler_c_133

isr_handler_asm_133:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_133            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_134
extern isr_handler_c_134

isr_handler_asm_134:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_134            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_135
extern isr_handler_c_135

isr_handler_asm_135:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_135            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_136
extern isr_handler_c_136

isr_handler_asm_136:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_136            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_137
extern isr_handler_c_137

isr_handler_asm_137:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_137            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_138
extern isr_handler_c_138

isr_handler_asm_138:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_138            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_139
extern isr_handler_c_139

isr_handler_asm_139:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_139            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_140
extern isr_handler_c_140

isr_handler_asm_140:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_140            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_141
extern isr_handler_c_141

isr_handler_asm_141:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_141            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_142
extern isr_handler_c_142

isr_handler_asm_142:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_142            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_143
extern isr_handler_c_143

isr_handler_asm_143:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_143            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_144
extern isr_handler_c_144

isr_handler_asm_144:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_144            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_145
extern isr_handler_c_145

isr_handler_asm_145:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_145            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_146
extern isr_handler_c_146

isr_handler_asm_146:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_146            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_147
extern isr_handler_c_147

isr_handler_asm_147:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_147            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_148
extern isr_handler_c_148

isr_handler_asm_148:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_148            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_149
extern isr_handler_c_149

isr_handler_asm_149:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_149            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_150
extern isr_handler_c_150

isr_handler_asm_150:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_150            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_151
extern isr_handler_c_151

isr_handler_asm_151:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_151            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_152
extern isr_handler_c_152

isr_handler_asm_152:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_152            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_153
extern isr_handler_c_153

isr_handler_asm_153:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_153            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_154
extern isr_handler_c_154

isr_handler_asm_154:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_154            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_155
extern isr_handler_c_155

isr_handler_asm_155:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_155            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_156
extern isr_handler_c_156

isr_handler_asm_156:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_156            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_157
extern isr_handler_c_157

isr_handler_asm_157:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_157            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_158
extern isr_handler_c_158

isr_handler_asm_158:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_158            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_159
extern isr_handler_c_159

isr_handler_asm_159:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_159            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_160
extern isr_handler_c_160

isr_handler_asm_160:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_160            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_161
extern isr_handler_c_161

isr_handler_asm_161:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_161            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_162
extern isr_handler_c_162

isr_handler_asm_162:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_162            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_163
extern isr_handler_c_163

isr_handler_asm_163:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_163            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_164
extern isr_handler_c_164

isr_handler_asm_164:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_164            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_165
extern isr_handler_c_165

isr_handler_asm_165:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_165            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_166
extern isr_handler_c_166

isr_handler_asm_166:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_166            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_167
extern isr_handler_c_167

isr_handler_asm_167:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_167            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_168
extern isr_handler_c_168

isr_handler_asm_168:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_168            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_169
extern isr_handler_c_169

isr_handler_asm_169:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_169            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_170
extern isr_handler_c_170

isr_handler_asm_170:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_170            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_171
extern isr_handler_c_171

isr_handler_asm_171:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_171            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_172
extern isr_handler_c_172

isr_handler_asm_172:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_172            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_173
extern isr_handler_c_173

isr_handler_asm_173:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_173            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_174
extern isr_handler_c_174

isr_handler_asm_174:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_174            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_175
extern isr_handler_c_175

isr_handler_asm_175:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_175            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_176
extern isr_handler_c_176

isr_handler_asm_176:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_176            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_177
extern isr_handler_c_177

isr_handler_asm_177:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_177            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_178
extern isr_handler_c_178

isr_handler_asm_178:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_178            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_179
extern isr_handler_c_179

isr_handler_asm_179:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_179            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_180
extern isr_handler_c_180

isr_handler_asm_180:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_180            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_181
extern isr_handler_c_181

isr_handler_asm_181:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_181            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_182
extern isr_handler_c_182

isr_handler_asm_182:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_182            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_183
extern isr_handler_c_183

isr_handler_asm_183:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_183            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_184
extern isr_handler_c_184

isr_handler_asm_184:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_184            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_185
extern isr_handler_c_185

isr_handler_asm_185:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_185            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_186
extern isr_handler_c_186

isr_handler_asm_186:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_186            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_187
extern isr_handler_c_187

isr_handler_asm_187:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_187            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_188
extern isr_handler_c_188

isr_handler_asm_188:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_188            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_189
extern isr_handler_c_189

isr_handler_asm_189:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_189            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_190
extern isr_handler_c_190

isr_handler_asm_190:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_190            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_191
extern isr_handler_c_191

isr_handler_asm_191:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_191            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_192
extern isr_handler_c_192

isr_handler_asm_192:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_192            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_193
extern isr_handler_c_193

isr_handler_asm_193:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_193            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_194
extern isr_handler_c_194

isr_handler_asm_194:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_194            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_195
extern isr_handler_c_195

isr_handler_asm_195:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_195            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_196
extern isr_handler_c_196

isr_handler_asm_196:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_196            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_197
extern isr_handler_c_197

isr_handler_asm_197:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_197            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_198
extern isr_handler_c_198

isr_handler_asm_198:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_198            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_199
extern isr_handler_c_199

isr_handler_asm_199:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_199            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_200
extern isr_handler_c_200

isr_handler_asm_200:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_200            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_201
extern isr_handler_c_201

isr_handler_asm_201:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_201            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_202
extern isr_handler_c_202

isr_handler_asm_202:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_202            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_203
extern isr_handler_c_203

isr_handler_asm_203:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_203            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_204
extern isr_handler_c_204

isr_handler_asm_204:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_204            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_205
extern isr_handler_c_205

isr_handler_asm_205:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_205            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_206
extern isr_handler_c_206

isr_handler_asm_206:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_206            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_207
extern isr_handler_c_207

isr_handler_asm_207:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_207            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_208
extern isr_handler_c_208

isr_handler_asm_208:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_208            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_209
extern isr_handler_c_209

isr_handler_asm_209:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_209            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_210
extern isr_handler_c_210

isr_handler_asm_210:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_210            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_211
extern isr_handler_c_211

isr_handler_asm_211:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_211            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_212
extern isr_handler_c_212

isr_handler_asm_212:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_212            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_213
extern isr_handler_c_213

isr_handler_asm_213:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_213            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_214
extern isr_handler_c_214

isr_handler_asm_214:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_214            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_215
extern isr_handler_c_215

isr_handler_asm_215:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_215            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_216
extern isr_handler_c_216

isr_handler_asm_216:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_216            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_217
extern isr_handler_c_217

isr_handler_asm_217:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_217            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_218
extern isr_handler_c_218

isr_handler_asm_218:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_218            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_219
extern isr_handler_c_219

isr_handler_asm_219:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_219            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_220
extern isr_handler_c_220

isr_handler_asm_220:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_220            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_221
extern isr_handler_c_221

isr_handler_asm_221:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_221            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_222
extern isr_handler_c_222

isr_handler_asm_222:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_222            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_223
extern isr_handler_c_223

isr_handler_asm_223:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_223            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_224
extern isr_handler_c_224

isr_handler_asm_224:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_224            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_225
extern isr_handler_c_225

isr_handler_asm_225:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_225            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_226
extern isr_handler_c_226

isr_handler_asm_226:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_226            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_227
extern isr_handler_c_227

isr_handler_asm_227:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_227            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_228
extern isr_handler_c_228

isr_handler_asm_228:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_228            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_229
extern isr_handler_c_229

isr_handler_asm_229:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_229            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_230
extern isr_handler_c_230

isr_handler_asm_230:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_230            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_231
extern isr_handler_c_231

isr_handler_asm_231:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_231            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_232
extern isr_handler_c_232

isr_handler_asm_232:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_232            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_233
extern isr_handler_c_233

isr_handler_asm_233:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_233            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_234
extern isr_handler_c_234

isr_handler_asm_234:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_234            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_235
extern isr_handler_c_235

isr_handler_asm_235:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_235            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_236
extern isr_handler_c_236

isr_handler_asm_236:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_236            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_237
extern isr_handler_c_237

isr_handler_asm_237:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_237            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_238
extern isr_handler_c_238

isr_handler_asm_238:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_238            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_239
extern isr_handler_c_239

isr_handler_asm_239:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_239            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_240
extern isr_handler_c_240

isr_handler_asm_240:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_240            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_241
extern isr_handler_c_241

isr_handler_asm_241:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_241            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_242
extern isr_handler_c_242

isr_handler_asm_242:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_242            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_243
extern isr_handler_c_243

isr_handler_asm_243:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_243            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_244
extern isr_handler_c_244

isr_handler_asm_244:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_244            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_245
extern isr_handler_c_245

isr_handler_asm_245:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_245            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_246
extern isr_handler_c_246

isr_handler_asm_246:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_246            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_247
extern isr_handler_c_247

isr_handler_asm_247:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_247            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_248
extern isr_handler_c_248

isr_handler_asm_248:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_248            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_249
extern isr_handler_c_249

isr_handler_asm_249:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_249            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_250
extern isr_handler_c_250

isr_handler_asm_250:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_250            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_251
extern isr_handler_c_251

isr_handler_asm_251:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_251            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_252
extern isr_handler_c_252

isr_handler_asm_252:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_252            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_253
extern isr_handler_c_253

isr_handler_asm_253:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_253            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_254
extern isr_handler_c_254

isr_handler_asm_254:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_254            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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


global isr_handler_asm_255
extern isr_handler_c_255

isr_handler_asm_255:
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

    mov rdi, rsp                  ; Pass the pointer to the stack frame to the C handler
    call isr_handler_c_255            ; Call the C interrupt handler

    pop r15                       ; Restore registers in reverse order
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

