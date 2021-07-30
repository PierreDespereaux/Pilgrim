Scriptname MAG_AddPrayer_Script extends ActiveMagicEffect  

Spell Property MAG_PrayerSpell Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)

	akTarget.AddSpell(MAG_PrayerSpell)

EndEvent