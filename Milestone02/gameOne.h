
//{{BLOCK(gameOne)

//======================================================================
//
//	gameOne, 512x256@4, 
//	+ palette 16 entries, not compressed
//	+ 362 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 32 + 11584 + 4096 = 15712
//
//	Time-stamp: 2021-04-02, 19:58:26
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEONE_H
#define GRIT_GAMEONE_H

#define gameOneTilesLen 11584
extern const unsigned short gameOneTiles[5792];

#define gameOneMapLen 4096
extern const unsigned short gameOneMap[2048];

#define gameOnePalLen 32
extern const unsigned short gameOnePal[16];

#endif // GRIT_GAMEONE_H

//}}BLOCK(gameOne)
