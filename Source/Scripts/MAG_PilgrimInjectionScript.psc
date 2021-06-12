Scriptname MAG_PilgrimInjectionScript extends Quest  

;-- Properties --------------------------------------

;-- Leveled Lists to inject into --

LeveledItem Property MAG_LItemPilgrimVendorMarkarthMysticismItems Auto
LeveledItem Property MAG_LItemPilgrimVendorRiftenMysticismItems Auto
LeveledItem Property MAG_LItemPilgrimVendorSolitudeMysticismItems Auto
LeveledItem Property MAG_LItemPilgrimVendorWhiterunMysticismItems Auto
LeveledItem Property MAG_LItemPilgrimVendorWindhelmMysticismItems Auto
LeveledItem Property MAG_LItemPilgrimVendorRavenRockMysticismItems Auto
LeveledItem Property MAG_LItemPilgrimVendorFlorentiusMysticismItems Auto
LeveledItem Property MAG_LItemPilgrimVendorMysticismItems Auto

;-- Leveled Lists to inject from --

LeveledItem Property LItemMarkarth01 auto
LeveledItem Property LItemMarkarth02 auto
LeveledItem Property LItemMarkarth03 auto
LeveledItem Property LItemMarkarth04 auto
LeveledItem Property LItemMarkarth05 auto
LeveledItem Property LItemMarkarth06 auto
LeveledItem Property LItemMarkarth07 auto
LeveledItem Property LItemMarkarth08 auto
LeveledItem Property LItemMarkarth09 auto
LeveledItem Property LItemMarkarth10 auto

LeveledItem Property LItemRiften01 auto
LeveledItem Property LItemRiften02 auto
LeveledItem Property LItemRiften03 auto
LeveledItem Property LItemRiften04 auto
LeveledItem Property LItemRiften05 auto
LeveledItem Property LItemRiften06 auto
LeveledItem Property LItemRiften07 auto
LeveledItem Property LItemRiften08 auto
LeveledItem Property LItemRiften09 auto
LeveledItem Property LItemRiften10 auto

LeveledItem Property LItemSolitude01 auto
LeveledItem Property LItemSolitude02 auto
LeveledItem Property LItemSolitude03 auto
LeveledItem Property LItemSolitude04 auto
LeveledItem Property LItemSolitude05 auto
LeveledItem Property LItemSolitude06 auto
LeveledItem Property LItemSolitude07 auto
LeveledItem Property LItemSolitude08 auto
LeveledItem Property LItemSolitude09 auto
LeveledItem Property LItemSolitude10 auto

LeveledItem Property LItemWhiterun01 auto
LeveledItem Property LItemWhiterun02 auto
LeveledItem Property LItemWhiterun03 auto
LeveledItem Property LItemWhiterun04 auto
LeveledItem Property LItemWhiterun05 auto
LeveledItem Property LItemWhiterun06 auto
LeveledItem Property LItemWhiterun07 auto
LeveledItem Property LItemWhiterun08 auto
LeveledItem Property LItemWhiterun09 auto
LeveledItem Property LItemWhiterun10 auto

LeveledItem Property LItemWindhelm01 auto
LeveledItem Property LItemWindhelm02 auto
LeveledItem Property LItemWindhelm03 auto
LeveledItem Property LItemWindhelm04 auto
LeveledItem Property LItemWindhelm05 auto
LeveledItem Property LItemWindhelm06 auto
LeveledItem Property LItemWindhelm07 auto
LeveledItem Property LItemWindhelm08 auto
LeveledItem Property LItemWindhelm09 auto
LeveledItem Property LItemWindhelm10 auto

LeveledItem Property LItemRavenRock01 auto
LeveledItem Property LItemRavenRock02 auto
LeveledItem Property LItemRavenRock03 auto
LeveledItem Property LItemRavenRock04 auto
LeveledItem Property LItemRavenRock05 auto
LeveledItem Property LItemRavenRock06 auto
LeveledItem Property LItemRavenRock07 auto
LeveledItem Property LItemRavenRock08 auto
LeveledItem Property LItemRavenRock09 auto
LeveledItem Property LItemRavenRock10 auto

LeveledItem Property LItemFlorentius01 auto
LeveledItem Property LItemFlorentius02 auto
LeveledItem Property LItemFlorentius03 auto
LeveledItem Property LItemFlorentius04 auto
LeveledItem Property LItemFlorentius05 auto
LeveledItem Property LItemFlorentius06 auto
LeveledItem Property LItemFlorentius07 auto
LeveledItem Property LItemFlorentius08 auto
LeveledItem Property LItemFlorentius09 auto
LeveledItem Property LItemFlorentius10 auto

LeveledItem Property LItemGeneric01 auto
LeveledItem Property LItemGeneric02 auto
LeveledItem Property LItemGeneric03 auto
LeveledItem Property LItemGeneric04 auto
LeveledItem Property LItemGeneric05 auto
LeveledItem Property LItemGeneric06 auto
LeveledItem Property LItemGeneric07 auto
LeveledItem Property LItemGeneric08 auto
LeveledItem Property LItemGeneric09 auto
LeveledItem Property LItemGeneric10 auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Event OnInit()

