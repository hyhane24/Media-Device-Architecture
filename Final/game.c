#include "myLib.h"
#include "game.h"
#include "collisionmap.h"
#include "collisionmapTwo.h"
#include "collisionmapThree.h"
#include "collisionmapFour.h"
#include "gameThree.h"


// Variables
int hOff;
int vOff;
int jellyfish;
int life;
SPRITE jellyf;
SPRITE jelly;
SPRITE fish;
SPRITE flypat;
ANISPRITE patrick;
OBJ_ATTR shadowOAM[128];
ANISPRITE spongebob;

// spongebob animation states for aniState
enum {SPONGEFRONT, SPONGEBACK, SPONGERIGHT, SPONGELEFT, SPONGEIDLE};
// jellyfish animation states for aniState
enum { UP, DOWN, LEFT, RIGHT };

// level three Patrick player animation states
enum {PFRONT, PBACK, PRIGHT, PLEFT, PIDLE};

// Initialize the game
void initGame() {
    vOff = 96;
    hOff = 9;
    jellyfish = 0;
    life = 1;
    initPlayer();

	
	jellyf.width = 20;
	jellyf.height = 20;
	jellyf.row = 20;
	jellyf.col = SCREENWIDTH / 2 - jellyf.width / 2;
	jellyf.rdel = 1;
	jellyf.cdel = 1;
	jellyf.aniTimer = 0;
	jellyf.tileCol = 0; 
	jellyf.tileRow = 24;
	jellyf.direction = UP;

    jelly.width = 20;
	jelly.height = 20;
	jelly.row = 20;
	jelly.col = SCREENWIDTH / 2 - jelly.width / 2;
	jelly.rdel = 1;
	jelly.cdel = 1;
	jelly.aniTimer = 0;
	jelly.tileCol = 0; 
	jelly.tileRow = 24;
	jelly.direction = UP;

    fish.width = 20;
	fish.height = 20;
	fish.row = 20;
	fish.col = SCREENWIDTH / 2 - fish.width / 2;
	fish.rdel = 1;
	fish.cdel = 1;
	fish.aniTimer = 0;
	fish.tileCol = 0; 
	fish.tileRow = 24;
	fish.direction = UP;

    flypat.width = 20;
	flypat.height = 20;
	flypat.row = 20;
	flypat.col = SCREENWIDTH / 2 - flypat.width / 2;
	flypat.rdel = 1;
	flypat.cdel = 1;
	flypat.aniTimer = 0;
	flypat.tileCol = 0; 
	flypat.tileRow = 20;
	flypat.direction = UP;
}

void initGameThree(){
    hOff = 0;
    vOff = 0;
    buttons = BUTTONS;
    initPlayerThree();
}


// Updates game
void updateGame() {
    updatePlayer();
	updateJellyf();
    updateJelly();
    updateFish();
    updateFlypat();
}

void updateJellyf() {

	int i = rand() % 3;
	int j = rand() % 2;
	switch (i) {
		case 0:
			if (j) {
				jellyf.row -= jellyf.rdel * (rand() % 2)+3;
			} else {
				jellyf.row += jellyf.rdel * (rand() % 2)+3;
			}
			break;
		case 1:
			if (j) {
				jellyf.col -= jellyf.cdel * (rand() % 2)+3;
			} else {
				jellyf.col += jellyf.cdel * (rand() % 2)+3;
			}
			break;
		case 2:
			if (j) {
				jellyf.row -= jellyf.rdel * (rand() % 2)+3;
				jellyf.col -= jellyf.cdel * (rand() % 2)+3;
			} else {
				jellyf.row += jellyf.rdel * (rand() % 2)+3;
				jellyf.col += jellyf.cdel * (rand() % 2)+3;
			}
			break;
	}

	if (jellyf.row < 20) {
		jellyf.row = 20;
	}

	if (jellyf.row > 159 - jellyf.height) {
		jellyf.row = 159 - jellyf.height;
	}

	if (jellyf.col < 170) {
		jellyf.col = 170;
	}

	if (jellyf.col > 239 - jellyf.width) {
		jellyf.col = 239 - jellyf.width;
	}
}

