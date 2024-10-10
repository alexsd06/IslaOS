typedef struct {
    uint64_t r15, r14, r13, r12, r11, r10, r9, r8;  // General-purpose registers
    uint64_t rbp, rdi, rsi, rdx, rcx, rbx, rax;
    uint64_t int_no, err_code;                      // Interrupt number and error code (optional)
    uint64_t rip, cs, rflags, rsp, ss;              // Pushed automatically by CPU
} isr_stack_frame;

void exception_handler(void);
void isr_handler(isr_stack_frame* regs);