#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "mushroom.h"
#include "ghost.h"

// vars
PLAYER player;
BULLET bullets[BULLETCOUNT];
BALL balls[BALLCOUNT];
int ballsRemaining;
int mushroomCount;


void initGame() {
	initPlayer();
    initBullets();
    initBalls();
	ballsRemaining = BALLCOUNT - 1;
	mushroomCount = 1;

    unsigned short colors[NUMCOLORS] = {BLACK, PORTAGE, PERSIAN, VIORED, WHITE, GRAY, RED, BLUE};

	DMANow(3, mushroomPal, PALETTE, 256);
	
	// add wanted colors at the edge of pal
    for (int i = 0; i < NUMCOLORS; i++) {
        PALETTE[256-NUMCOLORS+i] = colors[i];
    }
}

void updateGame() {

	updatePlayer();
	// bullets
	for (int i = 0; i < BULLETCOUNT; i++)
		updateBullet(&bullets[i]);
	// balls
	for (int i = 0; i < BALLCOUNT; i++)
		updateBall(&balls[i]);
}


void drawGame() {
    fillScreen4(WHITEID);
	drawPlayer();
	drawBar();
	for (int i = 0; i < BULLETCOUNT; i++)
		drawBullet(&bullets[i]);
	
	for (int i = 0; i < BALLCOUNT; i++)
		drawBall(&balls[i]);
}

// for decoration
void drawBar() {
	drawRect4(0, 5, 240, 3, VIOREDID);
	drawRect4(0, 15, 240, 3, PORTAGEID);
	drawRect4(0, 25, 240, 3, PERSIANID);
	
}

void initPlayer() {
	player.row = 130;
	player.col = 118;
	player.cdel = 2;
	player.height = 10;
	player.width = 10;
	player.color = PORTAGEID;
	player.bulletTimer = 3;
}

void updatePlayer() {

	if (BUTTON_HELD(BUTTON_LEFT) && player.col >= player.cdel) {
		player.col = player.col - player.cdel;
        player.cDirection = -1;

	} else if (BUTTON_HELD(BUTTON_RIGHT) && player.col + player.width - 1 < SCREENWIDTH - player.cdel) {
		player.col = player.col + player.cdel;
        player.cDirection = 1;
	} else {
        player.cDirection = 0;
    }

	
	if (BUTTON_PRESSED(BUTTON_A) && player.bulletTimer >= 1) {
		fireBullet();
		player.bulletTimer = 0;
	}
	player.bulletTimer++;
}

// this is the player
void drawPlayer() {
	drawRect4(player.col, player.row, player.width, player.height, player.color);
}


void initBullets() {
	for (int i = 0; i < BULLETCOUNT; i++) {
		bullets[i].height = 1; 
		bullets[i].width = 1;
		bullets[i].row = 0;
		bullets[i].col = 0;
		bullets[i].rdel = -2;
        bullets[i].cdel = 0;
		bullets[i].color = BLACKID;
		bullets[i].active = 0;
	}
}


void fireBullet() {

	// **find the first inactive bullet
	for (int i = 0; i < BULLETCOUNT; i++) {
		if (!bullets[i].active) {
			bullets[i].row = player.row;
			bullets[i].col = player.col + player.width/2+ bullets[i].width/2;
			// pooling
			bullets[i].active = 1;
			break;
		}
	}
}

void updateBullet(BULLET* b) {
	// uopdate the bullet activity 
	if (b->active) {
		if (b->row + b->height-1 >= 0 && b->col + b->cdel > 0 && b->col + b->cdel < SCREENWIDTH-1) {
			b->row += b->rdel;
            b->col += b->cdel;
		} else {
			b->active = 0;
		}
	}
}

void drawBullet(BULLET* b) {
	if(b->active) {
		drawRect4(b->col, b->row, b->width, b->height, b->color);
	}
}

void initBalls() {
	for (int i = 0; i < BALLCOUNT; i++) {
		balls[i].row = rand() % 100;
		balls[i].col = rand() % 100;
		balls[i].rdel = 2;
		balls[i].cdel = 2;
		balls[i].active = 1;
		balls[i].isMushroom = 0;

		// first ball should be mushroom (not ghost ball)
		if(i == 0){
			balls[i].isMushroom = 1;
			balls[i].height = 16;
			balls[i].width = 16;
		} else {
			balls[i].height = 16;
			balls[i].width = 16;
		}
	}
}

void updateBall(BALL* b) {
	if (b->active) {
		// ball movement
		if (b->row <= 1 || b->row + b->height -1 >= 110)
			b->rdel *= -1;
		if (b->col <= 1 || b->col + b->width -1 >= SCREENWIDTH-2)
			b->cdel *= -1;
			b->row += b->rdel;
			b->col += b->cdel;
		
		for (int i = 0; i < BULLETCOUNT; i++) {
			if (bullets[i].active && !b->isMushroom && collision(b->col, b->row, b->width, b->height, bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height)) {
				bullets[i].active = 0;
				b->isMushroom = 1;
				b->height = 16;
				b->width = 16;
				// change text
				ballsRemaining--;
				mushroomCount++;
			}
		}
	}
}

void drawBall(BALL* b) {
	 if(b->active) {
	 	if (b->isMushroom)
	 		drawImage4(b->col, b->row, b->width, b->height, mushroomBitmap);
	 	else
	 		drawImage4(b->col, b->row, b->width, b->height, ghostBitmap);
	 }
}