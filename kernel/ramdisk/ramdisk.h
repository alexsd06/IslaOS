typedef struct
{
    char filename[100];
    char mode[8];
    char uid[8];
    char gid[8];
    char size[12];
    char mtime[12];
    char chksum[8];
    char typeflag[1];
} __attribute__((packed)) tar_header;

unsigned int parse_ramdisk();
unsigned int getsize(const char *in);
void crdisk();
void dir();
void ls();
int get_pointer_to_file_header(char *filename);
int get_pointer_to_file(char *filename);
int get_file_size (char *filename);