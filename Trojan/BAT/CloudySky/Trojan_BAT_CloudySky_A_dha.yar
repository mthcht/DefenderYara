
rule Trojan_BAT_CloudySky_A_dha{
	meta:
		description = "Trojan:BAT/CloudySky.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 6f 00 75 00 74 00 6c 00 6f 00 6f 00 6b 00 2e 00 6f 00 66 00 66 00 69 00 63 00 65 00 33 00 36 00 35 00 2e 00 63 00 6f 00 6d 00 2f 00 45 00 57 00 53 00 2f 00 45 00 78 00 63 00 68 00 61 00 6e 00 67 00 65 00 2e 00 61 00 73 00 6d 00 78 00 } //01 00 
		$a_01_1 = {73 00 75 00 62 00 6a 00 65 00 63 00 74 00 3a 00 53 00 54 00 4f 00 43 00 3a 00 } //01 00 
		$a_01_2 = {62 00 69 00 6e 00 2e 00 63 00 6e 00 74 00 } //01 00 
		$a_01_3 = {56 65 72 73 69 6f 6e 2e 65 78 65 } //02 00 
		$a_01_4 = {01 03 06 3f 05 07 03 02 08 41 } //01 00 
		$a_01_5 = {30 30 30 3a 30 3a 32 3a 35 2e 30 2e 32 35 30 30 2e 30 } //03 00 
		$a_01_6 = {65 32 66 63 31 37 37 33 2d 32 36 63 64 2d 34 39 62 65 2d 62 34 36 38 2d 38 39 64 31 62 64 64 62 34 33 30 38 } //00 00 
	condition:
		any of ($a_*)
 
}