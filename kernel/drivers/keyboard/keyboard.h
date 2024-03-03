void keyboard_read_key();
int get_last_key_scancode();
void kinit_keyboard();
int get_last_key_char(bool *state);
void update_keyboard_status();

extern int keypress[256];
extern int key_last_typed[256];