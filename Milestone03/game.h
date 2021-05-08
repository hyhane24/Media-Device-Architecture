// Constants
#define MAPHEIGHT 256
#define MAPWIDTH 256

// Variables
extern int hOff;
extern int vOff;
extern int jellyfish;
extern int life;
extern OBJ_ATTR shadowOAM[128];
extern ANISPRITE spongebob;

// Prototypes
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
