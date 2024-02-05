
rule Trojan_BAT_AgentTesla_DWK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DWK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_03_0 = {11 06 11 07 11 08 28 90 01 03 06 13 0a d0 90 01 03 01 28 90 01 03 0a 72 90 01 03 70 20 00 01 00 00 14 14 17 8d 90 01 03 01 25 16 11 0a 8c 90 01 03 01 a2 28 90 01 03 0a a5 90 01 03 01 13 0b 17 13 0c 11 05 11 0b d2 6f 90 01 03 0a 00 00 11 08 17 58 13 08 11 08 17 fe 04 13 0d 11 0d 2d a0 90 00 } //0a 00 
		$a_03_1 = {16 0b 2b 50 11 09 06 07 28 90 01 03 06 13 0a d0 90 01 03 01 28 90 01 03 0a 20 90 01 04 28 90 01 03 06 20 00 01 00 00 14 14 17 8d 90 01 03 01 25 16 11 0a 8c 90 01 03 01 a2 28 90 01 03 0a a5 90 01 03 01 13 0b 11 08 11 0b d2 6f 90 01 03 0a 07 17 58 0b 90 00 } //01 00 
		$a_81_2 = {54 6f 49 6e 74 33 32 } //01 00 
		$a_81_3 = {47 65 74 50 69 78 65 6c } //00 00 
	condition:
		any of ($a_*)
 
}