void updateJelly() {

	int i = rand() % 3;
	int j = rand() % 2;
	switch (i) {
		case 0:
			if (j) {
				jelly.row -= jelly.rdel * (rand() % 2)+3;
			} else {
				jelly.row += jelly.rdel * (rand() % 2)+3;
			}
			break;
		case 1:
			if (j) {
				jelly.col -= jelly.cdel * (rand() % 2)+3;
			} else {
				jelly.col += jelly.cdel * (rand() % 2)+3;
			}
			break;
		case 2:
			if (j) {
				jelly.row -= jelly.rdel * (rand() % 2)+3;
				jelly.col -= jelly.cdel * (rand() % 2)+3;
			} else {
				jelly.row += jelly.rdel * (rand() % 2)+3;
				jelly.col += jelly.cdel * (rand() % 2)+3;
			}
			break;
	}
	if (jelly.row < 0) {
		jelly.row = 0;
	}
	if (jelly.row > 79 - jelly.height) {
		jelly.row = 79 - jelly.height;
	}
	if (jelly.col < 0) {
		jelly.col = 0;
	}

	if (jelly.col > 100 - jelly.width) {
		jelly.col = 100 - jelly.width;
	}
}

void updateFish() {

	int i = rand() % 3;
	int j = rand() % 2;
	switch (i) {
		case 0:
			if (j) {
				fish.row -= fish.rdel * (rand() % 2)+3;
			} else {
				fish.row += fish.rdel * (rand() % 2)+3;
			}
			break;
		case 1:
			if (j) {
				fish.col -= fish.cdel * (rand() % 2)+3;
			} else {
				fish.col += fish.cdel * (rand() % 2)+3;
			}
			break;
		case 2:
			if (j) {
				fish.row -= fish.rdel * (rand() % 2)+3;
				fish.col -= fish.cdel * (rand() % 2)+3;
			} else {
				fish.row += fish.rdel * (rand() % 2)+3;
				fish.col += fish.cdel * (rand() % 2)+3;
			}
			break;
	}
	if (fish.row < 0) {
		fish.row = 0;
	}

	if (fish.row > 159 - fish.height) {
		fish.row = 159 - fish.height;
	}
	if (fish.col < 0) {
		fish.col = 0;
	}

	if (fish.col > 100 - fish.width) {
		fish.col = 100 - fish.width;
	}
}

void updateFlypat(){
    int i = rand() % 3;
	int j = rand() % 2;
	switch (i) {
		case 0:
			if (j) {
				flypat.row -= flypat.rdel * (rand() % 2 + 1)+3;
			} else {
				flypat.row += flypat.rdel * (rand() % 2 + 1)+3;
			}
			break;
		case 1:
			if (j) {
				flypat.col -= flypat.cdel * (rand() % 2 + 1)+3;
			} else {
				flypat.col += flypat.cdel * (rand() % 2 + 1)+3;
			}
			break;
		case 2:
			if (j) {
				flypat.row -= flypat.rdel * (rand() % 2 + 1)+3;
				flypat.col -= flypat.cdel * (rand() % 2 + 1)+3;
			} else {
				flypat.row += flypat.rdel * (rand() % 2 + 1)+3;
				flypat.col += flypat.cdel * (rand() % 2 + 1)+3;
			}
			break;
	}

	if (flypat.row < 0) {
		flypat.row = 0;
	}

	if (flypat.row > 40 - flypat.height) {
		flypat.row = 40 - flypat.height;
	}

	if (flypat.col < 0) {
		flypat.col = 0;
	}

	if (flypat.col > 239 - flypat.width) {
		flypat.col = 239 - flypat.width;
	}
}



void updateGameTwo(){
    updatePlayerTwo();
}

void updateGameThree(){
    updatePlayerThree();
}

// Draws game
void drawGame() {
    drawPlayer();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
    

	// jellyfishes
	shadowOAM[2].attr0 = (jellyf.row & ROWMASK) | ATTR0_SQUARE;
	shadowOAM[2].attr1 = (jellyf.col & COLMASK) | ATTR1_MEDIUM;
	shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(jellyf.tileCol, jellyf.tileRow);

    shadowOAM[4].attr0 = (jelly.row & ROWMASK) | ATTR0_SQUARE;
	shadowOAM[4].attr1 = (jelly.col & COLMASK) | ATTR1_MEDIUM;
	shadowOAM[4].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(jelly.tileCol, jelly.tileRow);
    
    shadowOAM[5].attr0 = (fish.row & ROWMASK) | ATTR0_SQUARE;
	shadowOAM[5].attr1 = (fish.col & COLMASK) | ATTR1_MEDIUM;
	shadowOAM[5].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(fish.tileCol, fish.tileRow);

    shadowOAM[6].attr0 = (flypat.row & ROWMASK) | ATTR0_SQUARE;
	shadowOAM[6].attr1 = (flypat.col & COLMASK) | ATTR1_MEDIUM;
	shadowOAM[6].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(flypat.tileCol, flypat.tileRow);
}

