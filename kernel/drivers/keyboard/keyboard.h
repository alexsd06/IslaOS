#include <stdbool.h>

#define KEY_UP 301
#define KEY_RIGHT 302
#define KEY_DOWN 303
#define KEY_LEFT 304
int get_last_key_scancode();
void kinit_keyboard();
bool is_key_pressed (int c); //FOR COMPATIBILITY;
void update_keyboard_status();
bool is_key_pressed(int c);
void cancel_keypress(int c);
void keyboard_isr_handler();
void keypress_aknowledged();

extern int key_pressed;