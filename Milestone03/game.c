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
OBJ_ATTR shadowOAM[128];
ANISPRITE spongebob;

// spongebob animation states for aniState
enum {SPONGEFRONT, SPONGEBACK, SPONGERIGHT, SPONGELEFT, SPONGEIDLE};

// Initialize the game
void initGame() {
    vOff = 96;
    hOff = 9;
    jellyfish = 0;
    life = 1;
    initPlayer();
}

void initGameThree(){
    hOff = 0;
    vOff = 0;
    buttons = BUTTONS;
    initPlayer();
}


// Updates game
void updateGame() {
    updatePlayer();
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

// Update player
void updatePlayer() {

    if(BUTTON_HELD(BUTTON_UP)) {
        if (spongebob.worldRow > 0 && collisionmapBitmap[OFFSET(spongebob.worldCol, spongebob.worldRow- spongebob.rdel, MAPWIDTH)]
            && collisionmapBitmap[OFFSET(spongebob.worldCol+ spongebob.width, spongebob.worldRow- spongebob.rdel, MAPWIDTH)]) {
            
            spongebob.worldRow = spongebob.worldRow-spongebob.rdel;

            if (vOff > 0 && (spongebob.worldRow - vOff) < SCREENHEIGHT/2) {
            vOff--;
            }
        } else {
            jellyfish++;
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
        } else {
            jellyfish++;
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
        } else {
            jellyfish++;
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
        } else {
            jellyfish++;
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
        spongebob.aniState = SPONGEFRONT;
    if(BUTTON_HELD(BUTTON_DOWN))
        spongebob.aniState = SPONGEFRONT;
    if(BUTTON_HELD(BUTTON_LEFT))
        // SPONGELEFT
        spongebob.aniState = SPONGEFRONT;
    if(BUTTON_HELD(BUTTON_RIGHT))
        // SPONGERIGHT
        spongebob.aniState = SPONGEFRONT;

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
