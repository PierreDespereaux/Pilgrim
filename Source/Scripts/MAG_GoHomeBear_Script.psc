Scriptname MAG_GoHomeBear_Script extends ObjectReference  

VisualEffect Property MAG_BearPortal Auto

	EVENT onDying(actor myKiller)
			MAG_BearPortal.Play(self)
	ENDEVENT