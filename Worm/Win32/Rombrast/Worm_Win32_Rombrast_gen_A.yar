
rule Worm_Win32_Rombrast_gen_A{
	meta:
		description = "Worm:Win32/Rombrast.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b 75 10 8d 74 71 08 bb 00 30 00 00 66 85 1e 74 90 01 01 0f b7 36 8b 19 81 e6 ff 0f 00 00 03 75 08 90 03 04 03 03 f3 01 16 01 14 1e ff 45 10 39 7d 10 90 00 } //01 00 
		$a_01_1 = {45 52 52 4f 52 5f 42 52 41 49 4e 5f 54 4f 4f 5f 53 4d 41 4c 4c } //01 00 
		$a_01_2 = {57 69 6e 64 6f 77 73 20 44 65 61 74 68 } //01 00 
		$a_01_3 = {64 61 74 61 3d 25 73 3c 7c 3e 25 73 3c 7c 3e 25 64 3c 7c 3e 25 64 3c 7c 3e 25 73 3c 7c 3e 25 64 } //01 00 
		$a_01_4 = {64 61 74 61 3d 55 53 42 3c 7c 3e 49 6e 66 65 63 74 65 64 20 44 72 69 76 65 20 25 63 3a 5c 3c 7c 7c 3e } //01 00 
		$a_01_5 = {3f 61 63 74 3d 73 70 72 65 61 64 69 6e 67 26 76 65 72 3d 25 73 } //01 00 
		$a_01_6 = {7b 00 61 00 35 00 64 00 63 00 62 00 66 00 31 00 30 00 2d 00 36 00 35 00 33 00 30 00 2d 00 31 00 31 00 64 00 32 00 2d 00 39 00 30 00 31 00 66 00 2d 00 30 00 30 00 63 00 30 00 34 00 66 00 62 00 39 00 35 00 31 00 65 00 64 00 7d 00 00 00 00 00 2e 00 45 00 58 00 45 00 } //00 00 
	condition:
		any of ($a_*)
 
}