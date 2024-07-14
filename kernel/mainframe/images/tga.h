typedef struct {
  unsigned char magic1;             // must be zero
  unsigned char colormap;           // must be zero
  unsigned char encoding;           // must be 2
  unsigned short cmaporig, cmaplen; // must be zero
  unsigned char cmapent;            // must be zero
  unsigned short x;                 // must be zero
  unsigned short y;                 // image's height
  unsigned short h;                 // image's height
  unsigned short w;                 // image's width
  unsigned char bpp;                // must be 32
  unsigned char pixeltype;          // must be 40
} __attribute__((packed)) tga_header_t;

void show_image(tga_header_t *image, int x, int y);
int get_image_width(tga_header_t *image);
int get_image_height(tga_header_t *image);
void fetch(char str[]);
void islafetch();
void homufetch();