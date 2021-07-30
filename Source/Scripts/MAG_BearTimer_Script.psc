Scriptname MAG_BearTimer_Script extends ActiveMagicEffect  

Actor caster

Event OnEffectStart(actor akTarget, actor akCaster)
    
     Caster = akCaster
     
     akCaster.SetPlayerTeammate(true, false)
     RegisterForSingleUpdate(60)

EndEvent

Event OnUpdate()
    
     caster.Kill()
 
EndEvent