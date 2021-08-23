Scriptname TempleBlessingScript extends ObjectReference Conditional  


Spell Property TempleBlessing  Auto  

EVENT OnActivate(ObjectReference akActionRef)

    TempleBlessing.Cast(akActionRef, akActionRef)
    IF akActionRef == Game.GetPlayer()
    
        MAG_BlessingStorageScript LastBlessingStorageScript = Quest.GetQuest("MAG_PilgrimPriestQuest") as MAG_BlessingStorageScript
        
        IF(LastBlessingStorageScript)   ;Null check just in case this script is somehow run on a shrine without the quest present
        
            IF !akActionRef().HasSpell(LastBlessingStorageScript.Prayer)
                akActionRef().AddSpell(LastBlessingStorageScript.Prayer)
            ENDIF
            
            LastBlessingStorageScript.LastBlessing = TempleBlessing
            LastBlessingStorageScript.LastMessage = BlessingMessage
            
        ENDIF
        AltarRemoveMsg.Show()
        BlessingMessage.Show()
        
    ENDIF
      
ENDEVENT

Message Property BlessingMessage  Auto  

Message Property AltarRemoveMsg  Auto  
