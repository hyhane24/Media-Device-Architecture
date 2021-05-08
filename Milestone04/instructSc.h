
//{{BLOCK(instructSc)

//======================================================================
//
//	instructSc, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 381 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 12192 + 2048 = 14272
//
//	Time-stamp: 2021-04-02, 20:00:42
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTSC_H
#define GRIT_INSTRUCTSC_H

#define instructScTilesLen 12192
extern const unsigned short instructScTiles[6096];

#define instructScMapLen 2048
extern const unsigned short instructScMap[1024];

#define instructScPalLen 32
extern const unsigned short instructScPal[16];

#endif // GRIT_INSTRUCTSC_H

//}}BLOCK(instructSc)
