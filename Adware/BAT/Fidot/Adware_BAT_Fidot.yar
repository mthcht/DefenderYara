
rule Adware_BAT_Fidot{
	meta:
		description = "Adware:BAT/Fidot,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 06 00 00 03 00 "
		
	strings :
		$a_01_0 = {02 7b 0f 00 00 0a 72 01 00 00 70 6f 12 00 00 0a 0a 02 6f 14 00 00 0a 26 02 72 2f 00 00 70 72 3f 00 00 70 6f 15 00 00 0a 26 2a } //03 00 
		$a_01_1 = {02 7b 21 00 00 0a 72 41 00 00 70 6f 2b 00 00 0a 0a 02 6f 2d 00 00 0a 26 02 72 85 01 00 70 72 95 01 00 70 6f 2e 00 00 0a 26 2a } //0a 00 
		$a_01_2 = {61 00 64 00 73 00 73 00 2e 00 64 00 6f 00 74 00 64 00 6f 00 2e 00 6e 00 65 00 74 00 2f 00 61 00 64 00 73 00 73 00 2f 00 } //0a 00 
		$a_01_3 = {36 00 31 00 25 00 36 00 34 00 25 00 37 00 33 00 25 00 37 00 33 00 25 00 32 00 45 00 } //01 00 
		$a_01_4 = {53 00 74 00 61 00 72 00 74 00 69 00 6e 00 67 00 20 00 46 00 69 00 64 00 64 00 6c 00 65 00 72 00 43 00 6f 00 72 00 65 00 2e 00 2e 00 2e 00 } //01 00 
		$a_01_5 = {66 00 69 00 64 00 64 00 6c 00 65 00 72 00 2e 00 6e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 2e 00 73 00 74 00 72 00 65 00 61 00 6d 00 69 00 6e 00 67 00 2e 00 61 00 62 00 6f 00 72 00 74 00 69 00 66 00 63 00 6c 00 69 00 65 00 6e 00 74 00 61 00 62 00 6f 00 72 00 74 00 73 00 } //00 00 
		$a_00_6 = {5d 04 00 00 21 1d 03 00 5c 22 } //00 00 
	condition:
		any of ($a_*)
 
}