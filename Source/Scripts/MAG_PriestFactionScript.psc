Scriptname MAG_PriestFactionScript extends Quest  

;--MAIN VENDORS--
Actor Property DanicaPureSpring auto
Actor Property Hamal auto
Actor Property DinyaBalu auto
Actor Property Jora auto
Actor Property Freir auto
Actor Property ElderOthreloth auto

;--OPTIONAL VENDORS--
Actor Property AcolyteJenssen auto
Actor Property Anwen auto
Actor Property Orla auto
Actor Property Senna auto
Actor Property Briehl auto
Actor Property Lortheim auto
Actor Property Rorlund auto
Actor Property SilanaPetria auto
Actor Property GaldrusHlervu auto

;--GENERIC VENDOR FACTION--
Faction Property JobMerchantFaction auto

;--CITY PRIEST VENDOR FACTIONS--
Faction Property MAG_PilgrimServicesWhiterunVendor auto
Faction Property MAG_PilgrimServicesMarkarthVendor auto
Faction Property MAG_PilgrimServicesRiftenVendor auto
Faction Property MAG_PilgrimServicesWindhelmVendor auto
Faction Property MAG_PilgrimServicesSolitudeVendor auto

;--DLC2 PRIEST VENDOR FACTION--
Faction Property MAG_PilgrimServicesRavenRockVendor auto

;--OTHER PROPERTIES--

Quest Property T01 auto

EVENT OnInit()

	;Add Generic Vendor Faction to Main Vendors
	
	DanicaPureSpring.AddToFaction(JobMerchantFaction)
	;Hamal.AddToFaction(JobMerchantFaction) ;Added in T01 Topic Info
	DinyaBalu.AddToFaction(JobMerchantFaction)
	Jora.AddToFaction(JobMerchantFaction)
	Freir.AddToFaction(JobMerchantFaction)
	ElderOthreloth.AddToFaction(JobMerchantFaction)
	
	;Add Generic Vendor Faction to Optional Vendors
	
	AcolyteJenssen.AddToFaction(JobMerchantFaction)
	;Anwen.AddToFaction(JobMerchantFaction) ;Added in T01 Topic Info
	;Orla.AddToFaction(JobMerchantFaction) ;Added in T01 Topic Info
	;Senna.AddToFaction(JobMerchantFaction) ;Added in T01 Topic Info
	Briehl.AddToFaction(JobMerchantFaction)
	Lortheim.AddToFaction(JobMerchantFaction)
	Rorlund.AddToFaction(JobMerchantFaction)
	SilanaPetria.AddToFaction(JobMerchantFaction)
	GaldrusHlervu.AddToFaction(JobMerchantFaction)
	
	;Add City Priest Vendor Factions to Main Vendors
	
	DanicaPureSpring.AddToFaction(MAG_PilgrimServicesWhiterunVendor)
	;Hamal.AddToFaction(MAG_PilgrimServicesMarkarthVendor) ;Added in T01 Topic Info
	DinyaBalu.AddToFaction(MAG_PilgrimServicesRiftenVendor)
	Jora.AddToFaction(MAG_PilgrimServicesWindhelmVendor)
	Freir.AddToFaction(MAG_PilgrimServicesSolitudeVendor)
	ElderOthreloth.AddToFaction(MAG_PilgrimServicesRavenRockVendor)
	
	;Add City Priest Vendor Factions to Optional Vendors
	
	AcolyteJenssen.AddToFaction(MAG_PilgrimServicesWhiterunVendor)
	;Anwen.AddToFaction(MAG_PilgrimServicesMarkarthVendor) ;Added in T01 Topic Info
	;Orla.AddToFaction(MAG_PilgrimServicesMarkarthVendor) ;Added in T01 Topic Info
	;Senna.AddToFaction(MAG_PilgrimServicesMarkarthVendor) ;Added in T01 Topic Info
	Briehl.AddToFaction(MAG_PilgrimServicesRiftenVendor)
	Lortheim.AddToFaction(MAG_PilgrimServicesWindhelmVendor)
	Rorlund.AddToFaction(MAG_PilgrimServicesSolitudeVendor)
	SilanaPetria.AddToFaction(MAG_PilgrimServicesSolitudeVendor)
	GaldrusHlervu.AddToFaction(MAG_PilgrimServicesRavenRockVendor)
	
