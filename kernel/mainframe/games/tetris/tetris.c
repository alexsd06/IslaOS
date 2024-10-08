#include "mainframe/games/tetris/tetris.h"
#include "mainframe/images/tga.h"
#include "ramdisk/ramdisk.h"
#include "std/string.h"
#include "drivers/video/video.h"
#include "time/time.h"
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

//for input_file in *.png; do convert "$input_file" -resize 46x46 -type TrueColorMatte -define tga:compression=none -define tga:origin=Top "${input_file%.png}.tga"; done

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
    int mat_dim;
    int left_border, right_border;
    int matrix[4][4];
};

struct tetrimino active_tetrimino;

struct tetrimino update_borders (struct tetrimino t)
{
    t.left_border=-1; t.right_border=-1;

    for (int j=0; j<t.mat_dim; j++) {
        for (int i=0; i<t.mat_dim; i++) {
            if (t.matrix[i][j]==1) {
                t.left_border=j;
                break;
            }
        }
        if (t.left_border!=-1) break;
    } 
    for (int j=t.mat_dim; j>=0; j--) {
        for (int i=0; i<t.mat_dim; i++) {
            if (t.matrix[i][j]==1) {
                t.right_border=t.mat_dim-j-1;
                break;
            }
        }
        if (t.right_border!=-1) break;
    } 
    return t;
}

// Initializer function for struct tetrimino
struct tetrimino init_tetrimino(int kind, int x, int y, int color_id) {
    struct tetrimino t;
    t.kind = kind;
    t.x = x;
    t.y = y;
    t.color_id = color_id;
    TetriminoMatrix *mat=kind_to_matrix[t.kind];
    t.mat_dim=(*mat)[3][3];
    for (int i=0; i<4; i++) {
        for (int j=0; j<4; j++) {
            t.matrix[i][j]=(*mat)[i][j];
        }
    }
    t=update_borders(t);
    return t;
}

const int default_game_speed=10;
int GAME_SPEED=default_game_speed;
int fast_game_speed=0;
int multiplier=4;
int game_lost=0;

void add_tetrimino_to_board(struct tetrimino t)
{
    int x=t.x, y=t.y;
    int mat_dim = t.mat_dim;
    for (int i=0; i<mat_dim; i++) {
        for (int j=0; j<mat_dim; j++) {
            int val = t.matrix[i][j];
            if (val!=1) continue;
            tetrimino_board[i+y][j+x]=t.color_id;
        }
    }
}

void clear_tetrimino(struct tetrimino t)
{
    int x=t.x, y=t.y;
    int mat_dim = t.mat_dim;
    for (int i=0; i<mat_dim; i++) {
        for (int j=0; j<mat_dim; j++) {
            int val = t.matrix[i][j];
            if (val!=1) continue;
            tetrimino_board[i+y][j+x]=-1;
        }
    }
}

int board_height=22, board_width=10;
int height_offset=25;
int rect_gross=10;

