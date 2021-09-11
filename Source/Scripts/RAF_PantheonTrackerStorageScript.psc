Scriptname RAF_PantheonTrackerStorageScript extends Quest  

; ------------------ Functional/working storage
spell Property InvocationSpell Auto
spell[] Property blessings Auto
message[] Property messages Auto
int Property numGods Auto

; ------------------ Settings and controls
int Property numGods_max Auto
Bool Property useUIExtensions  Auto 
Bool Property pilgrimHidePrayer  Auto  
Bool Property pilgrimBlessingIntegration  Auto  

; ------------------ Core Functionality
Function OnInit()
endFunction

Function Maintenance()
EndFunction

Function AddDeity(spell newBlessing, message newMessage)
EndFunction

Function ChangeDeities()
EndFunction

Function InvokeCurrentDeity()
EndFunction

; ------------------ Settings Change Helpers
Function ChangeMaxDeities(int newMax)
EndFunction

; ------------------ Compatibility layer functionality
Function GetDeityFromPilgrim()
EndFunction

Function PushDeityToPilgrim()
EndFunction

Function CheckPilgrimPrayerIntegration()
EndFunction
