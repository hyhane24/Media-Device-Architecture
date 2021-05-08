#include "myLib.h"
#include "stdlib.h"

// prototypes
void initialize();
void update();
void draw();

// tally
int left = 0;
int right = 0;

// buttons
unsigned short buttons;
unsigned short oldButtons;

// background
unsigned short bgColor;

// land rectangle 1
int lRow, lCol, lHeight, lWidth;
unsigned short lColor;

// land rectangle 2
int l2Row, l2Col, l2Height, l2Width;
unsigned short l2Color;

// cloud rectangle
int cCol, cRow, cHeight, cWidth, cOldRow, cOldCol, cRDel, cCDel;
unsigned short cColor;

// paddle 1
int pRow, pCol, pOldRow, pOldCol, pRDel, pCDel, pHeight, pWidth;

// paddle 2
int p2Row, p2Col, p2OldRow, p2OldCol, p2RDel, p2CDel, p2Height, p2Width;

//middle line 
int mRow, mCol, mHeight, mWidth;
unsigned short mColor;

// tally indicator rectangle, left user
int tRow, tCol, tHeight, tWidth, tOldCol, tOldRow;
unsigned short tColor;

// tally indicator rectangle, right user
int t2Row, t2Col, t2Height, t2Width, t2OldCol, t2OldRow;
unsigned short t2Color;

int main() {

	initialize();
 
	while (1) {
	
	oldButtons = buttons;
	buttons = BUTTONS;

		update();
		waitForVBlank();
		draw();
	}
}

// sets up the display and the game objects
void initialize() {
	REG_DISPCTL = MODE3 | BG2_ENABLE;

	buttons = 0;
	oldButtons = 0;

	// initialize background and rectangle colors
	bgColor = BLACK;
	lColor = WHITE;
	l2Color = WHITE;
	cColor = WHITE;
	mColor = WHITE;
	tColor = GREEN;
	t2Color = RED;
	fillScreen(bgColor);
	
	// initialize land rectangle 1
	lHeight = 2;
	lWidth = 240;
	lRow = SCREENHEIGHT - lHeight;
	lCol = 0;	

	// initialize land rectangle 2
	l2Height = 2;
	l2Width = 240;
	l2Row = 0;
	l2Col = 0;		

	// initialize tally 1
	tHeight = 8;
	tWidth = 60;
	tRow = 10;
	tCol = 25;		

    // initialize tally 2
	t2Height = 8;
	t2Width = 20;
	t2Row = 10;
	t2Col = 150;	

	// initialize middle rectangle 				
	mHeight = 160;
	mWidth = 1;
	mRow = 0;
	mCol = SCREENWIDTH/2;

    // initialize cloud rectangle
    cHeight = 5;
	cWidth = 5;
	cRow = (SCREENHEIGHT / 2) + pHeight;
	cCol = (SCREENWIDTH / 2) - (cWidth / 2);
	cRDel = 1;
	cCDel = 1;

	// initialize paddle1 rectangle
	pHeight = 20;
	pWidth = 4;
	pRow = (SCREENHEIGHT / 2) + pHeight;
	pCol = 2;
	pOldRow = pRow;
	pOldCol = pCol;
	pRDel = 1;
	pCDel = 1;

	// initialize paddle2 rectangle
	p2Height = 20;
	p2Width = 4;
	p2Row = (SCREENHEIGHT / 2) + pHeight;
	p2Col = SCREENWIDTH-5;
	p2OldRow = p2Row;
	p2OldCol = p2Col;
	p2RDel = 1;
	p2CDel = 1;
}

