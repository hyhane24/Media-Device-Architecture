#include "myLib.h"
#include "stdlib.h"

// prototypes
void initialize();
void update();
void draw();

// background var
unsigned short bgColor;

// cloud square 0 var
int cCol, cRow, cHeight, cWidth, cOldRow, cOldCol, cRDel, cCDel;
unsigned short cColor;

// cloud square 1 var
int c1Col, c1Row, c1OldRow, c1OldCol, c1RDel, c1CDel, c1Height, c1Width;
unsigned short c1Color;

// main paused square var
int mCol, mRow, mHeight, mWidth;
unsigned short mColor;

// collision square var
int c3Col, c3Row, c3Height, c3Width, c3OldRow, c3OldCol, c3RDel, c3CDel;
unsigned short c3Color;

// cloud traiangle 1 var
int tCol, tRow, tOldRow, tOldCol, tRDel, tCDel, tHeight, tWidth;
unsigned short tColor;

// cloud traiangle 2 var
int t2Col, t2Row, t2OldRow, t2OldCol, t2RDel, t2CDel, t2Height, t2Width;
unsigned short t2Color;
 

int main() {
	initialize();
	while (1) {
		update();
		waitForVBlank();
		draw();
	}
}


void initialize() {
	REG_DISPCTL = MODE3 | BG2_ENABLE;

	// initialize background and object colors
	bgColor = COLOR(78,83,21);
	cColor = BLACK;
	fillScreen(bgColor);
	c1Color = BLACK;
	mColor = BLACK;
	c3Color = COLOR(78, 100, 40);
	tColor = BLACK;
	t2Color = BLACK;
							

    // initialize cloud square 0
    cHeight = 20;
	cWidth = 20;
	cRow = 5;
	cCol = (SCREENWIDTH / 2) - (cWidth / 2);
	cRDel = 1;
	cCDel = 1;
	// initialize cloud square 1
	c1Height = 20;
	c1Width = 20;
	c1RDel = 2;
	c1CDel = 2;
	c1Row = 130;
	c1Col = (SCREENWIDTH / 2) - (cWidth / 2);
	// initialize main pause square 
	mHeight = 20;
	mWidth = 20;
	mRow = 70;
	mCol = 200;
	// initialize cloud square 3
	c3Height = 20;
	c3Width = 20;
	c3RDel = 3;
	c3CDel = 3;
	c3Row = 70;
	c3Col = (SCREENWIDTH / 2) - (cWidth / 2);
	// initialize cloud triangle 1
	tHeight = 10;
	tWidth = 10;
	tRDel = 2;
	tCDel = 2;
	tRow = 40;
	tCol = (SCREENWIDTH / 2) - (cWidth / 2);
	// initialize cloud triangle 2
	t2Height = 10;
	t2Width = 10;
	t2RDel = 1;
	t2CDel = 1;
	t2Row = 110;
	t2Col = (SCREENWIDTH / 2) - (cWidth / 2);	
}

void update() {
	// make cloud objects bounce horizontally off the edges of screen
	if (cCol <= 0) {
		cCDel *= -1;
	}
	if (cCol + cWidth > SCREENWIDTH) {
		cCDel *= -1;
	}
	if (c1Col <= 0) {
		c1CDel *= -1;
	}
	if (c1Col + c1Width > SCREENWIDTH) {
		c1CDel *= -1;
	}
	if (c3Col <= 0) {
		c3CDel *= -1;
	}
	if (c3Col + c3Width > SCREENWIDTH) {
		c3CDel *= -1;
	}
	if (tCol <= 0) {
		tCDel *= -1;
	}
	if (tCol + tWidth > SCREENWIDTH) {
		tCDel *= -1;
	}
	if (t2Col <= 0) {
		t2CDel *= -1;
	}
	if (t2Col + t2Width > SCREENWIDTH) {
		t2CDel *= -1;
	}

	// change objects color when c3 collides with main square
	if (collision(c3Col, c3Row, c3Width, c3Height, mCol, mRow, mWidth, mHeight)){
		c3CDel *= -1;
		if (mColor == BLACK){
			mColor = COLOR(255,141,202);
			c1Color = COLOR(255,141,202);
			cColor = COLOR(255,141,202);
			tColor = COLOR(255,141,202);
			t2Color = COLOR(255,141,202);
		} else {
			mColor = BLACK;
			c1Color = BLACK;
			cColor = BLACK;
			tColor = BLACK;
			t2Color = BLACK;
		}
	}

	// update cloud objects position
	cCol += cCDel;
	c1Col += c1CDel;
	c3Col += c3CDel;
	tCol += tCDel;
	t2Col += t2CDel;
	
}

void draw() {
	// draw objects to screen
    // erase previous cloud objects (except for main square)
	drawSq(cOldCol, cOldRow, cWidth, cHeight, bgColor);
	drawSq(c1OldCol, c1OldRow, c1Width, c1Height, bgColor);
	drawSq(mCol, mRow, mWidth, mHeight, mColor);
	drawSq(c3OldCol, c3OldRow, c3Width, c3Height, bgColor);
	drawTri(tOldCol, tOldRow, tWidth, tHeight, bgColor);
	drawTri(t2OldCol, t2OldRow, t2Width, t2Height, bgColor);
	

	// draw new cloud objects location
	drawSq(cCol, cRow, cWidth, cHeight, cColor);
	drawSq(c1Col, c1Row, c1Width, c1Height, c1Color);
	drawSq(c3Col, c3Row, c3Width, c3Height, c3Color);
	drawTri(tCol, tRow, tWidth, tHeight, tColor);
	drawTri(t2Col, t2Row, t2Width, t2Height, t2Color);


	// update old variables
	cOldRow = cRow;
	cOldCol = cCol;
	c1OldRow = c1Row;
	c1OldCol = c1Col;
	c3OldRow = c3Row;
	c3OldCol = c3Col;
	tOldCol = tCol;
	tOldRow = tRow;
	t2OldCol = t2Col;
	t2OldRow = t2Row;

}