void drawGameThree(){
    drawPlayerThree();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = 0;
}



// Initialize player
void initPlayer() {
    spongebob.width = 19; //19
    spongebob.height = 20; //20
    spongebob.rdel = 1;
    spongebob.cdel = 1;

    // middle placing of the screen
    spongebob.worldRow = SCREENHEIGHT / 2 - spongebob.width / 2 + vOff;
    spongebob.worldCol = SCREENWIDTH / 2 - spongebob.height / 2 + hOff;
    spongebob.aniCounter = 0;
    spongebob.curFrame = 0;
    spongebob.numFrames = 3;
    spongebob.aniState = SPONGEFRONT;
}

void initPlayerThree(){
    // for Patrick, var name spongebob
    spongebob.width = 20; //19
    spongebob.height = 20; //20
    spongebob.rdel = 1;
    spongebob.cdel = 1;

    // middle placing of the screen
    spongebob.worldRow = SCREENHEIGHT / 2 - spongebob.width / 2 + vOff;
    spongebob.worldCol = SCREENWIDTH / 2 - spongebob.height / 2 + hOff;
    spongebob.aniCounter = 0;
    spongebob.curFrame = 3;
    spongebob.numFrames = 3;
    spongebob.aniState = PFRONT;
}

// Update player
void updatePlayer() {

    if(BUTTON_HELD(BUTTON_UP)) {
        if (spongebob.worldRow > 0 && collisionmapBitmap[OFFSET(spongebob.worldCol, spongebob.worldRow- spongebob.rdel, MAPWIDTH)]
            && collisionmapBitmap[OFFSET(spongebob.worldCol+ spongebob.width, spongebob.worldRow- spongebob.rdel, MAPWIDTH)]) {
            
            spongebob.worldRow = spongebob.worldRow-spongebob.rdel;

            if (vOff > 0 && (spongebob.worldRow - vOff) < SCREENHEIGHT/2) {
            vOff--;
            }
        } 
        if (collisionmapTwoBitmap[OFFSET(spongebob.worldCol, spongebob.worldRow- spongebob.rdel, MAPWIDTH)]
            && collisionmapTwoBitmap[OFFSET(spongebob.worldCol+ spongebob.width, spongebob.worldRow- spongebob.rdel, MAPWIDTH)]) {
            
            life = 1;

        } else {
            life = 0;
        }
    } 

    if(BUTTON_HELD(BUTTON_DOWN)) {
        if (spongebob.worldRow + spongebob.height < MAPHEIGHT  
            && collisionmapBitmap[OFFSET(spongebob.worldCol, spongebob.worldRow+ spongebob.height+ spongebob.rdel, MAPWIDTH)]
            && collisionmapBitmap[OFFSET(spongebob.worldCol+ spongebob.width, spongebob.worldRow+ spongebob.height+ spongebob.rdel, MAPWIDTH)]) {

            spongebob.worldRow = spongebob.worldRow + spongebob.rdel;

            if (vOff + SCREENHEIGHT< MAPHEIGHT && (spongebob.worldRow- vOff) > SCREENHEIGHT/2) {
                vOff++;
            }
        } 
        if (collisionmapTwoBitmap[OFFSET(spongebob.worldCol, spongebob.worldRow+ spongebob.height+ spongebob.rdel, MAPWIDTH)]
            && collisionmapTwoBitmap[OFFSET(spongebob.worldCol+ spongebob.width, spongebob.worldRow+ spongebob.height+ spongebob.rdel, MAPWIDTH)]) {

            life = 1;

        } else {
            life = 0;
        }
    } 

    if(BUTTON_HELD(BUTTON_LEFT)) {
        if (spongebob.worldCol > 0 && collisionmapBitmap[OFFSET(spongebob.worldCol- spongebob.cdel, spongebob.worldRow, MAPWIDTH)]
            && collisionmapBitmap[OFFSET(spongebob.worldCol- spongebob.cdel, spongebob.worldRow+ spongebob.height, MAPWIDTH)]) {

            spongebob.worldCol = spongebob.worldCol- spongebob.cdel;

            if (hOff>0 && (spongebob.worldCol-hOff) < SCREENWIDTH/2) {
                hOff--;
            }
        } 
        
        if (collisionmapTwoBitmap[OFFSET(spongebob.worldCol- spongebob.cdel, spongebob.worldRow, MAPWIDTH)]
            && collisionmapTwoBitmap[OFFSET(spongebob.worldCol- spongebob.cdel, spongebob.worldRow+ spongebob.height, MAPWIDTH)]) {

            life = 1;
        } else {
            life = 0;
        }
    } 

    if(BUTTON_HELD(BUTTON_RIGHT)) {
        if (spongebob.worldCol+ spongebob.width < MAPWIDTH 
            && collisionmapBitmap[OFFSET(spongebob.worldCol+ spongebob.width+ spongebob.cdel, spongebob.worldRow, MAPWIDTH)]
            && collisionmapBitmap[OFFSET(spongebob.worldCol+ spongebob.width+ spongebob.cdel, spongebob.worldRow+ spongebob.height, MAPWIDTH)]) {

            spongebob.worldCol = spongebob.worldCol+ spongebob.cdel;

            if ( hOff+SCREENWIDTH< MAPWIDTH && (spongebob.worldCol-hOff) > SCREENWIDTH/2) {
                hOff++;
            }
        } 
        if (collisionmapTwoBitmap[OFFSET(spongebob.worldCol+ spongebob.width+ spongebob.cdel, spongebob.worldRow, MAPWIDTH)]
            && collisionmapTwoBitmap[OFFSET(spongebob.worldCol+ spongebob.width+ spongebob.cdel, spongebob.worldRow+ spongebob.height, MAPWIDTH)]) {

            life = 1;
        } else {
            life = 0;
        }
    } 

    animatePlayer();
}

