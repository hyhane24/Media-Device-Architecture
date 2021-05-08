# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
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
} ANISPRITE;
# 198 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 209 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 249 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "game.c" 2
# 1 "game.h" 1





extern int hOff;
extern int vOff;
extern int jellyfish;
extern int life;
extern OBJ_ATTR shadowOAM[128];
extern ANISPRITE spongebob;


void initGame();
void initGameThree();
void updateGame();
void updateGameTwo();
void updateGameThree();
void drawGame();
void initPlayer();
void updatePlayer();
void updatePlayerTwo();
void updatePlayerThree();
void animatePlayer();
void drawPlayer();
# 3 "game.c" 2
# 1 "collisionmap.h" 1
# 20 "collisionmap.h"
extern const unsigned short collisionmapBitmap[65536];
# 4 "game.c" 2
# 1 "collisionmapTwo.h" 1
# 20 "collisionmapTwo.h"
extern const unsigned short collisionmapTwoBitmap[65536];
# 5 "game.c" 2
# 1 "collisionmapThree.h" 1
# 20 "collisionmapThree.h"
extern const unsigned short collisionmapThreeBitmap[65536];
# 6 "game.c" 2
# 1 "collisionmapFour.h" 1
# 20 "collisionmapFour.h"
extern const unsigned short collisionmapFourBitmap[65536];
# 7 "game.c" 2
# 1 "gameThree.h" 1
# 22 "gameThree.h"
extern const unsigned short gameThreeTiles[5776];


extern const unsigned short gameThreeMap[2048];


extern const unsigned short gameThreePal[16];
# 8 "game.c" 2



int hOff;
int vOff;
int jellyfish;
int life;
OBJ_ATTR shadowOAM[128];
ANISPRITE spongebob;


enum {SPONGEFRONT, SPONGEBACK, SPONGERIGHT, SPONGELEFT, SPONGEIDLE};


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
    buttons = (*(volatile unsigned short *)0x04000130);
    initPlayer();
}



void updateGame() {
    updatePlayer();
}

void updateGameTwo(){
    updatePlayerTwo();
}

void updateGameThree(){
    updatePlayerThree();
}


void drawGame() {
    drawPlayer();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    (*(volatile unsigned short *)0x04000010) = hOff;
    (*(volatile unsigned short *)0x04000012) = vOff;
}




void initPlayer() {
    spongebob.width = 19;
    spongebob.height = 20;
    spongebob.rdel = 1;
    spongebob.cdel = 1;


    spongebob.worldRow = 160 / 2 - spongebob.width / 2 + vOff;
    spongebob.worldCol = 240 / 2 - spongebob.height / 2 + hOff;
    spongebob.aniCounter = 0;
    spongebob.curFrame = 0;
    spongebob.numFrames = 3;
    spongebob.aniState = SPONGEFRONT;
}


