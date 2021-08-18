Scriptname MAG_CursedTome extends ObjectReference  

EVENT OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
;debug.notification("This event has fired.")
	if(akNewContainer)
	;debug.notification("This IF statement has been fulfilled.")
		Dremora.Enable()
		summoneffect.Play(Dremora)
	endif
ENDEVENT

Actor Property Dremora Auto
sound Property summoneffect  Auto  
