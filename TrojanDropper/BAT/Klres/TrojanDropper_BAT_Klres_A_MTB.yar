
rule TrojanDropper_BAT_Klres_A_MTB{
	meta:
		description = "TrojanDropper:BAT/Klres.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {0c 16 0d 06 28 90 01 01 00 00 0a 3a 90 01 01 00 00 00 06 28 90 01 01 00 00 0a 26 07 28 90 01 01 00 00 0a 39 90 01 01 00 00 00 90 01 05 90 02 05 28 90 01 01 00 00 0a 13 04 16 13 05 38 90 01 01 00 00 00 11 04 11 05 9a 6f 90 01 01 00 00 0a 11 05 17 58 13 05 11 05 11 04 8e 69 3f e5 ff ff ff 08 28 90 01 01 00 00 0a 39 90 01 01 00 00 00 08 28 90 01 01 00 00 0a 08 04 28 90 01 01 00 00 0a 08 73 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}