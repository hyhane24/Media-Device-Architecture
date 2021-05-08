# 1 "lab01.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "lab01.c"
# 24 "lab01.c"
void setPixel(int, int, unsigned short);
void drawTriangle(int, int);
void drawRect(int, int);



volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;


int main() {

    (*(volatile unsigned short *)0x4000000) = 3 | (1<<10);







    drawRect(90, 40);



    drawTriangle(30, 40);
    drawTriangle(30, 90);



    while(1);


}


void setPixel(int col, int row, unsigned short color) {



    videoBuffer[((row)*(240)+(col))] = color;
}


void drawRect(int col, int row) {



    for (int i = 0; i < col; i++) {
     for (int j = 0; j < row; j++) {
            setPixel(col + i, row + j, ((31) | (31)<<5 | (0)<<10));
        }
    }
}

void drawTriangle(int col, int row) {



    for (int i = 0; i < col; i++) {
     for (int j = 0; j < i; j++) {
            setPixel(col + i, row + j, ((0) | (31)<<5 | (31)<<10));
        }
    }
}
