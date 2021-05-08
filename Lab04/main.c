#include <stdlib.h>
#include "myLib.h"
#include "game.h"

// Prototypes
void initialize();

// State Prototypes
// TODO 1.2: Add your state and state transition function prototypes here

void startState();
void goToStart();
void gameState();
void goToGame();
void pauseState();
void goToPause();
void winState();
void goToWin();
void loseState();
void goToLose();

// States
enum {START, GAME, PAUSE, WIN, LOSE};
int state;


// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Random Seed
int seed;

int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;
                
        // State Machine
        // TODO 1.0: Make the state machine here     

        switch (state) {
            case START:
            startState();
            break;
            case GAME:
            gameState();
            break;
            case PAUSE:
            pauseState();
            break;
            case WIN:
            winState();
            break;
            case LOSE:
            loseState();
            break;
            default:
            break;
        }
               
    }
}

// Sets up GBA
void initialize() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;

    // TODO 1.3: Call your goToStart function here
    goToStart();

}

// TODO 1.1: Make your state and state transition functions
// The diagram instructions and the written instructions differed in the pdf 
// so I followed the written instructions (in terms of button directions and stuff)

void startState() {
    seed++;
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        srand(seed);
        initGame();
        goToGame();
        
    }
}

void goToStart() {
    fillScreen(PINK);
    state = START;
}

void gameState () {
    updateGame();
    waitForVBlank();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        goToPause();
    }
    
    /* if (BUTTON_PRESSED(BUTTON_B)){
        goToWin();
    } */

     if (ballsRemaining == 0){
        goToWin();
    } 
    if (BUTTON_PRESSED(BUTTON_A)){
        goToLose();
    }
}

void goToGame() {
    fillScreen(BLACK);
    state = GAME;
}

void pauseState() {
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_START)){
        goToStart();
    }
}

void goToPause() {
    fillScreen(GOLD);
    state = PAUSE; 
}

void winState() {
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        goToStart();
    }
}

void goToWin(){
    fillScreen(GREEN);
    state = WIN;
}

void loseState() {
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        goToStart();
    }
}

void goToLose(){
    fillScreen(RED);
    state = LOSE;
}


