#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "startSc.h"
#include "instructSc.h"
#include "gameOne.h"
#include "pauseSc.h"
#include "winSc.h"
#include "loseSc.h"
#include "game.h"

// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
void goToInstruction();
void instruction();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// States
enum
{
    START,
    INSTRUCTION,
    GAME,
    PAUSE,
    WIN,
    LOSE
};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;


OBJ_ATTR shadowOAM[128];

int main()
{
    initialize();

    while (1)
    {
        
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
        switch (state)
        {
        case START:
            start();
            break;
        case INSTRUCTION:
            instruction();
            break;
        case GAME:
            game();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        }
    }
}

// Sets up GBA
void initialize()
{
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_4BPP | BG_SIZE_LARGE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);

    buttons = BUTTONS;
    oldButtons = 0;

    goToStart();
}

// Sets up the start state
void goToStart() {
    DMANow(3, startScPal, PALETTE, startScPalLen/2);
    DMANow(3, startScTiles, &CHARBLOCK[0], startScTilesLen / 2);
    DMANow(3, startScMap, &SCREENBLOCK[28], startScMapLen / 2);
    REG_BG0HOFF = 0;
    state = START;
}

// Runs every frame of the start state
void start() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        initGame();
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
       goToInstruction();
    }
}

void goToInstruction(){
    DMANow(3, instructScPal, PALETTE, instructScPalLen/2);
    DMANow(3, instructScTiles, &CHARBLOCK[0], instructScTilesLen / 2);
    DMANow(3, instructScMap, &SCREENBLOCK[28], instructScMapLen / 2);
    state = INSTRUCTION;
}

void instruction(){
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        initGame();
        goToGame();
    }
}

// Sets up the game state
void goToGame() {
    DMANow(3, gameOnePal, PALETTE, gameOnePalLen / 2);
    DMANow(3, gameOneTiles, &CHARBLOCK[0], gameOneTilesLen / 2);
    DMANow(3, gameOneMap, &SCREENBLOCK[28], gameOneMapLen / 2);
    state = GAME;
}

// Runs every frame of the game state
void game() {
    updateGame();
    waitForVBlank();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToWin();
    }
    if (jellyfish > 15){
        goToWin();
    }
    if (lives == 0){
        goToLose;
    }
}

// Sets up the pause state
void goToPause() {
    DMANow(3, pauseScPal, PALETTE, pauseScPalLen/2);
    DMANow(3, pauseScTiles, &CHARBLOCK[0], pauseScTilesLen / 2);
    DMANow(3, pauseScMap, &SCREENBLOCK[28], pauseScMapLen / 2);
    REG_BG0HOFF = 0;
    waitForVBlank();
    hideSprites();
    DMANow(3, shadowOAM, OAM, (4*128));
    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    } 
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    } 
}

// Sets up the win state
void goToWin() {
    waitForVBlank();
    hideSprites();
    DMANow(3, shadowOAM, OAM, (4*128));
    DMANow(3, winScPal, PALETTE, winScPalLen/2);
    DMANow(3, winScTiles, &CHARBLOCK[0], winScTilesLen/2);
    DMANow(3, winScMap, &SCREENBLOCK[28], winScMapLen/2);
    REG_BG0HOFF = 0;
    state = WIN;
}

// Runs every frame of the win state
void win() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    } 
}

// Sets up the lose state
void goToLose() {
    waitForVBlank();
    hideSprites();
    DMANow(3, shadowOAM, OAM, (4*128));
    DMANow(3, loseScPal, PALETTE, loseScPalLen/2);
    DMANow(3, loseScTiles, &CHARBLOCK[0], loseScTilesLen/2);
    DMANow(3, loseScMap, &SCREENBLOCK[28], loseScMapLen/2);
    REG_BG0HOFF = 0;
    state = LOSE;
}

// Runs every frame of the lose state
void lose() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    } 
}