void updatePlayer() {

    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
        if (spongebob.worldRow > 0 && collisionmapBitmap[((spongebob.worldRow- spongebob.rdel)*(256)+(spongebob.worldCol))]
            && collisionmapBitmap[((spongebob.worldRow- spongebob.rdel)*(256)+(spongebob.worldCol+ spongebob.width))]) {

            spongebob.worldRow = spongebob.worldRow-spongebob.rdel;

            if (vOff > 0 && (spongebob.worldRow - vOff) < 160/2) {
            vOff--;
            }
        } else {
            jellyfish++;
        }
        if (collisionmapTwoBitmap[((spongebob.worldRow- spongebob.rdel)*(256)+(spongebob.worldCol))]
            && collisionmapTwoBitmap[((spongebob.worldRow- spongebob.rdel)*(256)+(spongebob.worldCol+ spongebob.width))]) {

            life = 1;

        } else {
            life = 0;
        }
    }

    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
        if (spongebob.worldRow + spongebob.height < 256
            && collisionmapBitmap[((spongebob.worldRow+ spongebob.height+ spongebob.rdel)*(256)+(spongebob.worldCol))]
            && collisionmapBitmap[((spongebob.worldRow+ spongebob.height+ spongebob.rdel)*(256)+(spongebob.worldCol+ spongebob.width))]) {

            spongebob.worldRow = spongebob.worldRow + spongebob.rdel;

            if (vOff + 160< 256 && (spongebob.worldRow- vOff) > 160/2) {
                vOff++;
            }
        } else {
            jellyfish++;
        }
        if (collisionmapTwoBitmap[((spongebob.worldRow+ spongebob.height+ spongebob.rdel)*(256)+(spongebob.worldCol))]
            && collisionmapTwoBitmap[((spongebob.worldRow+ spongebob.height+ spongebob.rdel)*(256)+(spongebob.worldCol+ spongebob.width))]) {

            life = 1;

        } else {
            life = 0;
        }
    }

    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        if (spongebob.worldCol > 0 && collisionmapBitmap[((spongebob.worldRow)*(256)+(spongebob.worldCol- spongebob.cdel))]
            && collisionmapBitmap[((spongebob.worldRow+ spongebob.height)*(256)+(spongebob.worldCol- spongebob.cdel))]) {

            spongebob.worldCol = spongebob.worldCol- spongebob.cdel;

            if (hOff>0 && (spongebob.worldCol-hOff) < 240/2) {
                hOff--;
            }
        } else {
            jellyfish++;
        }
        if (collisionmapTwoBitmap[((spongebob.worldRow)*(256)+(spongebob.worldCol- spongebob.cdel))]
            && collisionmapTwoBitmap[((spongebob.worldRow+ spongebob.height)*(256)+(spongebob.worldCol- spongebob.cdel))]) {

            life = 1;
        } else {
            life = 0;
        }
    }

    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        if (spongebob.worldCol+ spongebob.width < 256
            && collisionmapBitmap[((spongebob.worldRow)*(256)+(spongebob.worldCol+ spongebob.width+ spongebob.cdel))]
            && collisionmapBitmap[((spongebob.worldRow+ spongebob.height)*(256)+(spongebob.worldCol+ spongebob.width+ spongebob.cdel))]) {

            spongebob.worldCol = spongebob.worldCol+ spongebob.cdel;

            if ( hOff+240< 256 && (spongebob.worldCol-hOff) > 240/2) {
                hOff++;
            }
        } else {
            jellyfish++;
        }
        if (collisionmapTwoBitmap[((spongebob.worldRow)*(256)+(spongebob.worldCol+ spongebob.width+ spongebob.cdel))]
            && collisionmapTwoBitmap[((spongebob.worldRow+ spongebob.height)*(256)+(spongebob.worldCol+ spongebob.width+ spongebob.cdel))]) {

            life = 1;
        } else {
            life = 0;
        }
    }

    animatePlayer();
}

