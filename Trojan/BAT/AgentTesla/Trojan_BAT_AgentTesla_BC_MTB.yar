
rule Trojan_BAT_AgentTesla_BC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 03 00 "
		
	strings :
		$a_00_0 = {01 01 57 ff 03 3e 09 1f 00 00 00 00 00 00 00 00 00 00 01 00 00 00 38 01 00 00 32 01 00 00 bb 04 } //03 00 
		$a_01_1 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 2e 00 43 00 72 00 79 00 70 00 74 00 6f 00 67 00 72 00 61 00 70 00 68 00 79 00 2e 00 41 00 65 00 73 00 43 00 72 00 79 00 70 00 74 00 6f 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 50 00 72 00 6f 00 76 00 69 00 64 00 65 00 72 00 } //03 00 
		$a_01_2 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 31 00 30 00 30 00 30 00 39 00 2d 00 31 00 31 00 31 00 31 00 32 00 7d 00 } //03 00 
		$a_01_3 = {55 00 5a 00 46 00 75 00 71 00 72 00 77 00 44 00 6b 00 56 00 48 00 46 00 59 00 6b 00 79 00 58 00 48 00 31 00 2e 00 66 00 66 00 4b 00 77 00 4d 00 63 00 63 00 6b 00 61 00 4b 00 78 00 39 00 62 00 32 00 35 00 4c 00 4a 00 66 00 } //03 00 
		$a_01_4 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 30 00 7d 00 } //03 00 
		$a_01_5 = {47 00 65 00 74 00 44 00 65 00 6c 00 65 00 67 00 61 00 74 00 65 00 46 00 6f 00 72 00 46 00 75 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 69 00 6e 00 74 00 65 00 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_BC_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.BC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 02 00 "
		
	strings :
		$a_01_0 = {6d 00 65 00 68 00 6e 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_01_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 74 00 65 00 78 00 74 00 62 00 69 00 6e 00 2e 00 6e 00 65 00 74 00 2f 00 72 00 61 00 77 00 2f 00 64 00 36 00 64 00 63 00 6b 00 66 00 68 00 6e 00 76 00 6b 00 } //02 00 
		$a_01_2 = {24 36 38 39 39 35 36 34 61 2d 61 33 62 37 2d 34 34 61 33 2d 39 61 37 63 2d 32 61 61 65 37 34 37 61 66 31 66 61 } //02 00 
		$a_01_3 = {50 00 6c 00 65 00 61 00 73 00 65 00 20 00 65 00 6e 00 74 00 65 00 72 00 20 00 79 00 6f 00 75 00 72 00 20 00 64 00 65 00 73 00 69 00 72 00 65 00 64 00 20 00 55 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 20 00 61 00 6e 00 64 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 20 00 66 00 6f 00 72 00 20 00 74 00 68 00 65 00 20 00 61 00 63 00 63 00 6f 00 75 00 6e 00 74 00 20 00 79 00 6f 00 75 00 20 00 77 00 69 00 73 00 68 00 20 00 74 00 6f 00 20 00 63 00 72 00 65 00 61 00 74 00 65 00 } //01 00 
		$a_01_4 = {43 6f 6d 70 61 72 65 53 74 72 69 6e 67 } //01 00 
		$a_01_5 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_01_6 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_01_7 = {43 6f 6d 70 61 72 65 4d 65 74 68 6f 64 } //01 00 
		$a_01_8 = {52 65 70 6c 61 63 65 } //01 00 
		$a_01_9 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_BC_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.BC!MTB,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 48 4d 56 42 2e 4d 79 } //01 00 
		$a_01_1 = {43 31 31 36 43 46 43 44 35 46 39 35 46 44 37 45 39 34 39 39 33 46 34 39 30 46 32 31 31 31 31 42 46 31 37 44 42 39 46 44 32 34 30 37 38 38 46 37 30 32 34 43 43 42 46 41 34 35 42 36 33 45 30 43 } //01 00 
		$a_01_2 = {24 65 34 30 37 36 62 66 64 2d 61 35 30 65 2d 34 32 34 34 2d 39 66 31 61 2d 39 62 37 64 66 30 65 64 35 32 30 32 } //00 00 
	condition:
		any of ($a_*)
 
}