#include <stdlib.h>
#include "myLib.h"
#include "game.h"

// Variables
CANNON cannon;
BULLET bullets[BULLETCOUNT];
BALL balls[BALLCOUNT];
int ballsRemaining;

// white blood cell variables
int cCol, cRow, cHeight, cWidth, cOldRow, cOldCol, cRDel, cCDel;


// Initialize the game
void initGame() {
     initCannon();
     initBullets();
    initBalls();
    ballsRemaining = BALLCOUNT;

// white blood cell init
	cHeight = 5;
	cWidth = 5;
	cRow = 10;
	cCol = (SCREENWIDTH / 2) - (cWidth / 2);
	cRDel = 1;
	cCDel = 1;
}

// Updates the game each frame
void updateGame() {

     // update syringe
     updateCannon();

    // update syringe drops
    for (int i = 0; i<BULLETCOUNT; i++) {
        updateBullet(&bullets[i]);
    }

    // update COVID virus
    for (int i = 0; i < BULLETCOUNT; i++){
        updateBall(&balls[i]);
    }

    // keep white blood cell moving horizontally, bouncing off screen
	if (cCol <= 0) {
		cCDel *= -1;
	}
	if (cCol + cWidth > SCREENWIDTH) {
		cCDel *= -1;
	}

	// update WBC's position
	cCol += cCDel;

}

// Draws the game each frame
void drawGame() {

    // draw syringe
     drawCannon();
    
    // draw syringe drops
    for (int i = 0; i<BULLETCOUNT; i++){
        drawBullet(&bullets[i]);
    }

    // draw COVID virus
    for (int i =0; i<BALLCOUNT; i++){
        drawBall(&balls[i]);
    }

    // draw white blood cell 
	drawCircle(cOldCol, cOldRow, cWidth, cHeight, COLOR(255,51,51));
	drawCircle(cCol, cRow, cWidth, cHeight, WHITE);

	cOldRow = cRow;
	cOldCol = cCol;
}

// Initialize syringe
 void initCannon() {
    cannon.row = 125;
    cannon.col = 118;
    cannon.oldRow = cannon.row;
    cannon.oldCol = cannon.col;
    cannon.cdel = 1;
    cannon.height = 30;
    cannon.width = 2;
    cannon.color = CYAN;
    cannon.bulletTimer = 20;

 }

 // Handle every frame actions of syringe
 void updateCannon() {

    // Move syringe locations
    if (BUTTON_HELD(BUTTON_LEFT)
        && cannon.col >= cannon.cdel) {

        cannon.col -= cannon.cdel;

    } else if (BUTTON_HELD(BUTTON_RIGHT)
        && cannon.col + cannon.width - 1 < SCREENWIDTH - cannon.cdel) {

        cannon.col += cannon.cdel;
    }

    // release vaccination
    if (BUTTON_PRESSED(BUTTON_B) && cannon.bulletTimer >= 20) {

        fireBullet();  
    }

    cannon.bulletTimer++;
 }

  // draw syringe
 void drawCannon() {

    drawRect(cannon.oldCol, cannon.oldRow, cannon.width, cannon.height,COLOR(255,51,51));
    drawRect(cannon.col, cannon.row, cannon.width, cannon.height, GRAY);

    drawRect(0, 150, 240, 10, COLOR(186,0,0));

    drawCircle(115,70,10,10,WHITE);
    
    // increment the antibody size 

    if (ballsRemaining==4){
        drawCircle(115,70,2,2,CYAN);
    }
    if (ballsRemaining==3){
        drawCircle(115,70,4,4,CYAN);
    }
    if (ballsRemaining==2){
        drawCircle(115,70,6,6,CYAN);
    }
    if (ballsRemaining==1){
        drawCircle(115,70,8,8,CYAN);
    }

    cannon.oldRow = cannon.row;
    cannon.oldCol = cannon.col;
 }

 // Initialize the pool of vaccination drops
 void initBullets() {

     for (int i=0; i <BULLETCOUNT; i++) {
        bullets[i].height = 5;
        bullets[i].width =3;
        bullets[i].row = -1 * bullets[i].height;
        bullets[i].col = 0;
        bullets[i].oldRow = cannon.row;
        bullets[i].oldCol =cannon.col;
        bullets[i].rdel = -2;
        bullets[i].color = CYAN;
        bullets[i].active =0;
    }
 }

 // Spawn a drops
 void fireBullet() {

     for (int i=0; i< BULLETCOUNT; i++){
         if (!bullets[i].active) {
             bullets[i].row = cannon.row;
             bullets[i].col = cannon.col + (cannon.width/2)+(bullets[i].width/2);
             bullets[i].active = 1;
             bullets[i].erased = 0;
             break;
         }
     }


 }

 // Handle every frame actions of the drops
 void updateBullet(BULLET* b) {

    // make syringe move vertically up, and disappear once out of frame
     if (b -> active) {
         b->oldRow = b->row;
         b -> row = b->row + b->rdel;
     }
     if (b->row == 0){
         b->active = 0;
     }
 }

 // Draw drops
 void drawBullet(BULLET* b) {

    if(b->active) {
        drawRect(b->oldCol, b->oldRow, b->width, b->height, COLOR(255,51,51));
        drawRect(b->col, b->row, b->width, b->height, b->color);
    } else if (!b->erased) {
        drawRect(b->oldCol, b->oldRow, b->width, b->height, COLOR(255,51,51));
        b->erased = 1;
    }
    b->oldRow = b->row;
    b->oldCol = b->col;
 }

// Initialize the COVID virus
void initBalls() {

    for (int i = 0; i < BALLCOUNT; i++) {
        balls[i].height = 5;
        balls[i].width = 5;
        balls[i].row = rand() % 110;
        balls[i].col = rand() % 130 + 10;
        balls[i].oldRow = balls[i].row;
        balls[i].oldCol = balls[i].col;
        balls[i].rdel = 1;
        balls[i].cdel = 1;
        balls[i].color = RED;
        balls[i].active = 1;
        balls[i].erased = 0;
    }
}

// Handle every frame actions the virus
void updateBall(BALL* b) {

    if (b->active) {

        // Bounce the COVID virus around
        if (b->row <= 0 || b->row + b->height-1 >= 120)
            b->rdel *= -1;
        if (b->col <= 0 || b->col + b->width-1 >= SCREENWIDTH-1)
            b->cdel *= -1;

        // Move the virus
        b->row += b->rdel;
        b->col += b->cdel;

        // Handle vaccination and virus collision
        for (int i = 0; i< BULLETCOUNT; i++) {
            if (bullets[i].active) {
                
                // when vaccine hits COVID, it dies
                if (collision(b->col, b->row, b->width, b->height, bullets[i].col, 
                bullets[i].row, bullets[i].width, bullets[i].height)) {
                    bullets[i].active = 0;
                    b->active = 0;
                    ballsRemaining--;
                }

                // when vaccine hits white blood cell, game over
				if (collision(cCol, cRow, cWidth, cHeight, bullets[i].col, 
                bullets[i].row, bullets[i].width, bullets[i].height)) {
                    ballsRemaining = 100;
                }

            }
        }
    }
}

// Draw the COVID virus
void drawBall(BALL* b) {
    if(b->active) {
        drawCircle(b->oldCol, b->oldRow, b->width, b->height, COLOR(255,51,51));
        drawCircle(b->col, b->row, b->width, b->height, b->color);
    } else if (!b->erased) {
        drawCircle(b->oldCol, b->oldRow, b->width, b->height, COLOR(255,51,51));
        b->erased = 1;
    }
    b->oldRow = b->row;
    b->oldCol = b->col;
}

