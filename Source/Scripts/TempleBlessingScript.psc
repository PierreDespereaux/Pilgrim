Scriptname TempleBlessingScript extends ObjectReference Conditional  

EVENT OnActivate(ObjectReference akActionRef)

Int iButton = MAG_BlessingAcceptMsg.Show() ; Shows yes/no menu

IF iButton == 0  ; Yes

    TempleBlessing.Cast(akActionRef, akActionRef)
    IF akActionRef == PlayerRef
    
        MAG_BlessingStorageScript LastBlessingStorageScript = Quest.GetQuest("MAG_PilgrimPriestQuest") as MAG_BlessingStorageScript
        
        IF(LastBlessingStorageScript)   ;Null check just in case this script is somehow run on a shrine without the quest present
        
            IF !(PlayerRef.HasSpell(LastBlessingStorageScript.Prayer))
                (PlayerRef.AddSpell(LastBlessingStorageScript.Prayer))
            ENDIF
            
            LastBlessingStorageScript.LastBlessing = TempleBlessing
            LastBlessingStorageScript.LastMessage = BlessingMessage
            
        ENDIF
        AltarRemoveMsg.Show()
        BlessingMessage.Show()
        
    ENDIF

ELSEIF iButton == 1  ; No

ENDIF	

ENDEVENT

Actor Property PlayerRef Auto 

Message Property BlessingMessage Auto  

Message Property AltarRemoveMsg Auto

Message Property MAG_BlessingAcceptMsg Auto

Spell Property TempleBlessing Auto