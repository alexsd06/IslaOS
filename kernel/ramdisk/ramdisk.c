#include "ramdisk.h"
#include "kernel/std/string.h"
#include "kernel/fonts/font_lib.h"
extern tar_header _binary_ramdisk_tar_start;
unsigned int getsize(const char *in)
{
 
    unsigned int size = 0;
    unsigned int j;
    unsigned int count = 1;
 
    for (j = 11; j > 0; j--, count *= 8)
        size += ((in[j - 1] - '0') * count);
 
    return size;
 
}
tar_header *headers[1024]; //This suports 1024 files. Adjust as needed...
int ramdisk_cnt=0;
unsigned int parse_ramdisk()
{
    tar_header *ramdisk=&_binary_ramdisk_tar_start;
    unsigned int address = (int) ramdisk;
    unsigned int i;
    for (i = 0; ; i++)
    {
        tar_header *header = (tar_header *)address;
        if (header->filename[i] == '\0')
            break;
        unsigned int size = getsize(header->size); 
        headers[i] = header; 
        address += ((size / 512) + 1) * 512;
        if (size % 512)
            address += 512;
        ramdisk_cnt++;
    }
    return i;
}
int get_file_size (char *filename)
{
    for (int i=0; i<ramdisk_cnt; i++) {
        if (strcmp(headers[i]->filename, filename)==0) {
            unsigned int size = getsize(headers[i]->size); 
            return size;
        }
    }
    return 0;
}
int get_pointer_to_file_header(char *filename)
{
    for (int i=0; i<ramdisk_cnt; i++) {
        if (strcmp(headers[i]->filename, filename)==0) {
            
            return ((int)headers[i]);
        }
    }
    return 0;
}
int get_pointer_to_file(char *filename)
{
    for (int i=0; i<ramdisk_cnt; i++) {
        if (strcmp(headers[i]->filename, filename)==0) {
            char *addr=(char *)headers[i]+512;
            return (int) addr;
        }
    }
    return 0;
}
void crdisk()
{
    kprintln("");
    tar_header *ramdisk=&_binary_ramdisk_tar_start;
    kprint ("The adress of the ramdisk is: "); kprintint((int)ramdisk); kprintln("");
    kprint ("There are: "); kprintint(ramdisk_cnt); kprintln(" files in the ramdisk!");
    //char *addr=(char *) ramdisk;
    //for (int i=0; i<256; i++) {kprintinthex((char)*(addr+i)); kprint(" ");}
    tar_header *info_header=(tar_header *) get_pointer_to_file_header("ramdisk.inf");
    kprint ("The info header is at: "); kprintint((int) info_header); kprintln("");
    char *info_addr=(char *)info_header+512;
    kprint(info_addr);
    kprintln("");
}

void dir()
{
    kprintln("");
    tar_header *ramdisk=&_binary_ramdisk_tar_start;
    unsigned int address = (int) ramdisk;
    unsigned int i;
    for (i = 0; ; i++)
    {
        tar_header *header = (tar_header *)address;
        if (header->filename[i] == '\0')
            break;
        unsigned int size = getsize(header->size); 
        kprint(header->filename);
        int len=strlen(header->filename);
        while (len<=40) {
            kprint(" ");
            len++;
        }
        kprintint(size); kprintln(" bytes...");
        address += ((size / 512) + 1) * 512;
        if (size % 512)
            address += 512;
        ramdisk_cnt++;
    }
    kprintln("");
}
void ls()
{
    dir();
}