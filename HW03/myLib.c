#include "myLib.h"

volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

void setPixel(int col, int row, unsigned short color) {
    videoBuffer[OFFSET(col, row, SCREENWIDTH)] = color;
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
    for(int i = 0; i < SCREENWIDTH * SCREENHEIGHT; i++) {
        videoBuffer[i] = color;
    }
}

void waitForVBlank() {
    while(SCANLINECOUNTER > 160);
    while(SCANLINECOUNTER < 160);
}

int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {
    return
    rowA + heightA >= rowB
    && rowA <= rowB + heightB
    && colA + widthA >= colB
    && colA <= colB + widthB;
}
