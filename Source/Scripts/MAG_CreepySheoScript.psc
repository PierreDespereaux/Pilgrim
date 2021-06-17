Scriptname MAG_CreepySheoScript extends ObjectReference

;-- Properties --------------------------------------

Actor Property PlayerRef auto
int[] Property RotationAngles auto 

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

EVENT OnLoad()
    RegisterForSingleLOSLost(PlayerRef, self)      
        ;debug.notification("SingleLOSLost registered!")
ENDEVENT

EVENT OnLostLOS(Actor akViewer, ObjectReference akTarget)
        ;debug.notification("LOS lost on SheoShrine!")
    ;self.SetAngle(0.0, self.GetAngleY() -  RotationAngles[Utility.randomInt(0,(RotationAngles.Length-1)], 0.0)
        ;debug.notification("SheoShrine has moved creepily!")
    RegisterForSingleLOSLost(PlayerRef, self)
        ;debug.notification("SingleLOSLost registered!")
ENDEVENT

EVENT OnUnload()
    UnregisterForLOS(PlayerRef, self)
        ;debug.notification("LOS unregistered!")
ENDEVENT