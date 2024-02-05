
rule Trojan_BAT_AgentTesla_CAM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CAM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {91 13 06 16 16 11 06 11 05 18 28 90 01 01 00 00 06 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 13 07 16 16 02 74 90 01 01 00 00 1b 11 04 28 90 01 01 00 00 0a 91 11 07 18 28 90 01 01 00 00 06 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 13 08 06 1a 9a 74 90 01 01 00 00 1b 11 04 28 90 01 01 00 00 0a 11 08 b4 9c 11 04 09 12 04 28 90 00 } //02 00 
		$a_03_1 = {11 04 04 03 8e 69 16 16 17 28 90 01 01 00 00 06 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 04 5f 13 05 03 11 04 28 90 01 01 00 00 0a 03 8e 69 16 16 17 28 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}