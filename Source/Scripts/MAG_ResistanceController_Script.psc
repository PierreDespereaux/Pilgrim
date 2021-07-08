Scriptname MAG_ResistanceController_Script extends ActiveMagicEffect  

Spell Property MAG_ResistanceController_Spell Auto 

Event OnEffectStart(Actor akTarget, Actor akCaster)
  akTarget.AddSpell(MAG_ResistanceController_Spell, false)
endEvent