Scriptname MAG_SummonBear_Script extends ActiveMagicEffect  

Spell Property MAG_SummonBear_Spell Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)

	MAG_SummonBear_Spell.Cast(AkCaster)

EndEvent