Scriptname MAG_InjectBooks extends Quest  

LeveledItem Property MAG_LItemPilgrimsGuide auto
LeveledItem Property LItemBookClutter auto

EVENT OnInt()
	MAG_LItemPilgrimsGuide.AddForm(LItemBookClutter,1, 1)
ENDEVENT