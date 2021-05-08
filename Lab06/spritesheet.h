
//{{BLOCK(spritesheet)

//======================================================================
//
//	spritesheet, 256x256@4, 
//	+ palette 2 entries, not compressed
//	+ 1024 tiles not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 4 + 32768 + 2048 = 34820
//
//	Time-stamp: 2021-03-05, 05:05:23
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SPRITESHEET_H
#define GRIT_SPRITESHEET_H

#define spritesheetTilesLen 32768
extern const unsigned short spritesheetTiles[16384];

#define spritesheetMapLen 2048
extern const unsigned short spritesheetMap[1024];

#define spritesheetPalLen 4
extern const unsigned short spritesheetPal[2];

#endif // GRIT_SPRITESHEET_H

//}}BLOCK(spritesheet)
