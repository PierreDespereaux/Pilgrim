Scriptname T01DibellasAltarScript extends ObjectReference

Quest Property T01 auto

Faction Property JobMerchantFaction auto
Faction Property MAG_PilgrimServicesMarkarthVendor auto
Actor Property Hamal auto
Actor Property Anwen auto
Actor Property Orla auto
Actor Property Senna auto

Event OnActivate(ObjectReference akActivator)
	if (Game.GetPlayer() == akActivator)
		if (T01.GetStage() >= 100)
; 			Debug.Trace("T01: Registering for IdleFurnitureExit.")
			RegisterForAnimationEvent(Game.GetPlayer(), "IdleFurnitureExit")
			Utility.Wait(20)
			if (!T01.GetStageDone(200))
; 				Debug.Trace("T01: Unregistering for IdleFurnitureExit.")
				UnregisterForAnimationEvent(Game.GetPlayer(), "IdleFurnitureExit")
				T01.SetStage(200)
			endif
		endif
	endif

Hamal.AddToFaction(JobMerchantFaction)
Hamal.AddToFaction(MAG_PilgrimServicesMarkarthVendor)

Anwen.AddToFaction(JobMerchantFaction)
Anwen.AddToFaction(MAG_PilgrimServicesMarkarthVendor)

Orla.AddToFaction(JobMerchantFaction)
Orla.AddToFaction(MAG_PilgrimServicesMarkarthVendor)

Senna.AddToFaction(JobMerchantFaction)
Senna.AddToFaction(MAG_PilgrimServicesMarkarthVendor)

EndEvent


Event OnAnimationEvent(ObjectReference akSource, string asEventName)
    if (asEventName == "IdleFurnitureExit" && akSource == Game.GetPlayer())
    	UnregisterForAnimationEvent(Game.GetPlayer(), "IdleFurnitureExit")
		T01.SetStage(200)
    endif
EndEvent


