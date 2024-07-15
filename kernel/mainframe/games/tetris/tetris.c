#include "mainframe/games/tetris/tetris.h"
#include "mainframe/images/tga.h"
#include "ramdisk/ramdisk.h"
#include "std/string.h"
#include "drivers/video/video.h"
#include "pit/pit.h"
#include "std/math.h"
#include "random/random.h"
#include "mainframe/shapes/shapes.h"
#include "drivers/keyboard/keyboard.h"
#include "fonts/font_lib.h"
#include "std/math.h"

tga_header_t *tetris_blocks[7];
const int color_count=7;
char block_colors[7][10]={
    "purple", "pink", "green", "red",
    "yellow", "blue", "cyan"
};

//for input_file in *.png; do convert "$input_file" -resize 31x31 -type TrueColorMatte -define tga:compression=none -define tga:origin=Top "${input_file%.png}.tga"; done

/*
10x20 grid, with 2 rows buffer size
1280x720x32, 1366x768
*/


int i_tetrimino[4][4]={
    {0, 0, 0, 0},
    {0, 0, 0, 0},
    {1, 1, 1, 1},
    {0, 0, 0, 4}
};

int j_tetrimino[4][4]={
    {1, 0, 0, 0},
    {1, 1, 1, 0},
    {0, 0, 0, 0},
    {0, 0, 0, 3}
};

int l_tetrimino[4][4]={
    {0, 0, 1, 0},
    {1, 1, 1, 0},
    {0, 0, 0, 0},
    {0, 0, 0, 3}
};

int o_tetrimino[4][4]={
    {1, 1, 0, 0},
    {1, 1, 0, 0},
    {0, 0, 0, 0},
    {0, 0, 0, 2}
};

int s_tetrimino[4][4]={
    {0, 1, 1, 0},
    {1, 1, 0, 0},
    {0, 0, 0, 0},
    {0, 0, 0, 3}
};

int t_tetrimino[4][4]={
    {0, 1, 0, 0},
    {1, 1, 1, 0},
    {0, 0, 0, 0},
    {0, 0, 0, 3}
};

int z_tetrimino[4][4]={
    {1, 1, 0, 0},
    {0, 1, 1, 0},
    {0, 0, 0, 0},
    {0, 0, 0, 3}
};

char tetrimino_kinds[7]={'i', 'j', 'l', 'o', 's', 't', 'z'};

typedef int TetriminoMatrix[4][4];

TetriminoMatrix *kind_to_matrix[256]={};

int tetrimino_board[22][10];

struct tetrimino {
    int kind;
    int x, y;
    int color_id;
    int mat_size;
};

struct tetrimino active_tetrimino;

// Initializer function for struct tetrimino
struct tetrimino init_tetrimino(int kind, int x, int y, int color_id, int mat_size) {
    struct tetrimino t;
    t.kind = kind;
    t.x = x;
    t.y = y;
    t.color_id = color_id;
    t.mat_size=mat_size;
    return t;
}

void add_tetrimino_to_board(struct tetrimino t)
{
    int x=t.x, y=t.y;
    TetriminoMatrix *mat=kind_to_matrix[t.kind];
    int mat_dim = (*mat)[3][3];
    for (int i=0; i<mat_dim; i++) {
        for (int j=0; j<mat_dim; j++) {
            int val = (*mat)[i][j];
            if (val!=1) continue;
            tetrimino_board[i+y][j+x]=t.color_id;
        }
    }
}

void clear_tetrimino(struct tetrimino t)
{
    int x=t.x, y=t.y;
    TetriminoMatrix *mat=kind_to_matrix[t.kind];
    int mat_dim = (*mat)[3][3];
    for (int i=0; i<mat_dim; i++) {
        for (int j=0; j<mat_dim; j++) {
            int val = (*mat)[i][j];
            if (val!=1) continue;
            tetrimino_board[i+y][j+x]=-1;
        }
    }
}


void render_board()
{
    int block_width=get_image_width(tetris_blocks[0]), block_height=get_image_height(tetris_blocks[0]);
    int fb_width=get_framebuffer_width();
    int width_offset=fb_width/2-block_width*5-15;
    int height_offset=10;

    for (int i=0; i<22; i++) {
        for (int j=0; j<10; j++) {
            int block_y=i*block_height+height_offset, block_x=j*block_width+width_offset;
            if (tetrimino_board[i][j]==-1) {
                draw_rectangle(BLACK, block_y, block_x, block_height, block_width, 1, 1);
                continue;
            }
            show_image(tetris_blocks[tetrimino_board[i][j]], block_y, block_x);
        }
    }
}