ENDEVENT

EVENT OnPlayerLoad()

	;Check if Main Vendors are in Generic Vendor Faction, if not, add to

	IF !DanicaPureSpring.IsInFaction(JobMerchantFaction)
		DanicaPureSpring.AddToFaction(JobMerchantFaction)
	ENDIF
	
	IF !Hamal.IsInFaction(JobMerchantFaction) && (T01.GetStageDone(200))
		Hamal.AddToFaction(JobMerchantFaction)
	ENDIF
	IF !Hamal.IsInFaction(JobMerchantFaction) && (T01.GetStageDone(205))
		Hamal.AddToFaction(JobMerchantFaction)
	ENDIF
	
	IF !DinyaBalu.IsInFaction(JobMerchantFaction)
		DinyaBalu.AddToFaction(JobMerchantFaction)
	ENDIF
	IF !Jora.IsInFaction(JobMerchantFaction)
		Jora.AddToFaction(JobMerchantFaction)
	ENDIF
	IF !Freir.IsInFaction(JobMerchantFaction)
		Freir.AddToFaction(JobMerchantFaction)
	ENDIF
	IF !ElderOthreloth.IsInFaction(JobMerchantFaction)
		ElderOthreloth.AddToFaction(JobMerchantFaction)
	ENDIF

	;Check if Main Vendors are in City Priest Faction, if not, add to
	
	IF !DanicaPureSpring.IsInFaction(MAG_PilgrimServicesWhiterunVendor)
		DanicaPureSpring.AddToFaction(MAG_PilgrimServicesWhiterunVendor)
	ENDIF
	
	IF !Hamal.IsInFaction(MAG_PilgrimServicesMarkarthVendor) && (T01.GetStageDone(200))
		Hamal.AddToFaction(MAG_PilgrimServicesMarkarthVendor)
	ENDIF
	IF !Hamal.IsInFaction(MAG_PilgrimServicesMarkarthVendor) && (T01.GetStageDone(205))
		Hamal.AddToFaction(MAG_PilgrimServicesMarkarthVendor)
	ENDIF
	
	IF !DinyaBalu.IsInFaction(MAG_PilgrimServicesRiftenVendor)
		DinyaBalu.AddToFaction(MAG_PilgrimServicesRiftenVendor)
	ENDIF
	IF !Jora.IsInFaction(MAG_PilgrimServicesWindhelmVendor)
		Jora.AddToFaction(MAG_PilgrimServicesWindhelmVendor)
	ENDIF
	IF !Freir.IsInFaction(MAG_PilgrimServicesSolitudeVendor)
		Freir.AddToFaction(MAG_PilgrimServicesSolitudeVendor)
	ENDIF
	IF !ElderOthreloth.IsInFaction(MAG_PilgrimServicesRavenRockVendor)
		ElderOthreloth.AddToFaction(MAG_PilgrimServicesRavenRockVendor)
	ENDIF
	
	;Check if Optional Vendors are in Generic Vendor Faction, if not, add to
	
	IF !AcolyteJenssen.IsInFaction(JobMerchantFaction)
		AcolyteJenssen.AddToFaction(JobMerchantFaction)
	ENDIF
	
	IF !Anwen.IsInFaction(JobMerchantFaction) && (T01.GetStageDone(200))
		Anwen.AddToFaction(JobMerchantFaction)
	ENDIF
	IF !Anwen.IsInFaction(JobMerchantFaction) && (T01.GetStageDone(205))
		Anwen.AddToFaction(JobMerchantFaction)
	ENDIF
	IF !Orla.IsInFaction(JobMerchantFaction) && (T01.GetStageDone(200))
		Orla.AddToFaction(JobMerchantFaction)
	ENDIF
	IF !Orla.IsInFaction(JobMerchantFaction) && (T01.GetStageDone(205))
		Orla.AddToFaction(JobMerchantFaction)
	ENDIF
	IF !Senna.IsInFaction(JobMerchantFaction) && (T01.GetStageDone(200))
		Senna.AddToFaction(JobMerchantFaction)
	ENDIF
	IF !Senna.IsInFaction(JobMerchantFaction) && (T01.GetStageDone(205))
		Senna.AddToFaction(JobMerchantFaction)
	ENDIF
	
	IF !Briehl.IsInFaction(JobMerchantFaction)
		Briehl.AddToFaction(JobMerchantFaction)
	ENDIF
	IF !Lortheim.IsInFaction(JobMerchantFaction)
		Lortheim.AddToFaction(JobMerchantFaction)
	ENDIF
	IF !Rorlund.IsInFaction(JobMerchantFaction)
		Rorlund.AddToFaction(JobMerchantFaction)
	ENDIF
	IF !SilanaPetria.IsInFaction(JobMerchantFaction)
		SilanaPetria.AddToFaction(JobMerchantFaction)
	ENDIF
	IF !GaldrusHlervu.IsInFaction(JobMerchantFaction)
		GaldrusHlervu.AddToFaction(JobMerchantFaction)
	ENDIF
	
	;Check if Optional Vendors are in City Priest Vendor Faction, if not, add to
	
	IF !AcolyteJenssen.IsInFaction(MAG_PilgrimServicesWhiterunVendor)
		AcolyteJenssen.AddToFaction(MAG_PilgrimServicesWhiterunVendor)
	ENDIF
	
	IF !Anwen.IsInFaction(MAG_PilgrimServicesMarkarthVendor) && (T01.GetStageDone(200))
		Anwen.AddToFaction(MAG_PilgrimServicesMarkarthVendor)
	ENDIF
	IF !Anwen.IsInFaction(MAG_PilgrimServicesMarkarthVendor) && (T01.GetStageDone(205))
		Anwen.AddToFaction(MAG_PilgrimServicesMarkarthVendor)
	ENDIF
	IF !Orla.IsInFaction(MAG_PilgrimServicesMarkarthVendor) && (T01.GetStageDone(200))
		Orla.AddToFaction(MAG_PilgrimServicesMarkarthVendor)
	ENDIF
	IF !Orla.IsInFaction(MAG_PilgrimServicesMarkarthVendor) && (T01.GetStageDone(205))
		Orla.AddToFaction(MAG_PilgrimServicesMarkarthVendor)
	ENDIF
	IF !Senna.IsInFaction(MAG_PilgrimServicesMarkarthVendor) && (T01.GetStageDone(200))
		Senna.AddToFaction(MAG_PilgrimServicesMarkarthVendor)
	ENDIF
	IF !Senna.IsInFaction(MAG_PilgrimServicesMarkarthVendor) && (T01.GetStageDone(205))
		Senna.AddToFaction(MAG_PilgrimServicesMarkarthVendor)
	ENDIF
	
	IF !Briehl.IsInFaction(MAG_PilgrimServicesRiftenVendor)
		Briehl.AddToFaction(MAG_PilgrimServicesRiftenVendor)
	ENDIF
	IF !Lortheim.IsInFaction(MAG_PilgrimServicesWindhelmVendor)
		Lortheim.AddToFaction(MAG_PilgrimServicesWindhelmVendor)
	ENDIF
	IF !Rorlund.IsInFaction(MAG_PilgrimServicesSolitudeVendor)
		Rorlund.AddToFaction(MAG_PilgrimServicesSolitudeVendor)
	ENDIF
	IF !SilanaPetria.IsInFaction(MAG_PilgrimServicesSolitudeVendor)
		SilanaPetria.AddToFaction(MAG_PilgrimServicesSolitudeVendor)
	ENDIF
	IF !GaldrusHlervu.IsInFaction(MAG_PilgrimServicesRavenRockVendor)
		GaldrusHlervu.AddToFaction(MAG_PilgrimServicesRavenRockVendor)
	ENDIF

ENDEVENT