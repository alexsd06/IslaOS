#include <stdbool.h>

#define KEY_UP 301
#define KEY_RIGHT 302
#define KEY_DOWN 303
#define KEY_LEFT 304

void keyboard_read_key();
int get_last_key_scancode();
void kinit_keyboard();
int get_last_key_char(bool *state);
void update_keyboard_status();
bool is_key_pressed(int c);
void cancel_keypress(int c);

//extern int keypress[256];
//extern int key_last_typed[256];