void updatePlayerTwo(){

    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
        if (spongebob.worldRow > 0 && collisionmapThreeBitmap[((spongebob.worldRow- spongebob.rdel)*(256)+(spongebob.worldCol))]
            && collisionmapThreeBitmap[((spongebob.worldRow- spongebob.rdel)*(256)+(spongebob.worldCol+ spongebob.width))]) {

            spongebob.worldRow = spongebob.worldRow-spongebob.rdel;

            if (vOff > 0 && (spongebob.worldRow - vOff) < 160/2) {
            vOff--;
            }
        } else {
            jellyfish++;
        }
        if (collisionmapFourBitmap[((spongebob.worldRow- spongebob.rdel)*(256)+(spongebob.worldCol))]
            && collisionmapFourBitmap[((spongebob.worldRow- spongebob.rdel)*(256)+(spongebob.worldCol+ spongebob.width))]) {

            life = 1;

        } else {
            life = 0;
        }
    }

    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
        if (spongebob.worldRow + spongebob.height < 256
            && collisionmapThreeBitmap[((spongebob.worldRow+ spongebob.height+ spongebob.rdel)*(256)+(spongebob.worldCol))]
            && collisionmapThreeBitmap[((spongebob.worldRow+ spongebob.height+ spongebob.rdel)*(256)+(spongebob.worldCol+ spongebob.width))]) {

            spongebob.worldRow = spongebob.worldRow + spongebob.rdel;

            if (vOff + 160< 256 && (spongebob.worldRow- vOff) > 160/2) {
                vOff++;
            }
        } else {
            jellyfish++;
        }
        if (collisionmapFourBitmap[((spongebob.worldRow+ spongebob.height+ spongebob.rdel)*(256)+(spongebob.worldCol))]
            && collisionmapFourBitmap[((spongebob.worldRow+ spongebob.height+ spongebob.rdel)*(256)+(spongebob.worldCol+ spongebob.width))]) {

            life = 1;

        } else {
            life = 0;
        }
    }

    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        if (spongebob.worldCol > 0 && collisionmapThreeBitmap[((spongebob.worldRow)*(256)+(spongebob.worldCol- spongebob.cdel))]
            && collisionmapThreeBitmap[((spongebob.worldRow+ spongebob.height)*(256)+(spongebob.worldCol- spongebob.cdel))]) {

            spongebob.worldCol = spongebob.worldCol- spongebob.cdel;


            if (hOff>0 && (spongebob.worldCol-hOff) < 240/2) {
                hOff--;
            }
        } else {
            jellyfish++;
        }
        if (collisionmapFourBitmap[((spongebob.worldRow)*(256)+(spongebob.worldCol- spongebob.cdel))]
            && collisionmapFourBitmap[((spongebob.worldRow+ spongebob.height)*(256)+(spongebob.worldCol- spongebob.cdel))]) {

            life = 1;
        } else {
            life = 0;
        }
    }

    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        if (spongebob.worldCol+ spongebob.width < 256
            && collisionmapThreeBitmap[((spongebob.worldRow)*(256)+(spongebob.worldCol+ spongebob.width+ spongebob.cdel))]
            && collisionmapThreeBitmap[((spongebob.worldRow+ spongebob.height)*(256)+(spongebob.worldCol+ spongebob.width+ spongebob.cdel))]) {

            spongebob.worldCol = spongebob.worldCol+ spongebob.cdel;

            if ( hOff+240< 256 && (spongebob.worldCol-hOff) > 240/2) {
                hOff++;
            }
        } else {
            jellyfish++;
        }
        if (collisionmapFourBitmap[((spongebob.worldRow)*(256)+(spongebob.worldCol+ spongebob.width+ spongebob.cdel))]
            && collisionmapFourBitmap[((spongebob.worldRow+ spongebob.height)*(256)+(spongebob.worldCol+ spongebob.width+ spongebob.cdel))]) {

            life = 1;
        } else {
            life = 0;
        }
    }

    animatePlayer();
}

void updatePlayerThree(){


    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
            spongebob.worldCol = spongebob.worldCol- spongebob.cdel;
            hOff--;
    }

    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
            spongebob.worldCol = spongebob.worldCol+ spongebob.cdel;
            hOff++;
        if (spongebob.worldCol+ spongebob.width == 550){
            jellyfish = 100;
        }
    }

    animatePlayer();
}


void animatePlayer() {


    spongebob.prevAniState = spongebob.aniState;
    spongebob.aniState = SPONGEIDLE;


    if(spongebob.aniCounter % 10 == 0) {
        spongebob.curFrame = (spongebob.curFrame + 1) % spongebob.numFrames;
    }


    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<6))))

        spongebob.aniState = SPONGEFRONT;
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<7))))
        spongebob.aniState = SPONGEFRONT;
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5))))

        spongebob.aniState = SPONGEFRONT;
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4))))

        spongebob.aniState = SPONGEFRONT;


    if (spongebob.aniState == SPONGEIDLE) {
        spongebob.curFrame = 0;
        spongebob.aniCounter = 0;
        spongebob.aniState = spongebob.prevAniState;
    } else {
        spongebob.aniCounter++;
    }
}


void drawPlayer() {

    if (spongebob.hide) {
        shadowOAM[0].attr0 |= (2<<8);
    } else {
        shadowOAM[0].attr0 = (0xFF & (spongebob.worldRow- vOff)) | (0<<14);
        shadowOAM[0].attr1 = (0x1FF & (spongebob.worldCol-hOff)) | (2<<14);
        shadowOAM[0].attr2 = ((0)<<12) | ((spongebob.curFrame * 4)*32+(spongebob.aniState * 4));
    }
}
