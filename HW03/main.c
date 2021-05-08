#include <stdlib.h>
#include "myLib.h"
#include "game.h"

// Prototypes
void initialize();

// State Prototypes

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
    goToStart();

}


void startState() {
    seed++;
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        srand(seed);
        initGame();
        goToGame();
        
    }
}

void goToStart() {
    fillScreen(GRAY);
    drawRect(0, 150, 240, 10, CYAN);
    drawRect(0, 0, 240, 10, RED);
    drawCircle(115,70,10,10,WHITE);
    drawCircle(115,70,4,4,CYAN);
    drawCircle(115,90,4,4,RED);
    drawCircle(115,50,4,4,RED);
    drawCircle(95,70,4,4,RED);
    drawCircle(135,70,4,4,RED);
    state = START;
}

void gameState () {
    updateGame();
    waitForVBlank();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        goToPause();
    }
    
    // if all the covid virus caught, user wins 
    if (ballsRemaining == 0){
        goToWin();
    } 

    // if vaccine accidently hits white blood cell, user loses 
    if (ballsRemaining == 100){
        goToLose();
    } 
   
    if (BUTTON_PRESSED(BUTTON_A)){
        goToLose();
    }
}

void goToGame() {
    fillScreen(COLOR(255,51,51));
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
    fillScreen(PINK);
    state = PAUSE; 
}

void winState() {
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        goToStart();
    }
}

void goToWin(){
    fillScreen(CYAN);
    drawRect(0, 150, 240, 10, COLOR(186,0,0));
    state = WIN;
}

void loseState() {
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        goToStart();
    }
}

void goToLose(){
    fillScreen(RED);
    drawRect(0, 150, 240, 10, COLOR(186,0,0));
    state = LOSE;
}


