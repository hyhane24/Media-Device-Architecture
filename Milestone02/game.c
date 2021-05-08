#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "gameOne.h"
#include "spongeBob.h"
#include "spritesheet.h"


// Prototypes
void initGame();
void drawGame();
void updateGame();
void initPlayer();
void updatePlayer();

PLAYER sponge;

OBJ_ATTR shadowOAM[128];

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

unsigned short hOff;
unsigned short vOff;


JELLYFISH jelly;
BARNACLE barna;
ANISPRITE spongeBob;

enum { SPRITEFRONT, SPRITEBACK, SPRITERIGHT, SPRITELEFT, SPRITEIDLE};

void initGame() {
    DMANow(3, gameOnePal, PALETTE, gameOnePalLen/2);
	REG_BG1CNT = BG_SIZE_WIDE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);
    DMANow(3, gameOneTiles, &CHARBLOCK[0], gameOneTilesLen/2);
    DMANow(3, gameOneMap, &SCREENBLOCK[28], gameOneMapLen/2);
	initPlayer();
    hOff = 5;
    buttons = BUTTONS;
	lives = 3;
	jellyfish = 0;
}

void drawGame() {
    // scroll background
    if(BUTTON_HELD(BUTTON_LEFT)) {
        hOff--;
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        hOff++;
    }
    waitForVBlank();
    REG_BG0HOFF = hOff;
}

void updateGame(){
	updatePlayer();
}

void initPlayer(){
	DMANow (3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE; 
    spongeBob.width = 32;
    spongeBob.height = 32;
    spongeBob.cdel = 1;
    spongeBob.rdel = 1;
    spongeBob.col = SCREENWIDTH/2 - (spongeBob.width/2);
    spongeBob.row = SCREENHEIGHT/2 - (spongeBob.height/2) + 36;
	spongeBob.aniCounter = 0;
    spongeBob.curFrame = 0;
    spongeBob.numFrames = 3;
    spongeBob.aniState = SPRITEFRONT;

}

void updatePlayer(){
	spongeBob.prevAniState = spongeBob.aniState;
    spongeBob.aniState = SPRITEIDLE;
	if(BUTTON_HELD(BUTTON_UP)) {
        vOff--;
    }
    if(BUTTON_HELD(BUTTON_DOWN)) {
        vOff++;
    }

	if (spongeBob.aniState == SPRITEIDLE){
        spongeBob.curFrame = 0;
        spongeBob.aniState = spongeBob.prevAniState;
    } else {
        spongeBob.aniCounter++;
    }
	shadowOAM[0].attr0 = spongeBob.row | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = spongeBob.col | ATTR1_MEDIUM;
    shadowOAM[0].attr2 = ATTR2_TILEID(spongeBob.aniState * 4, spongeBob.curFrame*4) | ATTR2_PALROW(0);
}

void contactJelly(){
	if (collision(spongeBob.col, spongeBob.row, spongeBob.width, spongeBob.height,
	jelly.col, jelly.row, jelly.width, jelly.height)){
		jellyfish++;
	}
}

void contactBarnacle(){
	if (collision(spongeBob.col, spongeBob.row, spongeBob.width, spongeBob.height,
	barna.col, barna.row, barna.width, barna.height)){
		lives--;
	}
}



