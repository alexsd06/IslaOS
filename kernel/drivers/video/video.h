void kinit_videobuffer();
extern uint32_t FRAMEBUFFER_WIDTH, FRAMEBUFFER_HEIGHT;
extern void *framebuffer;
extern int pixelwidth, pitch;
void write_pixel(uint32_t x, uint32_t y, uint32_t color);