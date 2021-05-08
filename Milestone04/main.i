# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
    u16 tileimg[8192];
} charblock;


typedef struct {
    u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "myLib.h"
void hideSprites();






typedef struct {
    int row;
    int col;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
    int tileCol;
 int tileRow;
} ANISPRITE;

typedef struct {
 int row;
 int col;
 int rdel;
 int cdel;
 int width;
 int height;
 int aniTimer;
 int numFrames;
 int tileCol;
 int tileRow;
 int direction;
} SPRITE;
# 215 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 226 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 266 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 302 "myLib.h"
typedef void (*ihp)(void);
# 323 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "main.c" 2
# 1 "game.h" 1





extern int hOff;
extern int vOff;
extern int jellyfish;
extern int life;
extern OBJ_ATTR shadowOAM[128];
extern ANISPRITE spongebob;
extern SPRITE jellyf;
extern SPRITE jelly;
extern SPRITE fish;
extern SPRITE flypat;
extern ANISPRITE patrick;


void initGame();
void initGameThree();
void updateGame();
void updateGameTwo();
void updateGameThree();
void drawGame();
void drawGameThree();
void initPlayer();
void updatePlayer();
void updatePlayerTwo();
void updatePlayerThree();
void animatePlayer();
void drawPlayer();
# 3 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[16];
# 4 "main.c" 2
# 1 "startSc.h" 1
# 22 "startSc.h"
extern const unsigned short startScTiles[6992];


extern const unsigned short startScMap[1024];


extern const unsigned short startScPal[16];
# 5 "main.c" 2
# 1 "instructSc.h" 1
# 22 "instructSc.h"
extern const unsigned short instructScTiles[6096];


extern const unsigned short instructScMap[1024];


extern const unsigned short instructScPal[16];
# 6 "main.c" 2
# 1 "pauseSc.h" 1
# 22 "pauseSc.h"
extern const unsigned short pauseScTiles[5920];


extern const unsigned short pauseScMap[1024];


extern const unsigned short pauseScPal[16];
# 7 "main.c" 2
# 1 "winSc.h" 1
# 22 "winSc.h"
extern const unsigned short winScTiles[7440];


extern const unsigned short winScMap[1024];


extern const unsigned short winScPal[16];
# 8 "main.c" 2
# 1 "loseSc.h" 1
# 22 "loseSc.h"
extern const unsigned short loseScTiles[3248];


extern const unsigned short loseScMap[1024];


extern const unsigned short loseScPal[16];
# 9 "main.c" 2
# 1 "gameOne.h" 1
# 22 "gameOne.h"
extern const unsigned short gameOneTiles[11968];


extern const unsigned short gameOneMap[1024];


extern const unsigned short gameOnePal[16];
# 10 "main.c" 2
# 1 "gameTwo.h" 1
# 22 "gameTwo.h"
extern const unsigned short gameTwoTiles[14800];


extern const unsigned short gameTwoMap[1024];


extern const unsigned short gameTwoPal[16];
# 11 "main.c" 2
# 1 "gameThree.h" 1
# 22 "gameThree.h"
extern const unsigned short gameThreeTiles[5776];


extern const unsigned short gameThreeMap[2048];


extern const unsigned short gameThreePal[16];
# 12 "main.c" 2
# 1 "theme.h" 1


extern const unsigned int theme_sampleRate;
extern const unsigned int theme_length;
extern const signed char theme_data[];
# 13 "main.c" 2
# 1 "lose.h" 1


extern const unsigned int lose_sampleRate;
extern const unsigned int lose_length;
extern const signed char lose_data[];
# 14 "main.c" 2
# 1 "hello.h" 1


extern const unsigned int hello_sampleRate;
extern const unsigned int hello_length;
extern const signed char hello_data[];
# 15 "main.c" 2
# 1 "sound.h" 1
void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 49 "sound.h"
typedef struct{
    const signed char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 16 "main.c" 2
# 1 "spritesheetTwo.h" 1
# 21 "spritesheetTwo.h"
extern const unsigned short spritesheetTwoTiles[16384];


extern const unsigned short spritesheetTwoPal[16];
# 17 "main.c" 2





void initialize();


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


unsigned short buttons;
unsigned short oldButtons;

int main() {

    initialize();

    while(1) {


        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);


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


void initialize() {


    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
    (*(volatile unsigned short*)0x4000008) = (0<<14) | (0<<7) | ((0)<<2) | ((28)<<8);


    setupSounds();
 setupInterrupts();


    goToStart();
}


void goToStart() {
    DMANow(3, startScPal, ((unsigned short *)0x5000000), 32/2);
    DMANow(3, startScTiles, &((charblock *)0x6000000)[0], 13984 / 2);
    DMANow(3, startScMap, &((screenblock *)0x6000000)[28], 2048 / 2);
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;
    stopSound();
 playSoundA(theme_data, theme_length, 1);
    state = START;
}


void start() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        stopSound();
  playSoundA(theme_data, theme_length, 1);
        goToGame();
        initGame();
    }
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
       pauseSound();
       goToInstruction();
    }
    if ((!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
        stopSound();
  playSoundA(theme_data, theme_length, 1);
        goToCheatOne();
        initGame();
    }
}


void goToInstruction(){
    DMANow(3, instructScPal, ((unsigned short *)0x5000000), 32/2);
    DMANow(3, instructScTiles, &((charblock *)0x6000000)[0], 12192 / 2);
    DMANow(3, instructScMap, &((screenblock *)0x6000000)[28], 2048 / 2);
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;
    state = INSTRUCTION;
}

void instruction(){
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        unpauseSound();
        goToStart();
    }
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        initGame();
        goToGame();
    }
}