void updatePlayerTwo(){

    if(BUTTON_HELD(BUTTON_UP)) {
        if (spongebob.worldRow > 0 && collisionmapThreeBitmap[OFFSET(spongebob.worldCol, spongebob.worldRow- spongebob.rdel, MAPWIDTH)]
            && collisionmapThreeBitmap[OFFSET(spongebob.worldCol+ spongebob.width, spongebob.worldRow- spongebob.rdel, MAPWIDTH)]) {
            
            spongebob.worldRow = spongebob.worldRow-spongebob.rdel;

            if (vOff > 0 && (spongebob.worldRow - vOff) < SCREENHEIGHT/2) {
            vOff--;
            }
        } else {
            jellyfish++;
        }
        if (collisionmapFourBitmap[OFFSET(spongebob.worldCol, spongebob.worldRow- spongebob.rdel, MAPWIDTH)]
            && collisionmapFourBitmap[OFFSET(spongebob.worldCol+ spongebob.width, spongebob.worldRow- spongebob.rdel, MAPWIDTH)]) {
            
            life = 1;

        } else {
            life = 0;
        }
    } 

    if(BUTTON_HELD(BUTTON_DOWN)) {
        if (spongebob.worldRow + spongebob.height < MAPHEIGHT  
            && collisionmapThreeBitmap[OFFSET(spongebob.worldCol, spongebob.worldRow+ spongebob.height+ spongebob.rdel, MAPWIDTH)]
            && collisionmapThreeBitmap[OFFSET(spongebob.worldCol+ spongebob.width, spongebob.worldRow+ spongebob.height+ spongebob.rdel, MAPWIDTH)]) {

            spongebob.worldRow = spongebob.worldRow + spongebob.rdel;

            if (vOff + SCREENHEIGHT< MAPHEIGHT && (spongebob.worldRow- vOff) > SCREENHEIGHT/2) {
                vOff++;
            }
        } else {
            jellyfish++;
        }
        if (collisionmapFourBitmap[OFFSET(spongebob.worldCol, spongebob.worldRow+ spongebob.height+ spongebob.rdel, MAPWIDTH)]
            && collisionmapFourBitmap[OFFSET(spongebob.worldCol+ spongebob.width, spongebob.worldRow+ spongebob.height+ spongebob.rdel, MAPWIDTH)]) {

            life = 1;

        } else {
            life = 0;
        }
    } 

    if(BUTTON_HELD(BUTTON_LEFT)) {
        if (spongebob.worldCol > 0 && collisionmapThreeBitmap[OFFSET(spongebob.worldCol- spongebob.cdel, spongebob.worldRow, MAPWIDTH)]
            && collisionmapThreeBitmap[OFFSET(spongebob.worldCol- spongebob.cdel, spongebob.worldRow+ spongebob.height, MAPWIDTH)]) {

            spongebob.worldCol = spongebob.worldCol- spongebob.cdel;


            if (hOff>0 && (spongebob.worldCol-hOff) < SCREENWIDTH/2) {
                hOff--;
            }
        } else {
            jellyfish++;
        }
        if (collisionmapFourBitmap[OFFSET(spongebob.worldCol- spongebob.cdel, spongebob.worldRow, MAPWIDTH)]
            && collisionmapFourBitmap[OFFSET(spongebob.worldCol- spongebob.cdel, spongebob.worldRow+ spongebob.height, MAPWIDTH)]) {

            life = 1;
        } else {
            life = 0;
        }
    } 

    if(BUTTON_HELD(BUTTON_RIGHT)) {
        if (spongebob.worldCol+ spongebob.width < MAPWIDTH 
            && collisionmapThreeBitmap[OFFSET(spongebob.worldCol+ spongebob.width+ spongebob.cdel, spongebob.worldRow, MAPWIDTH)]
            && collisionmapThreeBitmap[OFFSET(spongebob.worldCol+ spongebob.width+ spongebob.cdel, spongebob.worldRow+ spongebob.height, MAPWIDTH)]) {

            spongebob.worldCol = spongebob.worldCol+ spongebob.cdel;

            if ( hOff+SCREENWIDTH< MAPWIDTH && (spongebob.worldCol-hOff) > SCREENWIDTH/2) {
                hOff++;
            }
        } else {
            jellyfish++;
        }
        if (collisionmapFourBitmap[OFFSET(spongebob.worldCol+ spongebob.width+ spongebob.cdel, spongebob.worldRow, MAPWIDTH)]
            && collisionmapFourBitmap[OFFSET(spongebob.worldCol+ spongebob.width+ spongebob.cdel, spongebob.worldRow+ spongebob.height, MAPWIDTH)]) {

            life = 1;
        } else {
            life = 0;
        }
    } 

    animatePlayer();
}