;-- Inject into Markarth vendors's Level List --

	MAG_LItemPilgrimVendorMarkarthMysticismItems.AddForm(LItemMarkarth01,1, 1)
	MAG_LItemPilgrimVendorMarkarthMysticismItems.AddForm(LItemMarkarth02,1, 1)
	MAG_LItemPilgrimVendorMarkarthMysticismItems.AddForm(LItemMarkarth03,1, 1)
	MAG_LItemPilgrimVendorMarkarthMysticismItems.AddForm(LItemMarkarth04,1, 1)
	MAG_LItemPilgrimVendorMarkarthMysticismItems.AddForm(LItemMarkarth05,1, 1)
	MAG_LItemPilgrimVendorMarkarthMysticismItems.AddForm(LItemMarkarth06,1, 1)
	MAG_LItemPilgrimVendorMarkarthMysticismItems.AddForm(LItemMarkarth07,1, 1)
	MAG_LItemPilgrimVendorMarkarthMysticismItems.AddForm(LItemMarkarth08,1, 1)
	MAG_LItemPilgrimVendorMarkarthMysticismItems.AddForm(LItemMarkarth09,1, 1)
	MAG_LItemPilgrimVendorMarkarthMysticismItems.AddForm(LItemMarkarth10,1, 1)

;-- Inject into Riften vendors's Level List --

	MAG_LItemPilgrimVendorRiftenMysticismItems.AddForm(LItemRiften01,1, 1)
	MAG_LItemPilgrimVendorRiftenMysticismItems.AddForm(LItemRiften02,1, 1)
	MAG_LItemPilgrimVendorRiftenMysticismItems.AddForm(LItemRiften03,1, 1)
	MAG_LItemPilgrimVendorRiftenMysticismItems.AddForm(LItemRiften04,1, 1)
	MAG_LItemPilgrimVendorRiftenMysticismItems.AddForm(LItemRiften05,1, 1)
	MAG_LItemPilgrimVendorRiftenMysticismItems.AddForm(LItemRiften06,1, 1)
	MAG_LItemPilgrimVendorRiftenMysticismItems.AddForm(LItemRiften07,1, 1)
	MAG_LItemPilgrimVendorRiftenMysticismItems.AddForm(LItemRiften08,1, 1)
	MAG_LItemPilgrimVendorRiftenMysticismItems.AddForm(LItemRiften09,1, 1)
	MAG_LItemPilgrimVendorRiftenMysticismItems.AddForm(LItemRiften10,1, 1)

;-- Inject into Solitude vendors's Level List --

	MAG_LItemPilgrimVendorSolitudeMysticismItems.AddForm(LItemSolitude01,1, 1)
	MAG_LItemPilgrimVendorSolitudeMysticismItems.AddForm(LItemSolitude02,1, 1)
	MAG_LItemPilgrimVendorSolitudeMysticismItems.AddForm(LItemSolitude03,1, 1)
	MAG_LItemPilgrimVendorSolitudeMysticismItems.AddForm(LItemSolitude04,1, 1)
	MAG_LItemPilgrimVendorSolitudeMysticismItems.AddForm(LItemSolitude05,1, 1)
	MAG_LItemPilgrimVendorSolitudeMysticismItems.AddForm(LItemSolitude06,1, 1)
	MAG_LItemPilgrimVendorSolitudeMysticismItems.AddForm(LItemSolitude07,1, 1)
	MAG_LItemPilgrimVendorSolitudeMysticismItems.AddForm(LItemSolitude08,1, 1)
	MAG_LItemPilgrimVendorSolitudeMysticismItems.AddForm(LItemSolitude09,1, 1)
	MAG_LItemPilgrimVendorSolitudeMysticismItems.AddForm(LItemSolitude10,1, 1)

;-- Inject into Whiterun vendors's Level List --

	MAG_LItemPilgrimVendorWhiterunMysticismItems.AddForm(LItemWhiterun01,1, 1)
	MAG_LItemPilgrimVendorWhiterunMysticismItems.AddForm(LItemWhiterun02,1, 1)
	MAG_LItemPilgrimVendorWhiterunMysticismItems.AddForm(LItemWhiterun03,1, 1)
	MAG_LItemPilgrimVendorWhiterunMysticismItems.AddForm(LItemWhiterun04,1, 1)
	MAG_LItemPilgrimVendorWhiterunMysticismItems.AddForm(LItemWhiterun05,1, 1)
	MAG_LItemPilgrimVendorWhiterunMysticismItems.AddForm(LItemWhiterun06,1, 1)
	MAG_LItemPilgrimVendorWhiterunMysticismItems.AddForm(LItemWhiterun07,1, 1)
	MAG_LItemPilgrimVendorWhiterunMysticismItems.AddForm(LItemWhiterun08,1, 1)
	MAG_LItemPilgrimVendorWhiterunMysticismItems.AddForm(LItemWhiterun09,1, 1)
	MAG_LItemPilgrimVendorWhiterunMysticismItems.AddForm(LItemWhiterun10,1, 1)

