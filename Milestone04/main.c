#include "myLib.h"
#include "game.h"
#include "spritesheet.h"
#include "startSc.h"
#include "instructSc.h"
#include "pauseSc.h"
#include "winSc.h"
#include "loseSc.h"
#include "gameOne.h"
#include "gameTwo.h"
#include "gameThree.h"
#include "theme.h"
#include "lose.h"
#include "hello.h"
#include "sound.h"
#include "spritesheetTwo.h"

// Notes written in readme.txt file


// Prototypes
void initialize();

// State prototypes
void goToStart();
void start();
void goToInstruction();
void instruction();
void goToGame();
void game();
void goToGameTwo();
void gameTwo();
void goToGameThree();
void gameThree();
void cheatOne();
void goToCheatOne();
void cheatTwo();
void goToCheatTwo();
void cheatThree();
void goToCheatThree();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// States
enum {
    START,
    INSTRUCTION,
    GAME,
    GAMETWO,
    GAMETHREE,
    CHEATONE,
    CHEATTWO,
    CHEATTHREE,
    PAUSE,
    WIN,
    LOSE
};
int state;

int prevState;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
        switch(state) {
        case START:
            start();
            break;
        case INSTRUCTION:
            instruction();
            break;
        case GAME:
            game();
            break;
        case GAMETWO:
            gameTwo();
            break;
        case GAMETHREE:
            gameThree();
            break; 
        case CHEATONE:
            cheatOne();
            break; 
        case CHEATTWO:
            cheatTwo();
            break; 
        case CHEATTHREE:
            cheatThree();
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
void initialize() {

    // Set up the display
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_4BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);
    
    // sounds and interrupts 
    setupSounds();
	setupInterrupts();
    
    // Set up the first state
    goToStart();
}

// Sets up the start state
void goToStart() {
    DMANow(3, startScPal, PALETTE, startScPalLen/2);
    DMANow(3, startScTiles, &CHARBLOCK[0], startScTilesLen / 2);
    DMANow(3, startScMap, &SCREENBLOCK[28], startScMapLen / 2);
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    stopSound();  
	playSoundA(theme_data, theme_length, 1);
    state = START;
}

// Runs every frame of the start state
void start() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
		playSoundA(theme_data, theme_length, 1);
        goToGame();
        initGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
       pauseSound();
       goToInstruction();
    }
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        stopSound();
		playSoundA(theme_data, theme_length, 1);
        goToCheatOne();
        initGame();
    }
}

// Sets up instruction 
void goToInstruction(){
    DMANow(3, instructScPal, PALETTE, instructScPalLen/2);
    DMANow(3, instructScTiles, &CHARBLOCK[0], instructScTilesLen / 2);
    DMANow(3, instructScMap, &SCREENBLOCK[28], instructScMapLen / 2);
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    state = INSTRUCTION;
}

void instruction(){
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        unpauseSound();
        goToStart();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        initGame();
        goToGame();
    }
}

// Sets up the game state
void goToGame() {
    waitForVBlank();
    DMANow(3, gameOnePal, PALETTE, gameOnePalLen/2);
    DMANow(3, gameOneTiles, &CHARBLOCK[0], gameOneTilesLen / 2);
    DMANow(3, gameOneMap, &SCREENBLOCK[28], gameOneMapLen / 2);

    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = GAME;
}
// Runs game
void game() {
    updateGame();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
        prevState = 1;
    }
    if (life == 0){
        goToLose();
    }
    if (collision(spongebob.worldCol, spongebob.worldRow, spongebob.width, spongebob.height, jellyf.col, jellyf.row, jellyf.width, jellyf.height)) {
		stopSound();
		playSoundA(theme_data, theme_length, 1);
        initGame();
        goToGameTwo();
	}
    if (collision(spongebob.worldCol, spongebob.worldRow, spongebob.width, spongebob.height, jelly.col, jelly.row, jelly.width, jelly.height)) {
		stopSound();
		playSoundA(theme_data, theme_length, 1);
        initGame();
        goToGameTwo();
	}
    if (collision(spongebob.worldCol, spongebob.worldRow, spongebob.width, spongebob.height, fish.col, fish.row, fish.width, fish.height)) {
		stopSound();
		playSoundA(theme_data, theme_length, 1);
        initGame();
        goToGameTwo();
	}
    if (collision(spongebob.worldCol, spongebob.worldRow, spongebob.width, spongebob.height, flypat.col, flypat.row, flypat.width, flypat.height)) {
		goToLose();
	}
}

