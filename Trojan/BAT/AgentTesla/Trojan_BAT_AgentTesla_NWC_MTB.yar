
rule Trojan_BAT_AgentTesla_NWC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NWC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {13 07 11 07 2c 3b 11 04 1f 21 8c 90 01 03 01 09 1f 0e 8c 90 01 03 01 28 90 01 03 0a 1f 5e 8c 90 01 03 01 28 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 13 04 00 2b 16 00 11 04 09 90 00 } //01 00 
		$a_01_1 = {49 54 49 54 49 54 49 54 49 49 54 49 54 49 54 49 54 49 54 49 54 54 49 49 54 49 54 } //00 00 
	condition:
		any of ($a_*)
 
}