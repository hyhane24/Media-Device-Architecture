// Cannon Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int cdel;
	int height;
	int width;
	unsigned short color;
	int bulletTimer;
} CANNON;

// Bullet Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int height;
	int width;
	unsigned short color;
	int active;
	int erased;
} BULLET;


// Ball Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int cdel;
	int height;
	int width;
	unsigned short color;
	int active;
	int erased;
} BALL;




// Constants
#define BULLETCOUNT 100
#define BALLCOUNT 5


// Variables
extern CANNON cannon;
extern BULLET bullets[BULLETCOUNT];
extern BALL balls[BALLCOUNT];
extern int ballsRemaining;

// Prototypes
 void initGame();
void updateGame();
void drawGame();
void drawBar(); 
 void initCannon();
void updateCannon();
void drawCannon();  
 void initBullets();
void fireBullet();
void updateBullet(BULLET *);
void drawBullet(BULLET *);

void initBalls();
void updateBall(BALL *);
void drawBall(BALL *); 