;-- Inject into Windhelm vendors's Level List --

	MAG_LItemPilgrimVendorWindhelmMysticismItems.AddForm(LItemWindhelm01,1, 1)
	MAG_LItemPilgrimVendorWindhelmMysticismItems.AddForm(LItemWindhelm02,1, 1)
	MAG_LItemPilgrimVendorWindhelmMysticismItems.AddForm(LItemWindhelm03,1, 1)
	MAG_LItemPilgrimVendorWindhelmMysticismItems.AddForm(LItemWindhelm04,1, 1)
	MAG_LItemPilgrimVendorWindhelmMysticismItems.AddForm(LItemWindhelm05,1, 1)
	MAG_LItemPilgrimVendorWindhelmMysticismItems.AddForm(LItemWindhelm06,1, 1)
	MAG_LItemPilgrimVendorWindhelmMysticismItems.AddForm(LItemWindhelm07,1, 1)
	MAG_LItemPilgrimVendorWindhelmMysticismItems.AddForm(LItemWindhelm08,1, 1)
	MAG_LItemPilgrimVendorWindhelmMysticismItems.AddForm(LItemWindhelm09,1, 1)
	MAG_LItemPilgrimVendorWindhelmMysticismItems.AddForm(LItemWindhelm10,1, 1)

;-- Inject into Raven Rock vendors's Level List --

	MAG_LItemPilgrimVendorRavenRockMysticismItems.AddForm(LItemRavenRock01,1, 1)
	MAG_LItemPilgrimVendorRavenRockMysticismItems.AddForm(LItemRavenRock02,1, 1)
	MAG_LItemPilgrimVendorRavenRockMysticismItems.AddForm(LItemRavenRock03,1, 1)
	MAG_LItemPilgrimVendorRavenRockMysticismItems.AddForm(LItemRavenRock04,1, 1)
	MAG_LItemPilgrimVendorRavenRockMysticismItems.AddForm(LItemRavenRock05,1, 1)
	MAG_LItemPilgrimVendorRavenRockMysticismItems.AddForm(LItemRavenRock06,1, 1)
	MAG_LItemPilgrimVendorRavenRockMysticismItems.AddForm(LItemRavenRock07,1, 1)
	MAG_LItemPilgrimVendorRavenRockMysticismItems.AddForm(LItemRavenRock08,1, 1)
	MAG_LItemPilgrimVendorRavenRockMysticismItems.AddForm(LItemRavenRock09,1, 1)
	MAG_LItemPilgrimVendorRavenRockMysticismItems.AddForm(LItemRavenRock10,1, 1)

;-- Inject into Florentius' Level List --

	MAG_LItemPilgrimVendorFlorentiusMysticismItems.AddForm(LItemFlorentius01,1, 1)
	MAG_LItemPilgrimVendorFlorentiusMysticismItems.AddForm(LItemFlorentius02,1, 1)
	MAG_LItemPilgrimVendorFlorentiusMysticismItems.AddForm(LItemFlorentius03,1, 1)
	MAG_LItemPilgrimVendorFlorentiusMysticismItems.AddForm(LItemFlorentius04,1, 1)
	MAG_LItemPilgrimVendorFlorentiusMysticismItems.AddForm(LItemFlorentius05,1, 1)
	MAG_LItemPilgrimVendorFlorentiusMysticismItems.AddForm(LItemFlorentius06,1, 1)
	MAG_LItemPilgrimVendorFlorentiusMysticismItems.AddForm(LItemFlorentius07,1, 1)
	MAG_LItemPilgrimVendorFlorentiusMysticismItems.AddForm(LItemFlorentius08,1, 1)
	MAG_LItemPilgrimVendorFlorentiusMysticismItems.AddForm(LItemFlorentius09,1, 1)
	MAG_LItemPilgrimVendorFlorentiusMysticismItems.AddForm(LItemFlorentius10,1, 1)

;-- Inject into a generic level list --

	MAG_LItemPilgrimVendorMysticismItems.AddForm(LItemGeneric01,1, 1)
	MAG_LItemPilgrimVendorMysticismItems.AddForm(LItemGeneric02,1, 1)
	MAG_LItemPilgrimVendorMysticismItems.AddForm(LItemGeneric03,1, 1)
	MAG_LItemPilgrimVendorMysticismItems.AddForm(LItemGeneric04,1, 1)
	MAG_LItemPilgrimVendorMysticismItems.AddForm(LItemGeneric05,1, 1)
	MAG_LItemPilgrimVendorMysticismItems.AddForm(LItemGeneric06,1, 1)
	MAG_LItemPilgrimVendorMysticismItems.AddForm(LItemGeneric07,1, 1)
	MAG_LItemPilgrimVendorMysticismItems.AddForm(LItemGeneric08,1, 1)
	MAG_LItemPilgrimVendorMysticismItems.AddForm(LItemGeneric09,1, 1)
	MAG_LItemPilgrimVendorMysticismItems.AddForm(LItemGeneric10,1, 1)

debug.notification("All LItems have been injected!")

EndEvent