
rule Worm_BAT_Shaskooth_A{
	meta:
		description = "Worm:BAT/Shaskooth.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {74 00 61 00 73 00 6b 00 68 00 6f 00 73 00 74 00 68 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {74 61 73 6b 68 6f 73 74 5f 73 79 73 74 65 6d 5f 33 32 2e 50 72 6f 70 65 72 74 69 65 73 00 } //01 00 
		$a_01_2 = {42 75 62 6c 69 73 68 65 72 5f 4c 6f 61 64 00 } //01 00 
		$a_01_3 = {54 69 6d 65 72 42 75 73 71 5f 54 69 63 6b 00 } //01 00 
		$a_01_4 = {45 73 74 61 41 63 74 69 76 6f 45 6c 76 69 72 75 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}