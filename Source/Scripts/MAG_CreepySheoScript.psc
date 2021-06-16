Scriptname MAG_CreepySheoScript extends Actor

;-- Properties --------------------------------------

ObjectReference Property SheoShrine auto
Actor Property PlayerRef auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

EVENT OnInit()
    RegisterForSingleLOSGain(self, PlayerRef)       
ENDEVENT

EVENT OnGainLOS(Actor akViewer, ObjectReference akTarget) 
    RegisterForSingleLOSLost(akViewer, akTarget)
ENDEVENT

EVENT OnLostLOS(Actor akViewer, ObjectReference akTarget)
    SheoShrine.SetAngle(0.0, 0.0, SheoShrine.GetAngleZ() - 120)     ;PLus or minus 120 depending on if you want clockwise or counterclockwise
    RegisterForSingleLOSGain(self, PlayerRef)
ENDEVENT