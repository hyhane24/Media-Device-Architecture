# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
# 1 "myLib.h" 1




typedef unsigned short u16;
# 25 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 42 "myLib.h"
void setPixel(int col, int row, unsigned short color);
void drawRect(int col, int row, int width, int height, unsigned short color);
void drawCircle(int col, int row, int width, int height, unsigned short color);
void drawTri(int col, int row, int width, int height, unsigned short color);
void fillScreen(unsigned short color);


void waitForVBlank();
# 69 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 79 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "myLib.c" 2

volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

void setPixel(int col, int row, unsigned short color) {
    videoBuffer[((row)*(240)+(col))] = color;
}

void drawRect(int col, int row, int width, int height, unsigned short color) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            setPixel(col + j, row + i, color);
        }
    }
}
void drawCircle(int col, int row, int width, int height, unsigned short color) {
    for (int y = -width; y <= width; y++) {
        for (int x = -width; x <= width; x++) {
            if (x*x + y*y <= width * width) {
                setPixel(col + x, row + y, color);
            }
        }
    }
}

void drawTri(int col, int row, int width, int height, unsigned short color) {
    for (int i = 0; i < width; i++){
        for (int j = 0; j<i; j++){
            setPixel(col + i, row +j, color);
        }
    }
}


void fillScreen(unsigned short color) {
    for(int i = 0; i < 240 * 160; i++) {
        videoBuffer[i] = color;
    }
}

void waitForVBlank() {
    while((*(volatile unsigned short *)0x4000006) > 160);
    while((*(volatile unsigned short *)0x4000006) < 160);
}

int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {
    return
    rowA + heightA >= rowB
    && rowA <= rowB + heightB
    && colA + widthA >= colB
    && colA <= colB + widthB;
}