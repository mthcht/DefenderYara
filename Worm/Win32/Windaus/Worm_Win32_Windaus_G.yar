
rule Worm_Win32_Windaus_G{
	meta:
		description = "Worm:Win32/Windaus.G,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 41 49 4c 20 46 52 4f 4d 3a 3c 73 74 79 6e 6b 79 5f 78 70 34 72 6b 79 33 78 40 68 6f 74 6d 61 69 6c 2e 63 6f 6d 2e 63 6f 6d 3e } //01 00 
		$a_01_1 = {53 75 62 6a 65 63 74 3a 48 6f 6c 61 20 73 61 6e 74 69 61 67 6f } //01 00 
		$a_01_2 = {43 3a 5c 73 6f 75 6e 64 2e 74 78 74 } //01 00 
		$a_01_3 = {64 61 74 6f 73 2e 74 78 74 } //01 00 
		$a_01_4 = {68 65 6c 6f 20 6d 65 2e 73 6f 6d 65 70 61 6c 61 63 65 2e 63 6f 6d } //00 00 
	condition:
		any of ($a_*)
 
}