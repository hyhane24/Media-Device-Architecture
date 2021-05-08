#include <stdlib.h>
#include <stdio.h>
#include "font.h"
#include "myLib.h"
#include "text.h"
#include "game.h"
#include "start.h"

// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
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
    GAME,
    PAUSE,
    WIN,
    LOSE
};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

//random seed
int seed;

//text buffer
char buffer[41];
char buffer2[41];

int main()
{
    initialize();

    while (1)
    {
        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
        switch (state)
        {
        case START:
            start();
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
    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;
    buttons = BUTTONS;
    oldButtons = 0;
    goToStart();
}

// Sets up the start state
void goToStart() {
    
    DMANow(3, startPal, PALETTE, 256);
    drawFullscreenImage4(startBitmap);
    
    drawString4(20, 50, "Mario, save the mushrooms!", WHITEID);

    waitForVBlank();
    flipPage();
    state = START;
    seed = 0;
}

// Runs every frame of the start state
void start() {
    seed++;
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
        srand(seed);
        goToGame();
        initGame();
    }
}

// Sets up the game state
void goToGame() {
    state = GAME;
}

// Runs every frame of the game state
void game() {
    updateGame();
    drawGame();
    
    sprintf(buffer, "You have %d more mushrooms to save", ballsRemaining);
    drawString4(15, 145, buffer, VIOREDID);

    waitForVBlank();
    flipPage();

    if (BUTTON_PRESSED(BUTTON_START))
        goToPause();
    else if (ballsRemaining == 0)
        goToWin();
}

// Sets up the pause state
void goToPause() {
    fillScreen4(PERSIANID);
    drawString4(20, 80-3, "Pause? The mushrooms are waiting!", WHITEID);
    waitForVBlank();
    flipPage();

    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
        goToGame();
    else if (BUTTON_PRESSED(BUTTON_SELECT))
        goToStart();
}

// Sets up the win state
void goToWin() {
    fillScreen4(PORTAGEID);
    drawString4(20, 80-3, "You have saved all the mushrooms!", WHITEID);
    waitForVBlank();
    flipPage();
    state = WIN;
}

// Runs every frame of the win state
void win() {
     waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}

// Sets up the lose state
void goToLose() {
}

// Runs every frame of the lose state
void lose() {
}