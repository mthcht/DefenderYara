
rule Worm_BAT_Vahodon_A{
	meta:
		description = "Worm:BAT/Vahodon.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00 
		$a_01_1 = {6d 00 72 00 61 00 74 00 } //01 00 
		$a_01_2 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 20 00 2d 00 6c 00 20 00 2d 00 74 00 20 00 30 00 30 00 } //01 00 
		$a_01_3 = {46 00 69 00 6c 00 65 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 7c 00 7c 00 } //01 00 
		$a_01_4 = {70 00 72 00 6f 00 67 00 66 00 } //01 00 
		$a_01_5 = {55 00 53 00 42 00 00 00 } //01 00 
		$a_01_6 = {6d 00 65 00 6c 00 74 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_7 = {61 6e 74 69 76 00 } //00 00 
		$a_00_8 = {5d 04 00 00 } //46 17 
	condition:
		any of ($a_*)
 
}