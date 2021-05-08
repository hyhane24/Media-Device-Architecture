#define MAPHEIGHT 160
#define MAPWIDTH 240

//struct for player
typedef struct {
    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;

    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
} PLAYER;

typedef struct {
    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
} JELLYFISH;

typedef struct {
    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
} BARNACLE;

typedef struct {
    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
} ANISPRITE;

// Variables

extern PLAYER player;
int jellyfish;
int lives;


// Prototypes
void initGame();
void drawGame();
void updateGame();
void initPlayer();
void updatePlayer();
