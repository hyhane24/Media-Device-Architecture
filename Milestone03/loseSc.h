
//{{BLOCK(loseSc)

//======================================================================
//
//	loseSc, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 203 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 6496 + 2048 = 8576
//
//	Time-stamp: 2021-04-02, 20:10:58
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSESC_H
#define GRIT_LOSESC_H

#define loseScTilesLen 6496
extern const unsigned short loseScTiles[3248];

#define loseScMapLen 2048
extern const unsigned short loseScMap[1024];

#define loseScPalLen 32
extern const unsigned short loseScPal[16];

#endif // GRIT_LOSESC_H

//}}BLOCK(loseSc)
