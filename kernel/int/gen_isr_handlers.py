import os
import shutil

template_isr_handler_asm="""
global isr_handler_asm_~
extern isr_handler_c_~

isr_handler_asm_~:
    call isr_handler_c_~            ; Call the C interrupt handler
    iretq                       ; Return from interrupt, restore RIP, CS, and flags
"""

#call isr_handler_c_~

template_isr_handler_c="""
#include "kernel/int/isr.h"
void isr_handler_c_~() {isr_handler(~); }
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
        main_handlers+='extern void isr_handler_asm_~();'.replace('~', str(i))+'\n'
        main_handlers+='idt_set_descriptor(~, isr_handler_asm_~, 0x8E);'.replace('~', str(i))+'\n'
    main_handlers+='}'
    py_path = os.path.dirname(os.path.realpath(__file__))
    file_path=os.path.join(py_path, 'fill_idt.c')
    with open (file_path, 'w') as f:
        f.write(main_handlers)
    file_path=os.path.join(py_path, 'fill_idt.h')
    with open(file_path, 'w') as f:
        f.write('void fill_idt();')

make_main_handlers_file()