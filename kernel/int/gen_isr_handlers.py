import os
import shutil

template_isr_handler_asm="""
global isr_handler_asm_~
extern isr_handler_c_~

isr_handler_asm_~:
    cli                         ; Disable interrupts (optional, but ensures no further interrupts)
    push rax                    ; Save general-purpose registers
    push rbx
    push rcx
    push rdx
    push rsi
    push rdi
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
    call isr_handler_c_~            ; Call the C interrupt handler

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
"""

#call isr_handler_c_~

template_isr_handler_c="""
#include "kernel/int/isr.h"
void isr_handler_c_~() {isr_handler(~);}
"""

def make_handlers(dir):
    py_path = os.path.dirname(os.path.realpath(__file__))
    file_path=os.path.join(py_path, f'isr_handlers_{dir}.{dir}')
    to_append=''

    if dir=='asm':
        template=template_isr_handler_asm
    elif dir=='c':
        template=template_isr_handler_c
    
    for i in range(0, 256):
        text = template.replace('~', str(i))
        to_append+=text+'\n'
    with open(file_path, 'w') as f:
        f.write(to_append)

make_handlers('asm')
make_handlers('c')

def make_header_file():
    to_append=""
    py_path = os.path.dirname(os.path.realpath(__file__))
    for i in range(0, 256):
        to_append+='void isr_handler_c_~();'.replace('~', str(i))+'\n'
    header_path=py_path
    file_path = os.path.join(header_path, 'isr_handlers.h')
    with open (file_path, 'w') as f:
        f.write(to_append)

make_header_file()

main_handlers="""
#include "isr_handlers.h"
#include "idt.h"

void fill_idt() {
"""
def make_main_handlers_file():
    global main_handlers
    for i in range(0, 256):
        main_handlers+='idt_set_descriptor(~, isr_handler_c_~, 0x8E);'.replace('~', str(i))+'\n'
    main_handlers+='}'
    py_path = os.path.dirname(os.path.realpath(__file__))
    file_path=os.path.join(py_path, 'fill_idt.c')
    with open (file_path, 'w') as f:
        f.write(main_handlers)
    file_path=os.path.join(py_path, 'fill_idt.h')
    with open(file_path, 'w') as f:
        f.write('void fill_idt();')

make_main_handlers_file()