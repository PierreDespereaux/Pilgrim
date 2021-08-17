Scriptname MAG_Teleport_Script extends ActiveMagicEffect  

Actor property PlayerRef auto
ObjectReference property TeleportMarker auto

Event onEffectStart(Actor Target, Actor akCaster)

    Utility.Wait(0.5)
    PlayerRef.moveTo(TeleportMarker)

endEvent