
//{{BLOCK(startSc)

//======================================================================
//
//	startSc, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 437 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 13984 + 2048 = 16064
//
//	Time-stamp: 2021-04-02, 19:48:53
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTSC_H
#define GRIT_STARTSC_H

#define startScTilesLen 13984
extern const unsigned short startScTiles[6992];

#define startScMapLen 2048
extern const unsigned short startScMap[1024];

#define startScPalLen 32
extern const unsigned short startScPal[16];

#endif // GRIT_STARTSC_H

//}}BLOCK(startSc)
