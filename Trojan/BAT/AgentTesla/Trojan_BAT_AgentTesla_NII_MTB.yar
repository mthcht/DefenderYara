
rule Trojan_BAT_AgentTesla_NII_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NII!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {24 66 30 31 37 32 37 66 36 2d 32 35 66 38 2d 34 32 35 33 2d 39 33 37 66 2d 38 61 39 37 64 30 36 30 61 61 66 66 } //0a 00 
		$a_01_1 = {24 31 31 30 36 30 31 32 39 2d 35 38 64 39 2d 34 33 65 63 2d 38 63 62 32 2d 34 34 35 37 63 31 61 30 35 34 30 39 } //01 00 
		$a_01_2 = {57 7b 00 22 00 73 00 74 00 61 00 74 00 75 00 73 00 22 00 3a 00 74 00 72 00 75 00 65 00 2c 00 22 00 64 00 61 00 74 00 61 00 22 00 3a 00 30 00 2e 00 30 00 30 00 30 00 30 00 34 00 31 00 33 00 30 00 32 00 34 00 34 00 39 00 32 00 35 00 38 00 35 00 36 00 34 00 7d } //01 00 
		$a_01_3 = {47 65 74 54 79 70 65 } //01 00 
		$a_01_4 = {47 65 74 4d 65 74 68 6f 64 } //01 00 
		$a_01_5 = {53 75 62 73 74 72 69 6e 67 } //01 00 
		$a_01_6 = {52 65 70 6c 61 63 65 } //01 00 
		$a_01_7 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_01_8 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00 
	condition:
		any of ($a_*)
 
}