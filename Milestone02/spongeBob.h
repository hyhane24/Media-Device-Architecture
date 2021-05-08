
//{{BLOCK(spongeBob)

//======================================================================
//
//	spongeBob, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 120 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 3840 + 2048 = 5920
//
//	Time-stamp: 2021-04-02, 21:19:31
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SPONGEBOB_H
#define GRIT_SPONGEBOB_H

#define spongeBobTilesLen 3840
extern const unsigned short spongeBobTiles[1920];

#define spongeBobMapLen 2048
extern const unsigned short spongeBobMap[1024];

#define spongeBobPalLen 32
extern const unsigned short spongeBobPal[16];

#endif // GRIT_SPONGEBOB_H

//}}BLOCK(spongeBob)