void updatePlayerThree(){
    

    if(BUTTON_HELD(BUTTON_LEFT)) {
            spongebob.worldCol = spongebob.worldCol- spongebob.cdel;
            hOff--;
    } 

    if(BUTTON_HELD(BUTTON_RIGHT)) {
            spongebob.worldCol = spongebob.worldCol+ spongebob.cdel;
            hOff++;
        if (spongebob.worldCol+ spongebob.width == 550){
            jellyfish = 100;
        }
    } 

    if (BUTTON_HELD(BUTTON_UP)){
        spongebob.worldRow--;
        spongebob.worldCol++;
        hOff++;
        if (spongebob.worldRow == 25){
        spongebob.worldRow = SCREENHEIGHT / 2 - spongebob.width / 2 + vOff;
        } 
        if (spongebob.worldCol+ spongebob.width == 550){
            jellyfish = 100;
        }
    }

    animatePlayer();
}

// Handle player animation states
void animatePlayer() {

    // Set previous state to current state
    spongebob.prevAniState = spongebob.aniState;
    spongebob.aniState = SPONGEIDLE;

    // Change the animation frame every 10 frames of gameplay
    if(spongebob.aniCounter % 10 == 0) {
        spongebob.curFrame = (spongebob.curFrame + 1) % spongebob.numFrames;
    }

    // Control movement and change animation state
    if(BUTTON_HELD(BUTTON_UP))
        // SPONGEBACK
        spongebob.aniState = SPONGEBACK;
    if(BUTTON_HELD(BUTTON_DOWN))
        spongebob.aniState = SPONGEFRONT;
    if(BUTTON_HELD(BUTTON_LEFT))
        // SPONGELEFT
        spongebob.aniState = SPONGELEFT;
    if(BUTTON_HELD(BUTTON_RIGHT))
        // SPONGERIGHT
        spongebob.aniState = SPONGERIGHT;

    // If the spongebob aniState is idle, frame is spongebob standing
    if (spongebob.aniState == SPONGEIDLE) {
        spongebob.curFrame = 0;
        spongebob.aniCounter = 0;
        spongebob.aniState = spongebob.prevAniState;
    } else {
        spongebob.aniCounter++;
    }
}


// Draw the player
void drawPlayer() {

    if (spongebob.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = (ROWMASK & (spongebob.worldRow- vOff)) | ATTR0_SQUARE;
        shadowOAM[0].attr1 = (COLMASK & (spongebob.worldCol-hOff)) | ATTR1_MEDIUM;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(spongebob.aniState * 4, spongebob.curFrame * 4);
    }
}

void drawPlayerThree(){
    if (spongebob.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = (ROWMASK & (spongebob.worldRow- vOff)) | ATTR0_SQUARE;
        shadowOAM[0].attr1 = (COLMASK & (spongebob.worldCol-hOff)) | ATTR1_MEDIUM;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(spongebob.aniState * 4, spongebob.curFrame * 4);
    }
}
