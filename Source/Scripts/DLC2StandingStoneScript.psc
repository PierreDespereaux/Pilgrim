scriptName DLC2StandingStoneScript extends ObjectReference

;-- Properties --------------------------------------
projectile property DLC2VoicePushProjectile01 auto
sound property MAGStandingStoneActivateA auto
spell property DLC2SpellLearned auto
spell property TempleBlessing auto
scene property DLC2PillarMiraakVoice auto
message property DLC2StandingStoneNotReadyMsg auto
sound property MAGStandingStoneActivateB auto
imagespacemodifier property FadeToBlackHoldImod auto
Bool property Freed auto hidden
topic property DLC2PillarBlockingTopic auto
imagespacemodifier property FadeToBlackImod auto
globalvariable property GameDaysPassed auto
projectile property DLC2VoicePushProjectile03 auto
sound property DLC2StoneActivateSound auto
spell property DLC2SacredStoneSpell auto
referencealias property FollowerAtPillar auto
imagespacemodifier property FadeToBlackBackImod auto
message property BlessingMessage auto
message property AltarRemoveMsg auto
quest property DLC2Pillar auto
scene property DLC2PillarFollowerScene auto

;-- Variables ---------------------------------------
Float DelayReady

function WorkOnPillarNPC(Actor pillarNPC)

	FollowerAtPillar.ForceRefTo(pillarNPC as ObjectReference)
	pillarNPC.SetDoingFavor(false)
	DLC2PillarFollowerScene.Start()
endFunction

function WorkOnPillar(Bool bSleepMove)
	if GetLinkedRef()
		; player blacks out, wakes up working on pillar
		Game.DisablePlayerControls()
		if bSleepMove == false
			FadeToBlackImod.Apply()
			MAGStandingStoneActivateA.Play(Game.GetPlayer())
			utility.wait(2)
			FadeToBlackImod.PopTo(FadeToBlackHoldImod)
		else
			FadeToBlackImod.PopTo(FadeToBlackHoldImod)
			utility.wait(2)
		endif
		Game.ForceThirdPerson()
		; put player in furniture
		Game.GetPlayer().MoveTo(GetLinkedRef())
		DLC2PillarMiraakVoice.Start()
		utility.wait(2)
		FadeToBlackHoldImod.PopTo(FadeToBlackBackImod)
		FadeToBlackHoldImod.Remove()
		MAGStandingStoneActivateB.Play(Game.GetPlayer())
		utility.wait(2)
; 		debug.trace(self + " enabling controls")
		Game.EnablePlayerControls()
		while GetLinkedRef().IsFurnitureInUse()
			utility.wait(1.0)
		endWhile
		DLC2PillarMiraakVoice.Stop()
		DLC2Pillar.SetStage(100) ; runs Neloth scene, tracks player having touched pillar once
	endif

endFunction

State Busy
	; do nothing
EndState

auto state Waiting

	function OnActivate(ObjectReference akActionRef)
		GotoState("busy")
		If Freed == true
			PlayAnimation("stage3")
			DLC2StoneActivateSound.play(self)
			TempleBlessing.Cast(akActionRef, akActionRef)
			If akActionRef == game.GetPlayer() as ObjectReference
				RAF_PantheonTrackerStorageScript PantheonTracker = Game.GetFormFromFile(0x00000800, "WAP.esp") as RAF_PantheonTrackerStorageScript
				If PantheonTracker
					PantheonTracker.AddDeity(TempleBlessing, BlessingMessage)
				EndIf
				mag_blessingstoragescript LastBlessingStorageScript = quest.GetQuest("MAG_PilgrimPriestQuest") as mag_blessingstoragescript
				if LastBlessingStorageScript
					if !game.GetPlayer().HasSpell(LastBlessingStorageScript.Prayer as form)
						If (!PantheonTracker || !PantheonTracker.pilgrimHidePrayer)
							game.GetPlayer().AddSpell(LastBlessingStorageScript.Prayer, true)
						EndIf
					endIf
					LastBlessingStorageScript.LastBlessing = TempleBlessing
					LastBlessingStorageScript.LastMessage = BlessingMessage
				endIf
				AltarRemoveMsg.Show(0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				BlessingMessage.Show(0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			EndIf
		ElseIf akActionRef == game.GetPlayer() as ObjectReference
			WorkOnPillar(false)
		ElseIf (akActionRef as Actor) as Bool
			WorkOnPillarNPC(akActionRef as Actor)
		EndIf
		GotoState("Waiting")
	endFunction
endState