void init_board()
{
    clear();
    int block_width=get_image_width(tetris_blocks[0]), block_height=get_image_height(tetris_blocks[0]);
    int fb_width=get_framebuffer_width();
    int width_offset=fb_width/2-block_width*5-15;
    int height_offset=10;
    
    int rect_width=height_offset;
    draw_rectangle(WHITE, 0, width_offset-(rect_width), 22*block_height+(height_offset*2), 10*block_width+(rect_width*2), rect_width, 0);

    for (int i=0; i<22; i++) {
        for (int j=0; j<10; j++) {
            tetrimino_board[i][j]=-1;
        }
    }
}

int can_active_go(int y, int x)
{
    int last_one=0;
    TetriminoMatrix *mat=kind_to_matrix[active_tetrimino.kind];
    int mat_dim = (*mat)[3][3];
    for (int i=0; i<mat_dim; i++) {
        for (int j=0; j<mat_dim; j++) {
            int val = (*mat)[i][j];
            if (val!=1) continue;
            if (tetrimino_board[i+y][j+x]!=-1&&tetrimino_board[i+active_tetrimino.y][j+active_tetrimino.x]==-1) {
                return 0;
            }
            last_one=i;
        }
    }
    if (last_one+y>=22) return 0;
    return 1;
}

void game_tick()
{
    add_tetrimino_to_board(active_tetrimino);

    render_board();
    if (can_active_go(active_tetrimino.y+1, active_tetrimino.x)) clear_tetrimino(active_tetrimino);
    if (is_key_pressed('a')) {
        cancel_keypress('a');
        if (active_tetrimino.x>0) active_tetrimino.x-=1;
    }
    if (is_key_pressed('d')) {
        cancel_keypress('d');
        if (active_tetrimino.x+active_tetrimino.mat_size<9) active_tetrimino.x+=1;
    }
}

int break_game()
{
    if (is_key_pressed('c')) {
        cancel_keypress('c');
        clear();
        return 1;
    }
    return 0;
}

void fall(int *sys_ms)
{
    int ctime=get_system_time('m');
    if (ctime>(*sys_ms)+100) {
        (*sys_ms)=get_system_time('m');
        if (can_active_go(active_tetrimino.y+1, active_tetrimino.x)) {
            active_tetrimino.y+=1;
        }
        else {
            int choice=rand()%7;
            add_tetrimino_to_board(active_tetrimino);
            active_tetrimino=init_tetrimino(tetrimino_kinds[choice], 0, 0, choice, 2);
        }
    }
}

void tetris()
{
    kind_to_matrix['i']=(TetriminoMatrix*) i_tetrimino;
    kind_to_matrix['l']=(TetriminoMatrix*) l_tetrimino;
    kind_to_matrix['j']=(TetriminoMatrix*) j_tetrimino;
    kind_to_matrix['o']=(TetriminoMatrix*) o_tetrimino;
    kind_to_matrix['s']=(TetriminoMatrix*) s_tetrimino;
    kind_to_matrix['t']=(TetriminoMatrix*) t_tetrimino;
    kind_to_matrix['z']=(TetriminoMatrix*) z_tetrimino;

    for (int i=0; i<color_count; i++) {
        char block_name[20];
        strcpy(block_name, block_colors[i]);
        strcat(block_name, "_block.tga");
        tetris_blocks[i]=(tga_header_t *) get_pointer_to_file(block_name);
    }

    init_board();

    int choice=rand()%7;
    active_tetrimino=init_tetrimino(tetrimino_kinds[choice], 0, 0, choice, 2);
    int sys_ms=get_system_time('m');
    while (1) {
        if (break_game()) break;
        game_tick();
        fall(&sys_ms);
        sleep(30, 'm');
    }
    
}

void dizzy()
{
    for (int i=0; i<color_count; i++) {
        char block_name[20];
        strcpy(block_name, block_colors[i]);
        strcat(block_name, "_block.tga");
        tetris_blocks[i]=(tga_header_t *) get_pointer_to_file(block_name);
    }

    int block_width=get_image_width(tetris_blocks[0]), block_height=get_image_height(tetris_blocks[0]);
    int fb_height=get_framebuffer_height(), fb_width=get_framebuffer_width();

    while (1) {
        if (break_game()) break;
        for (int i=0; i<fb_height/block_height; i++) {
            for (int j=0; j<fb_width/block_width; j++) {
                //TODO: Obtain random seed from cpu. Currently defaulting to 42.
                check_pit();
                show_image(tetris_blocks[rand()%7], i*block_height, j*block_width);
            }
        }
        sleep(100, 'm');
    }
}