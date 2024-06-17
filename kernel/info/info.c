#include "limine.h"
#include "std/string.h"
#include "kernel.h"
#include <stddef.h>

char bootloader_name[24];
char bootloader_version[24];
char bootloader_data[48];

void init_bootloader_info(struct limine_bootloader_info_request bootloader_info)
{
    if (bootloader_info.response==NULL) hcf();
    strcpy(bootloader_name, bootloader_info.response->name);
    strcpy(bootloader_version, bootloader_info.response->version);
    strcpy(bootloader_data, bootloader_name);
    strcat(bootloader_data, " ");
    strcat(bootloader_data, bootloader_version);
}
char * get_bootloader_data()
{
    return bootloader_data;
}