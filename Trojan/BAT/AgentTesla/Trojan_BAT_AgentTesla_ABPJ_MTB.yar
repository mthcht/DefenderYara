
rule Trojan_BAT_AgentTesla_ABPJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABPJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {09 06 08 06 9a 1f 10 28 90 01 03 0a 9c 06 17 58 0a 06 08 8e 69 fe 04 13 05 11 05 2d e3 90 00 } //01 00 
		$a_01_1 = {53 70 6c 69 74 } //00 00  Split
	condition:
		any of ($a_*)
 
}