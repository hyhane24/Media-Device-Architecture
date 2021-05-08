#ifndef MY_LIB_H
#define MY_LIB_H

// common typedefs
typedef unsigned short u16;

// common macros
#define OFFSET(col,row,rowlen) ((row)*(rowlen)+(col))

// display control registers
#define REG_DISPCTL (*(volatile unsigned short *)0x4000000)
#define MODE3 3
#define BG2_ENABLE (1<<10)

// display status registers
#define SCANLINECOUNTER (*(volatile unsigned short *)0x4000006)

// display constants
#define SCREENHEIGHT 160
#define SCREENWIDTH 240

// videobuffer
extern volatile unsigned short *videoBuffer;

// color
#define COLOR(r,g,b) ((r) | (g)<<5 | (b)<<10)
#define BLACK 0

// mode 3 drawing functions
void setPixel(int col, int row, unsigned short color);
void drawSq(int col, int row, int width, int height, unsigned short color);
void fillScreen(unsigned short color);

// miscellaneous, drawing function
void waitForVBlank();

// miscellaneous, collision function
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);


#endif