Scriptname MAG_PrideofHirstaang_Script extends ActiveMagicEffect  

Spell Property MAG_PrideofHirstaang_Spell Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)

	MAG_PrideofHirstaang_Spell.Cast(akTarget)

EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)

     akTarget.DispelSpell(MAG_PrideofHirstaang_Spell)

EndEvent