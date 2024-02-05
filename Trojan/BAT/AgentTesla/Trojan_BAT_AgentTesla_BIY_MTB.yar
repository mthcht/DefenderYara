
rule Trojan_BAT_AgentTesla_BIY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BIY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0b 00 00 0a 00 "
		
	strings :
		$a_81_0 = {36 62 34 35 35 39 31 34 2d 62 36 62 33 2d 34 32 35 65 2d 62 32 32 30 2d 37 37 33 66 61 30 34 36 39 32 62 38 } //0a 00 
		$a_81_1 = {37 66 39 64 37 63 33 38 2d 34 65 30 39 2d 34 33 61 33 2d 38 34 35 35 2d 61 37 39 66 31 39 66 38 64 38 31 30 } //0a 00 
		$a_81_2 = {38 32 30 62 64 61 66 31 2d 63 35 38 63 2d 34 34 65 36 2d 38 30 64 33 2d 33 37 61 34 37 65 35 31 64 39 32 39 } //01 00 
		$a_81_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_81_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00 
		$a_81_5 = {47 65 74 54 79 70 65 } //01 00 
		$a_81_6 = {43 6f 6d 70 72 65 73 73 69 6f 6e 4d 6f 64 65 } //01 00 
		$a_81_7 = {49 6e 76 6f 6b 65 } //01 00 
		$a_81_8 = {47 65 74 4d 65 74 68 6f 64 } //01 00 
		$a_81_9 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_10 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00 
	condition:
		any of ($a_*)
 
}