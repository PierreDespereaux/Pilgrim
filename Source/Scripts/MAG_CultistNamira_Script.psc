Scriptname MAG_CultistNamira_Script extends ActiveMagicEffect  

Perk Property DA11Cannibalism  Auto  

Event OnEffectStart(Actor akCaster, Actor AkTarget)

    If akCaster == Game.GetPlayer()
        Game.GetPlayer().AddPerk(DA11Cannibalism)
    EndIf

EndEvent

Event OnEffectFinish(Actor akCaster, Actor AkTarget)

    If akCaster == Game.GetPlayer()
        Game.GetPlayer().RemovePerk(DA11Cannibalism )
    EndIf

EndEvent