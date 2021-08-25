Scriptname MAG_AddPilgrim  extends ActiveMagicEffect

Spell Property myPilgrimBlessing auto
Actor property PlayerRef auto

Event OnEffectStart(Actor akTarget, Actor akCaster)

	PlayerRef.AddSpell(myPilgrimBlessing, false)

EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)

	PlayerRef.RemoveSpell(myPilgrimBlessing)
	
EndEvent