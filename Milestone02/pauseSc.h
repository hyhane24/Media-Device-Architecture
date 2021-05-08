
//{{BLOCK(pauseSc)

//======================================================================
//
//	pauseSc, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 370 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 11840 + 2048 = 13920
//
//	Time-stamp: 2021-04-02, 20:08:59
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSESC_H
#define GRIT_PAUSESC_H

#define pauseScTilesLen 11840
extern const unsigned short pauseScTiles[5920];

#define pauseScMapLen 2048
extern const unsigned short pauseScMap[1024];

#define pauseScPalLen 32
extern const unsigned short pauseScPal[16];

#endif // GRIT_PAUSESC_H

//}}BLOCK(pauseSc)
