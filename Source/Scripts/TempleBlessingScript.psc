Scriptname TempleBlessingScript extends ObjectReference Conditional  


Spell Property TempleBlessing  Auto  

Event OnActivate(ObjectReference akActionRef)

    TempleBlessing.Cast(akActionRef, akActionRef)
    if akActionRef == Game.GetPlayer()
        MAG_BlessingStorageScript LastBlessingStorageScript = Quest.GetQuest("MAG_PilgrimPriestQuest") as MAG_BlessingStorageScript
        if(LastBlessingStorageScript)   ;Null check just in case this script is somehow run on a shrine without the quest present
            LastBlessingStorageScript.LastBlessing = TempleBlessing
            LastBlessingStorageScript.LastMessage = BlessingMessage
        Endif
        AltarRemoveMsg.Show()
        BlessingMessage.Show()
    endif
      
EndEvent

Message Property BlessingMessage  Auto  

Message Property AltarRemoveMsg  Auto  