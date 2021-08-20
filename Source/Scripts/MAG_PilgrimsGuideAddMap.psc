Scriptname MAG_PilgrimsGuideAddMap extends ObjectReference  
{When the player closes the book, adds the indicated map markers to their map, optionally with fast travel enabled.}
;==============================================
ObjectReference property MapMarker1 Auto
ObjectReference property MapMarker2 Auto
ObjectReference property MapMarker3 Auto
ObjectReference property MapMarker4 Auto
ObjectReference property MapMarker5 Auto
ObjectReference property MapMarker6 Auto
ObjectReference property MapMarker7 Auto
ObjectReference property MapMarker8 Auto
ObjectReference property MapMarker9 Auto
ObjectReference property MapMarker0 Auto

bool property AllowFastTravel = False Auto
{Allow fast travel to these markers? Default: False}

auto STATE ready
	Event OnActivate(ObjectReference akActionRef)
		stageHandling()
	EndEvent

	Event OnEquipped(Actor akActor)
		stageHandling()
	endEvent
endSTATE

STATE Done
	; nothing happens in this place
endSTATE
;==============================================

FUNCTION stageHandling()
	if (MapMarker1 != None)
		MapMarker1.AddToMap(AllowFastTravel)
	EndIf
	if (MapMarker2 != None)
		MapMarker2.AddToMap(AllowFastTravel)
	EndIf
	if (MapMarker3 != None)
		MapMarker3.AddToMap(AllowFastTravel)
	EndIf
	if (MapMarker4 != None)
		MapMarker4.AddToMap(AllowFastTravel)
	EndIf
	if (MapMarker5 != None)
		MapMarker5.AddToMap(AllowFastTravel)
	EndIf
	if (MapMarker6 != None)
		MapMarker6.AddToMap(AllowFastTravel)
	EndIf
	if (MapMarker7 != None)
		MapMarker7.AddToMap(AllowFastTravel)
	EndIf
	if (MapMarker8 != None)
		MapMarker8.AddToMap(AllowFastTravel)
	EndIf
	if (MapMarker9 != None)
		MapMarker9.AddToMap(AllowFastTravel)
	EndIf
	if (MapMarker0 != None)
		MapMarker0.AddToMap(AllowFastTravel)
	EndIf
endFUNCTION

