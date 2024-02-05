
rule Worm_Win32_Zazorex_E{
	meta:
		description = "Worm:Win32/Zazorex.E,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {2f 63 20 70 69 6e 67 20 31 2e 31 2e 31 2e 31 20 2d 6e 20 31 20 2d 77 20 33 30 30 30 20 3e 3e 20 4e 55 4c 20 26 20 64 65 6c 20 00 } //01 00 
		$a_00_1 = {2e 66 61 63 65 62 6f 6f 6b 2e 63 6f 6d 63 5f 75 73 65 72 00 2e 66 61 63 65 62 6f 6f 6b 2e 63 6f 6d 78 73 00 } //01 00 
		$a_00_2 = {2f 6d 65 2f 66 72 69 65 6e 64 73 3f 66 69 65 6c 64 73 3d 69 64 26 61 63 63 65 73 73 5f 74 6f 6b 65 6e 3d 25 73 00 } //01 00 
		$a_03_3 = {08 66 61 63 c7 45 90 01 01 65 62 6f 6f 66 c7 45 90 01 01 6b 00 c7 45 90 01 01 06 63 5f 75 c7 45 90 01 01 73 65 72 00 c7 90 03 04 04 45 90 01 01 85 90 01 04 02 78 73 00 90 00 } //00 00 
		$a_00_4 = {5d 04 00 } //00 87 
	condition:
		any of ($a_*)
 
}