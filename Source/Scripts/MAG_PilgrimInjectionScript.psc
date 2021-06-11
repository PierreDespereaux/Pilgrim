Scriptname MAG_PilgrimInjectionScript extends Quest  

;-- Properties --------------------------------------

LeveledItem Property MAG_PilgrimSpells Auto

LeveledItem Property LItem01 auto
LeveledItem Property LItem02 auto
LeveledItem Property LItem03 auto
LeveledItem Property LItem04 auto
LeveledItem Property LItem05 auto
LeveledItem Property LItem06 auto
LeveledItem Property LItem07 auto
LeveledItem Property LItem08 auto
LeveledItem Property LItem09 auto
LeveledItem Property LItem10 auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Event OnInit()

MAG_PilgrimSpells.AddForm(LItem01,1, 1)
debug.notification("An LItem has been added to MAG_PilgrimSpells!")
MAG_PilgrimSpells.AddForm(LItem02,1, 1)
debug.notification("An LItem has been added to MAG_PilgrimSpells!")
MAG_PilgrimSpells.AddForm(LItem03,1, 1)
debug.notification("An LItem has been added to MAG_PilgrimSpells!")
MAG_PilgrimSpells.AddForm(LItem04,1, 1)
debug.notification("An LItem has been added to MAG_PilgrimSpells!")
MAG_PilgrimSpells.AddForm(LItem05,1, 1)
debug.notification("An LItem has been added to MAG_PilgrimSpells!")
MAG_PilgrimSpells.AddForm(LItem06,1, 1)
debug.notification("An LItem has been added to MAG_PilgrimSpells!")
MAG_PilgrimSpells.AddForm(LItem07,1, 1)
debug.notification("An LItem has been added to MAG_PilgrimSpells!")
MAG_PilgrimSpells.AddForm(LItem08,1, 1)
debug.notification("An LItem has been added to MAG_PilgrimSpells!")
MAG_PilgrimSpells.AddForm(LItem09,1, 1)
debug.notification("An LItem has been added to MAG_PilgrimSpells!")
MAG_PilgrimSpells.AddForm(LItem10,1, 1)
debug.notification("An LItem has been added to MAG_PilgrimSpells!")

debug.notification("All LItems have been injected!")

EndEvent