// Sets up the game state for level 2
void goToGameTwo() {
    waitForVBlank();
    DMANow(3, gameTwoPal, PALETTE, gameTwoPalLen/2);
    DMANow(3, gameTwoTiles, &CHARBLOCK[0], gameTwoTilesLen / 2);
    DMANow(3, gameTwoMap, &SCREENBLOCK[28], gameTwoMapLen / 2);

    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = GAMETWO;
}
// Runs game for level 2
void gameTwo() {
    updateGame();
    updateGameTwo();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
        prevState = 2;
    }
    if (life == 0){
        goToLose();
    }
    if (collision(spongebob.worldCol, spongebob.worldRow, spongebob.width, spongebob.height, jellyf.col, jellyf.row, jellyf.width, jellyf.height)) {
        stopSound();
		playSoundA(theme_data, theme_length, 1);
        initGameThree();
        goToGameThree();
	}
    if (collision(spongebob.worldCol, spongebob.worldRow, spongebob.width, spongebob.height, jelly.col, jelly.row, jelly.width, jelly.height)) {
        stopSound();
		playSoundA(theme_data, theme_length, 1);
        initGameThree();
        goToGameThree();
	}
    if (collision(spongebob.worldCol, spongebob.worldRow, spongebob.width, spongebob.height, fish.col, fish.row, fish.width, fish.height)) {
        stopSound();
		playSoundA(theme_data, theme_length, 1);
        initGameThree();
        goToGameThree();
	}
    if (collision(spongebob.worldCol, spongebob.worldRow, spongebob.width, spongebob.height, flypat.col, flypat.row, flypat.width, flypat.height)) {
		goToLose();
	}
}

void goToGameThree(){
    waitForVBlank();
    DMANow(3, gameThreePal, PALETTE, gameThreePalLen/2);
    DMANow(3, gameThreeTiles, &CHARBLOCK[0], gameThreeTilesLen / 2);
    DMANow(3, gameThreeMap, &SCREENBLOCK[28], gameThreeMapLen / 2);

    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    DMANow(3, spritesheetTwoTiles, &CHARBLOCK[4], spritesheetTwoTilesLen / 2);
    DMANow(3, spritesheetTwoPal, SPRITEPALETTE, spritesheetTwoPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = GAMETHREE;
}

void gameThree(){
    updateGameThree();
    drawGameThree();
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
        prevState = 3;
    }
    if (jellyfish == 100){
        stopSound();
		playSoundA(theme_data, theme_length, 1);
        goToWin();
    }
}

void cheatOne(){
    updateGame();
    drawGame();

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        initGameThree();
        goToGameThree();
    }
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
        prevState = 4;
    }
    if (collision(spongebob.worldCol, spongebob.worldRow, spongebob.width, spongebob.height, jellyf.col, jellyf.row, jellyf.width, jellyf.height)) {
		stopSound();
		playSoundA(theme_data, theme_length, 1);
        initGame();
        goToCheatTwo();
	}
    if (collision(spongebob.worldCol, spongebob.worldRow, spongebob.width, spongebob.height, jelly.col, jelly.row, jelly.width, jelly.height)) {
		stopSound();
		playSoundA(theme_data, theme_length, 1);
        initGame();
        goToCheatTwo();
	}
    if (collision(spongebob.worldCol, spongebob.worldRow, spongebob.width, spongebob.height, fish.col, fish.row, fish.width, fish.height)) {
		stopSound();
		playSoundA(theme_data, theme_length, 1);
        initGame();
        goToCheatTwo();
	}
}
void goToCheatOne(){
    waitForVBlank();
    DMANow(3, gameOnePal, PALETTE, gameOnePalLen/2);
    DMANow(3, gameOneTiles, &CHARBLOCK[0], gameOneTilesLen / 2);
    DMANow(3, gameOneMap, &SCREENBLOCK[28], gameOneMapLen / 2);

    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = CHEATONE;
}

