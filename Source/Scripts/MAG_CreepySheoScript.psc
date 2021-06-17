Scriptname MAG_CreepySheoScript extends ObjectReference

;-- Properties --------------------------------------

Actor Property PlayerRef auto
int[] Property RotationAngles auto 
ObjectReference Property ShrineBase auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

EVENT OnLoad()
   RegisterForSingleLOSGain(PlayerRef, ShrineBase )  
ENDEVENT

EVENT OnGainLOS(Actor akViewer, ObjectReference akTarget)    
     RegisterForSingleLOSLost(PlayerRef, ShrineBase )  
ENDEVENT

EVENT OnLostLOS(Actor akViewer, ObjectReference akTarget)    
    float AngleY = RotationAngles[Utility.randomInt(0,(RotationAngles.Length - 1))]
    TranslateTo(GetPositionX(), GetPositionY(), GetPositionZ(), GetAngleX(), AngleY, GetAngleZ(), 0.0,0)
    self.Disable()
    self.Enable()    
ENDEVENT

EVENT OnUnload()
    UnregisterForLOS(PlayerRef, ShrineBase )
ENDEVENT