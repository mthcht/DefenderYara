
rule Trojan_BAT_AgentTesla_EKI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EKI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 00 43 00 67 00 59 00 66 00 2f 00 53 00 34 00 45 00 42 00 68 00 63 00 7a 00 43 00 67 00 44 00 65 00 42 00 77 00 49 00 6f 00 42 00 28 06 27 06 28 06 27 06 28 06 27 06 42 00 74 00 77 00 71 00 } //01 00 
		$a_01_1 = {00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 } //01 00 
		$a_01_2 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //01 00 
		$a_01_3 = {53 00 68 00 61 00 72 00 70 00 53 00 74 00 72 00 75 00 63 00 74 00 75 00 72 00 65 00 73 00 2e 00 4d 00 61 00 69 00 6e 00 2e 00 53 00 6f 00 72 00 74 00 48 00 65 00 6c 00 70 00 65 00 72 00 } //01 00 
		$a_01_4 = {47 65 74 54 79 70 65 } //00 00 
	condition:
		any of ($a_*)
 
}