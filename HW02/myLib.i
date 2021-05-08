# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
# 1 "myLib.h" 1




typedef unsigned short u16;
# 25 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 36 "myLib.h"
void setPixel(int col, int row, unsigned short color);
void drawRect(int col, int row, int width, int height, unsigned short color);
void fillScreen(unsigned short color);


void waitForVBlank();
# 61 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 73 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "myLib.c" 2

volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

void setPixel(int col, int row, unsigned short color) {
    videoBuffer[((row)*(240)+(col))] = color;
}

void drawRect(int col, int row, int width, int height, unsigned short color) {
    for (int i = 0; i < width; i++){
        for (int j = 0; j<height; j++){
            setPixel(col + i, row +j, color);
        }
    }

}

void fillScreen(unsigned short color) {
    for (int i = 0; i < 38400; i++){
        videoBuffer[i] = color;
    }

}

void waitForVBlank() {
    while ((*(volatile unsigned short *)0x4000006) > 160);
    while ((*(volatile unsigned short *)0x4000006) < 160);
}

int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {
    if (colA < (colB+widthB) && (colB) < (colA+widthA) && rowA < (rowB+heightB) && rowB < (rowA+heightA)) {
     return 1;
    } else {
    return 0;
    }
}
