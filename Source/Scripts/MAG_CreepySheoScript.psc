Scriptname MAG_CreepySheoScript extends ObjectReference

;-- Properties --------------------------------------

ObjectReference Property SheoShrine auto
Actor Property PlayerRef auto
int[] Property RotationAngles auto 

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

EVENT OnLoad()
    RegisterForSingleLOSLost(self, PlayerRef)       
ENDEVENT

EVENT OnLostLOS(Actor akViewer, ObjectReference akTarget)
    SheoShrine.SetAngle(0.0, 0.0, SheoShrine.GetAngleZ() -  RotationAngles[randomInt(0,RotationAngles.Length-1)])     ;PLus or minus 120 depending on if you want clockwise or counterclockwise
    RegisterForSingleLOSLost(self, PlayerRef)
ENDEVENT

EVENT OnUnload()
    UnregisterForLOS(Actor akViewer, ObjectReference akTarget)
ENDEVENT