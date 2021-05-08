// struct for moving player
typedef struct {
	int row;
	int col;
	int cdel;
	int height;
	int width;
	unsigned char color;
	int bulletTimer;
	int cDirection; 
} PLAYER;

// struct for bullets
typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int height;
	int width;
	unsigned char color;
	int active;
} BULLET;

// struct for ghost balls
typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int height;
	int width;
	int isMushroom;
	int active;
} BALL;

// constants
#define BULLETCOUNT 5
#define BALLCOUNT 10

// variables
extern PLAYER player;
extern BULLET bullets[BULLETCOUNT];
extern BALL balls[BALLCOUNT];
extern int ballsRemaining;
extern int mushroomCount;

#define NUMCOLORS 6
// Class provided colors
enum {BLACKID=(256-NUMCOLORS), PORTAGEID, PERSIANID, VIOREDID, WHITEID, GRAYID, REDID, BLUEID};
extern unsigned short colors[NUMCOLORS];

// prototypes
void initGame();
void updateGame();
void drawGame();
void drawBar();
void initPlayer();
void updatePlayer();
void drawPlayer();
void initBullets();
void fireBullet();
void updateBullet(BULLET *);
void drawBullet(BULLET *);
void initBalls();
void updateBall(BALL *);
void drawBall(BALL *);