void goToGame() {
    waitForVBlank();
    DMANow(3, gameOnePal, ((unsigned short *)0x5000000), 32/2);
    DMANow(3, gameOneTiles, &((charblock *)0x6000000)[0], 23936 / 2);
    DMANow(3, gameOneMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    (*(volatile unsigned short *)0x04000012) = vOff;
    (*(volatile unsigned short *)0x04000010) = hOff;
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 32 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    state = GAME;
}

void game() {
    updateGame();
    drawGame();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
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


void goToGameTwo() {
    waitForVBlank();
    DMANow(3, gameTwoPal, ((unsigned short *)0x5000000), 32/2);
    DMANow(3, gameTwoTiles, &((charblock *)0x6000000)[0], 29600 / 2);
    DMANow(3, gameTwoMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    (*(volatile unsigned short *)0x04000012) = vOff;
    (*(volatile unsigned short *)0x04000010) = hOff;
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 32 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    state = GAMETWO;
}

void gameTwo() {
    updateGame();
    updateGameTwo();
    drawGame();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
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
    DMANow(3, gameThreePal, ((unsigned short *)0x5000000), 32/2);
    DMANow(3, gameThreeTiles, &((charblock *)0x6000000)[0], 11552 / 2);
    DMANow(3, gameThreeMap, &((screenblock *)0x6000000)[28], 4096 / 2);

    (*(volatile unsigned short *)0x04000012) = 0;
    (*(volatile unsigned short *)0x04000010) = 0;
    DMANow(3, spritesheetTwoTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetTwoPal, ((unsigned short *)0x5000200), 32 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    state = GAMETHREE;
}

void gameThree(){
    updateGameThree();
    drawGameThree();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
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

    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        initGameThree();
        goToGameThree();
    }

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
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
    DMANow(3, gameOnePal, ((unsigned short *)0x5000000), 32/2);
    DMANow(3, gameOneTiles, &((charblock *)0x6000000)[0], 23936 / 2);
    DMANow(3, gameOneMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    (*(volatile unsigned short *)0x04000012) = vOff;
    (*(volatile unsigned short *)0x04000010) = hOff;
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 32 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    state = CHEATONE;
}

void cheatTwo(){
    updateGame();
    updateGameTwo();
    drawGame();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
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
    DMANow(3, gameTwoPal, ((unsigned short *)0x5000000), 32/2);
    DMANow(3, gameTwoTiles, &((charblock *)0x6000000)[0], 29600 / 2);
    DMANow(3, gameTwoMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    (*(volatile unsigned short *)0x04000012) = vOff;
    (*(volatile unsigned short *)0x04000010) = hOff;
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 32 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    state = CHEATTWO;
}
void cheatThree(){
    updateGameThree();
    drawGameThree();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
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
    DMANow(3, gameThreePal, ((unsigned short *)0x5000000), 32/2);
    DMANow(3, gameThreeTiles, &((charblock *)0x6000000)[0], 11552 / 2);
    DMANow(3, gameThreeMap, &((screenblock *)0x6000000)[28], 4096 / 2);

    (*(volatile unsigned short *)0x04000012) = 0;
    (*(volatile unsigned short *)0x04000010) = 0;
    DMANow(3, spritesheetTwoTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetTwoPal, ((unsigned short *)0x5000200), 32 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    state = CHEATTHREE;
}


void goToPause() {
    DMANow(3, pauseScPal, ((unsigned short *)0x5000000), 32/2);
    DMANow(3, pauseScTiles, &((charblock *)0x6000000)[0], 11840 / 2);
    DMANow(3, pauseScMap, &((screenblock *)0x6000000)[28], 2048 / 2);
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;
    waitForVBlank();
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), (4*128));
    state = PAUSE;
}


void pause() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {

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
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        goToStart();
    }
}


void goToWin() {
    waitForVBlank();
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), (4*128));
    DMANow(3, winScPal, ((unsigned short *)0x5000000), 32/2);
    DMANow(3, winScTiles, &((charblock *)0x6000000)[0], 14880/2);
    DMANow(3, winScMap, &((screenblock *)0x6000000)[28], 2048/2);
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;
    state = WIN;
}


void win() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }
}


void goToLose() {
    waitForVBlank();
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), (4*128));
    DMANow(3, loseScPal, ((unsigned short *)0x5000000), 32/2);
    DMANow(3, loseScTiles, &((charblock *)0x6000000)[0], 6496/2);
    DMANow(3, loseScMap, &((screenblock *)0x6000000)[28], 2048/2);
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;
    stopSound();
 playSoundA(lose_data, lose_length, 1);
 playSoundB(hello_data, hello_length, 0);
    state = LOSE;
}


void lose() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }
}
