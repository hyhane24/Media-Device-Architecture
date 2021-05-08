// GBA Video Registers and Flags
#define REG_DISPCTL (*(volatile unsigned short *)0x4000000)
#define MODE3 3
#define BG2_ENABLE (1<<10)

// Create a color with the specified RGB values
#define COLOR(r, g, b) ((r) | (g)<<5 | (b)<<10)

// Calculate the position of a pixel based on its row and column
#define OFFSET(col, row, rowlen) ((row)*(rowlen)+(col))

// Predefined colors
#define RED COLOR(31, 0, 0)
#define GREEN COLOR(0, 31, 0)
#define BLUE COLOR(0, 0, 31)
#define MAGENTA COLOR(31, 0, 31)
#define CYAN COLOR(0, 31, 31)
#define YELLOW COLOR(31, 31, 0)
#define BLACK 0
#define WHITE COLOR(31, 31, 31)


// Function Prototypes
void setPixel(int, int, unsigned short);
void drawTriangle(int, int);
void drawRect(int, int);


// Global Variables
volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;


int main() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;

    //TODO 1.1: Test your setPixel function (you can comment this back out later)

        // setPixel(120, 120, MAGENTA);
    
    //TODO 2.1: Call your drawRect function once

    drawRect(90, 40);

    //TODO 3.1: Call your drawTriangle function twice

    drawTriangle(30, 40);
    drawTriangle(30, 90);


    
    while(1);

    
}


void setPixel(int col, int row, unsigned short color) {

    // TODO 1: Complete this function
    
    videoBuffer[OFFSET(col, row, 240)] = color;
}


void drawRect(int col, int row) {

    // TODO 2: Complete this function
    
    for (int i = 0; i < col; i++) {
    	for (int j = 0; j < row; j++) {
            setPixel(col + i, row + j, YELLOW);  
        }
    } 
}

void drawTriangle(int col, int row) {

    // TODO 3: Complete this function
    
    for (int i = 0; i < col; i++) {
    	for (int j = 0; j < i; j++) {
            setPixel(col + i, row + j, CYAN); 
        }
    }
}