// performs all of the game's calculations
void update() {

	// boundary checks
	if (pCol < 0) { // left
		pOldCol = pCol;
		pCol = 0;
	}
	if (pCol + pWidth > SCREENWIDTH) { // right
		pOldCol = pCol;
		pCol = (SCREENWIDTH - 1) - (pWidth - 1);
	}
	if (pRow < 0) { // top
		pOldRow = pRow;
		pRow = 0;
	}
	if (pRow + pHeight > SCREENHEIGHT) { // bottom
		pOldRow = pRow;
		pRow = (SCREENHEIGHT - 1) - (pHeight - 1);
	}
	if (p2Col < 0) { // left
		p2OldCol = p2Col;
		p2Col = 0;
	}
	
	if (p2Col + p2Width > SCREENWIDTH) { // right
		p2OldCol = p2Col;
		p2Col = (SCREENWIDTH - 1) - (p2Width - 1);
	}
	if (p2Row < 0) { // top
		p2OldRow = p2Row;
		p2Row = 0;
	}
	if (p2Row + p2Height > SCREENHEIGHT) { // bottom
		p2OldRow = p2Row;
		p2Row = (SCREENHEIGHT - 1) - (p2Height - 1);
	}

	// move the paddles with the buttons

	if (BUTTON_HELD(BUTTON_UP)){
		pRow = pRow - 2;
	}
	if (BUTTON_HELD(BUTTON_DOWN)){
		pRow = pRow + 2;
	}
	if (BUTTON_HELD(BUTTON_LEFT)){
		p2Row = p2Row - 2;
	}
	if (BUTTON_HELD(BUTTON_RIGHT)){
		p2Row = p2Row + 2;
	}
	

	// make cloud rectangle bounce 

	// when pong touches right side end
	if (cCol <= 0) {
		cCDel *= -1;
		cRDel *= -1;
		right++;
	}

	if (cRow <= 0) {
		cCDel *= -1;
		cRDel *= -1;
	}

	// when pong touches left side end 
	if (cCol + cWidth > SCREENWIDTH) {
		cCDel *= -1;
		cRDel *= -1;
		left++;
	}


	// update cloud rectangle's position
	cCol += cCDel;
	cRow += cRDel;
	

	// make pong bounce when hits paddles or land rectangles
	if (collision(pCol, pRow, pWidth, pHeight, cCol, cRow, cWidth, cHeight)){
		cCDel = cCDel * (-1);
	} 
	if (collision(p2Col, p2Row, p2Width, p2Height, cCol, cRow, cWidth, cHeight)){
		cCDel = cCDel * (-1);
	} 

	if (collision(lCol, lRow, lWidth, lHeight, cCol, cRow, cWidth, cHeight)){
		cRDel = cRDel * (-1);
	} 
	if (collision(l2Col, l2Row, l2Width, l2Height, cCol, cRow, cWidth, cHeight)){
		cRDel = cRDel * (-1);
	} 

	// tally for right side user score 
	if (right == 1){
		drawRect(t2Col, t2Row, 20, t2Height, t2Color);
	}
	if (right == 2){
		drawRect(t2Col, t2Row, 40, t2Height, t2Color);
	}
	if (right == 3){
		drawRect(t2Col, t2Row, 60, t2Height, t2Color);
		cCDel = 0;
		cRDel = 0;
		mColor = RED;
	}

	// tally for left side user socre 
	if (left == 1){
		drawRect(tCol, tRow, 20, tHeight, tColor);
	}
	if (left == 2){
		drawRect(tCol, tRow, 40, tHeight, tColor);
	}
	if (left == 3){
		drawRect(tCol, tRow, 60, tHeight, tColor);
		cCDel = 0;
		cRDel = 0;
		mColor = GREEN;
	}
	
}

// performs all of the drawing to screen
void draw() {
	
	// draw the rectangles to screen

    // erase the previous cloud rectangle location
	drawRect(cOldCol, cOldRow, cWidth, cHeight, bgColor);

	// erase the previous paddle1 rectangle location
	drawRect(pOldCol, pOldRow, pWidth, pHeight, bgColor);

	// erase the previous paddle2 rectangle location
	drawRect(p2OldCol, p2OldRow, p2Width, p2Height, bgColor);

	// draw the new cloud rectangle location
	drawRect(cCol, cRow, cWidth, cHeight, cColor);

	// draw the paddle1 rectangle location
	drawRect(pCol, pRow, pWidth, pHeight, WHITE);

	// draw the paddle2 location
	drawRect(p2Col, p2Row, p2Width, p2Height, WHITE);

	// draw stationary land rectangle
	drawRect(lCol, lRow, lWidth, lHeight, lColor);

	// draw stationary land rectangle 2
	drawRect(l2Col, l2Row, l2Width, l2Height, l2Color);

	// draw staionary middle rectangle
	drawRect(mCol, mRow, mWidth, mHeight, mColor);
	

	// update old variables
	pOldRow = pRow;
	pOldCol = pCol;

	p2OldRow = p2Row;
	p2OldCol = p2Col;

	cOldRow = cRow;
	cOldCol = cCol;
}