void cheatTwo(){
    updateGame();
    updateGameTwo();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
        prevState = 5;
    }
    if (collision(spongebob.worldCol, spongebob.worldRow, spongebob.width, spongebob.height, jellyf.col, jellyf.row, jellyf.width, jellyf.height)) {
        stopSound();
		playSoundA(theme_data, theme_length, 1);
        initGameThree();
        goToCheatThree();
	}
    if (collision(spongebob.worldCol, spongebob.worldRow, spongebob.width, spongebob.height, jelly.col, jelly.row, jelly.width, jelly.height)) {
        stopSound();
		playSoundA(theme_data, theme_length, 1);
        initGameThree();
        goToCheatThree();
	}
    if (collision(spongebob.worldCol, spongebob.worldRow, spongebob.width, spongebob.height, fish.col, fish.row, fish.width, fish.height)) {
        stopSound();
		playSoundA(theme_data, theme_length, 1);
        initGameThree();
        goToCheatThree();
	}
}
void goToCheatTwo(){
    waitForVBlank();
    DMANow(3, gameTwoPal, PALETTE, gameTwoPalLen/2);
    DMANow(3, gameTwoTiles, &CHARBLOCK[0], gameTwoTilesLen / 2);
    DMANow(3, gameTwoMap, &SCREENBLOCK[28], gameTwoMapLen / 2);

    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = CHEATTWO;
}
void cheatThree(){
    updateGameThree();
    drawGameThree();
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
        prevState = 6;
    }
    if (jellyfish == 100){
        stopSound();
		playSoundA(theme_data, theme_length, 1);
        goToWin();
    }
}
void goToCheatThree(){
    waitForVBlank();
    DMANow(3, gameThreePal, PALETTE, gameThreePalLen/2);
    DMANow(3, gameThreeTiles, &CHARBLOCK[0], gameThreeTilesLen / 2);
    DMANow(3, gameThreeMap, &SCREENBLOCK[28], gameThreeMapLen / 2);

    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    DMANow(3, spritesheetTwoTiles, &CHARBLOCK[4], spritesheetTwoTilesLen / 2);
    DMANow(3, spritesheetTwoPal, SPRITEPALETTE, spritesheetTwoPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = CHEATTHREE;
}

// Sets up the pause state
void goToPause() {
    DMANow(3, pauseScPal, PALETTE, pauseScPalLen/2);
    DMANow(3, pauseScTiles, &CHARBLOCK[0], pauseScTilesLen / 2);
    DMANow(3, pauseScMap, &SCREENBLOCK[28], pauseScMapLen / 2);
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    waitForVBlank();
    hideSprites();
    DMANow(3, shadowOAM, OAM, (4*128));
    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        
        if (prevState == 1){
        unpauseSound();
        goToGame();
        }

        if (prevState == 2){
        unpauseSound();
        goToGameTwo();
        }

        if (prevState == 3){
        unpauseSound();
        goToGameThree();
        }

        if (prevState == 4){
        unpauseSound();
        goToCheatOne();
        }

        if (prevState == 5){
        unpauseSound();
        goToCheatTwo();
        }

        if (prevState == 6){
        unpauseSound();
        goToCheatThree();
        }
        
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
    REG_BG0VOFF = 0;
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
    REG_BG0VOFF = 0;
    stopSound();
	playSoundA(lose_data, lose_length, 1);
	playSoundB(hello_data, hello_length, 0);
    state = LOSE;
}

// Runs every frame of the lose state
void lose() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    } 
}
