
rule Trojan_BAT_AgentTesla_DJC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DJC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {09 11 04 11 05 6f 90 01 03 0a 13 06 09 11 04 11 05 6f 90 01 03 0a 13 07 16 13 08 02 11 07 28 90 01 03 06 13 08 1b 13 09 11 09 13 0b 11 0b 13 0a 11 0a 1b 2e 02 2b 0d 17 13 0c 00 08 07 11 08 d2 9c 00 2b 02 2b 00 00 11 05 17 58 13 05 11 05 17 fe 04 13 0d 11 0d 2d a7 90 00 } //0a 00 
		$a_03_1 = {09 11 04 11 05 6f 90 01 03 0a 13 06 09 11 04 11 05 6f 90 01 03 0a 13 07 16 13 08 02 11 07 28 90 01 03 06 13 08 08 07 11 08 d2 9c 00 11 05 17 58 13 05 11 05 17 fe 04 13 09 11 09 2d c2 07 17 58 0b 00 11 04 17 58 13 04 90 00 } //01 00 
		$a_01_2 = {00 47 65 74 50 69 78 65 6c 00 } //01 00 
		$a_81_3 = {54 6f 57 69 6e 33 32 } //01 00 
		$a_01_4 = {00 47 65 74 54 79 70 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}