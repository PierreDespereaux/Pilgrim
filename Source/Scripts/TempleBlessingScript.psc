Scriptname TempleBlessingScript extends ObjectReference Conditional  


Spell Property TempleBlessing  Auto  

Event OnActivate(ObjectReference akActionRef)

    TempleBlessing.Cast(akActionRef, akActionRef)
    if akActionRef == Game.GetPlayer()
        MAG_BlessingStorageScript LastBlessingStorageScript = (Game.GetFormFromFile(0x00126443,"Pilgrim.esp") as Quest) as MAG_BlessingStorageScript
        if(LastBlessingStorageScript)   ;Null check just in case this script is somehow run on a shrine without the quest present
            LastBlessingStorageScript.LastBlessing = TempleBlessing
        Endif
        AltarRemoveMsg.Show()
        BlessingMessage.Show()
    endif
      
EndEvent

Message Property BlessingMessage  Auto  

Message Property AltarRemoveMsg  Auto  