void render_board()
{
    int block_width=get_image_width(tetris_blocks[0]), block_height=get_image_height(tetris_blocks[0]);
    int fb_width=get_framebuffer_width();
    int width_offset=fb_width/2-block_width*5-15;

    for (int i=0; i<board_height; i++) {
        for (int j=0; j<board_width; j++) {
            int block_y=i*block_height+height_offset+rect_gross, block_x=j*block_width+width_offset;
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
    game_lost=0;
    GAME_SPEED=default_game_speed;
    fast_game_speed=0;
    int block_width=get_image_width(tetris_blocks[0]), block_height=get_image_height(tetris_blocks[0]);
    int fb_width=get_framebuffer_width(), fb_height=get_framebuffer_height();
    int width_offset=fb_width/2-block_width*5-15;

    draw_rectangle(WHITE, height_offset, width_offset-(rect_gross), 22*block_height+(2*rect_gross), 10*block_width+(rect_gross*2), rect_gross, 0);

    for (int i=0; i<board_height; i++) {
        for (int j=0; j<board_width; j++) {
            tetrimino_board[i][j]=-1;
        }
    }

    tga_header_t *tetris_logo_left=(tga_header_t *) get_pointer_to_file("tetris_logo_left.tga");
    int logo_height=get_image_height(tetris_logo_left);
    int logo_width=get_image_width(tetris_logo_left);
    int board_width_pixel=board_width*block_width+2*rect_gross;
    int logo_y=fb_height/2-logo_height/2;
    int logo_x=(fb_width/2-board_width_pixel/2)/2-logo_width/2;


    // kprintint(logo_height); kprint(" "); kprintint(logo_width);
    show_image(tetris_logo_left, logo_y, logo_x);
    tga_header_t *tetris_logo_right=(tga_header_t *) get_pointer_to_file("tetris_logo_right.tga");
    show_image(tetris_logo_right, logo_y, fb_width-logo_x-logo_width);
}

int can_active_go(int y, int x)
{
    int last_one=0;
    int mat_dim=active_tetrimino.mat_dim;
    for (int i=0; i<mat_dim; i++) {
        for (int j=0; j<mat_dim; j++) {
            int val=active_tetrimino.matrix[i][j];
            if (val!=1) continue;
            if (x+j<0||x+j>=board_width) return 0; //Only after rotating it...
            if (tetrimino_board[i+y][j+x]!=-1&&tetrimino_board[i+active_tetrimino.y][j+active_tetrimino.x]==-1) {
                return 0;
            }
            last_one=i;
        }
    }
    if (last_one+y>=22) return 0;
    return 1;
}

void rotate_active_tetrimino_right()
{
    int mat_dim=active_tetrimino.mat_dim;
    int new_mat[4][4];
    for (int i=0; i<mat_dim; i++) {
        for (int j=0; j<mat_dim; j++) {
            new_mat[j][mat_dim-i-1]=active_tetrimino.matrix[i][j];
        }
    }
    for (int i=0; i<mat_dim; i++) {
        for (int j=0; j<mat_dim; j++) {
            active_tetrimino.matrix[i][j]=new_mat[i][j];
        }
    }
    active_tetrimino.matrix[3][3]=active_tetrimino.matrix[3][0];
    active_tetrimino.matrix[3][0]=0;
    active_tetrimino=update_borders(active_tetrimino);
    while (!can_active_go(active_tetrimino.y, active_tetrimino.x)) {
        int middle=active_tetrimino.mat_dim/2;
        if (active_tetrimino.x+middle<=board_width/2) {
            active_tetrimino.x+=1;
        }
        else {
            active_tetrimino.x-=1;
        }
    }
}

void rotate_active_tetrimino_left()
{
    int mat_dim=active_tetrimino.mat_dim;
    int new_mat[4][4];
    for (int i=0; i<mat_dim; i++) {
        for (int j=0; j<mat_dim; j++) {
            new_mat[mat_dim-j-1][i]=active_tetrimino.matrix[i][j];
        }
    }
    for (int i=0; i<mat_dim; i++) {
        for (int j=0; j<mat_dim; j++) {
            active_tetrimino.matrix[i][j]=new_mat[i][j];
        }
    }
    active_tetrimino.matrix[3][3]=active_tetrimino.matrix[3][0];
    active_tetrimino.matrix[3][0]=0;
    active_tetrimino=update_borders(active_tetrimino);
    while (!can_active_go(active_tetrimino.y, active_tetrimino.x)) {
        int middle=active_tetrimino.mat_dim/2;
        if (active_tetrimino.x+middle<=board_width/2) {
            active_tetrimino.x+=1;
        }
        else {
            active_tetrimino.x-=1;
        }
    }
}

void update_game_speed()
{
    if (!fast_game_speed) GAME_SPEED/=multiplier;
    else GAME_SPEED*=multiplier;
    fast_game_speed=!fast_game_speed;
}

int is_instant_piece=0;
int insta_multi=100;

void instant_piece()
{
    if (!is_instant_piece) {
        GAME_SPEED/=insta_multi;
        is_instant_piece=1;
    }
}

void game_tick()
{
    add_tetrimino_to_board(active_tetrimino);

    render_board();
    if (can_active_go(active_tetrimino.y+1, active_tetrimino.x)) clear_tetrimino(active_tetrimino);
    if (is_key_pressed(KEY_LEFT)) {
        cancel_keypress(KEY_LEFT);
        if (active_tetrimino.x+active_tetrimino.left_border>0&&can_active_go(active_tetrimino.y+1, active_tetrimino.x-1)) {
            clear_tetrimino(active_tetrimino);
            active_tetrimino.x-=1;
        }
    }
    if (is_key_pressed(KEY_RIGHT)) {
        cancel_keypress(KEY_RIGHT);
        if (active_tetrimino.x+active_tetrimino.mat_dim-active_tetrimino.right_border<10&&can_active_go(active_tetrimino.y+1, active_tetrimino.x+1)) {
            clear_tetrimino(active_tetrimino);
            active_tetrimino.x+=1;
        }
    }
    if (is_key_pressed(KEY_UP)) {
        cancel_keypress(KEY_UP);
        rotate_active_tetrimino_right();
    }
    if (is_key_pressed(KEY_DOWN)) {
        cancel_keypress(KEY_DOWN);
        update_game_speed();
    }
    if (is_key_pressed(' ')) {
        cancel_keypress(' ');
        instant_piece();
    }
}

int break_game()
{
    if (is_key_pressed('c')) {
        cancel_keypress('c');
        clear();
        kprintln("Is this too much for you to handle?");
        return 1;
    }
    return 0;
}

void clear_line(int idx)
{
    for (int i=idx; i>=0; i--) {
        for (int j=0; j<board_width; j++) {
            tetrimino_board[i][j]=tetrimino_board[i-1][j];
        }
    }
    for (int j=0; j<board_width; j++) {
        tetrimino_board[0][j]=-1;
    }
}

void clear_lines()
{
    for (int i=board_height-1; i>=0; i--) {
        int found_empty=0;
        for (int j=0; j<board_width; j++) {
            if (tetrimino_board[i][j]==-1) {
                found_empty=1;
                break;
            }
        }
        if (!found_empty) {
            clear_line(i);
            i+=1;
        }
    } 
}

void fall(int *sys_ms)
{
    int ctime=get_system_time('m');
    if (ctime>(*sys_ms)+GAME_SPEED) {
        (*sys_ms)=get_system_time('m');
        if (can_active_go(active_tetrimino.y+1, active_tetrimino.x)) {
            active_tetrimino.y+=1;
        }
        else {
            int choice=rand()%7;
            add_tetrimino_to_board(active_tetrimino);
            if (active_tetrimino.y==0) {
                game_lost=1;
                return;
            }
            if (is_instant_piece) {
                is_instant_piece=0;
                GAME_SPEED*=insta_multi;
            }
            active_tetrimino=init_tetrimino(tetrimino_kinds[choice], 0, 0, choice);
            if (fast_game_speed) update_game_speed();
            clear_lines();
        }
    }
}

/*
TODO:
Obtain random seed from the cpu in assembly
Some pieces are still able to erase other pieces in special circumstances
(the only observed time was a J going to the left near the bottom)
*/

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
    active_tetrimino=init_tetrimino(tetrimino_kinds[choice], 0, 0, choice);
    int sys_ms=get_system_time('m');
    while (1) {
        if (break_game()) break;
        game_tick();
        fall(&sys_ms);
        if (game_lost) {
            clear();
            kprintln("You lost!");
            break;
        }
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