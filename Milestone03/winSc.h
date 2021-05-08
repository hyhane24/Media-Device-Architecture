
//{{BLOCK(winSc)

//======================================================================
//
//	winSc, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 465 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 14880 + 2048 = 16960
//
//	Time-stamp: 2021-04-02, 20:09:59
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WINSC_H
#define GRIT_WINSC_H

#define winScTilesLen 14880
extern const unsigned short winScTiles[7440];

#define winScMapLen 2048
extern const unsigned short winScMap[1024];

#define winScPalLen 32
extern const unsigned short winScPal[16];

#endif // GRIT_WINSC_H

//}}BLOCK(winSc)
