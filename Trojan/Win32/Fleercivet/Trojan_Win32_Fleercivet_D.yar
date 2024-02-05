
rule Trojan_Win32_Fleercivet_D{
	meta:
		description = "Trojan:Win32/Fleercivet.D,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 09 00 00 10 00 "
		
	strings :
		$a_01_0 = {6a 40 58 83 f9 06 74 0e 6a 0a 5a 83 f9 09 0f 45 c2 c9 c3 6a 56 58 c9 c3 } //10 00 
		$a_01_1 = {0f b7 4c 24 34 85 c9 74 17 b8 40 00 00 00 83 f9 06 74 12 83 f9 09 ba 0a 00 00 00 0f 45 c2 eb 05 b8 56 00 00 00 } //10 00 
		$a_01_2 = {85 c9 74 19 b8 40 00 00 00 83 f9 06 74 14 83 f9 09 ba 0a 00 00 00 0f 45 c2 8b e5 5d c3 b8 56 00 00 00 8b e5 5d c3 } //10 00 
		$a_03_3 = {85 c0 74 17 bb 40 00 00 00 83 f8 06 74 12 b9 0a 00 00 00 83 f8 09 0f 45 d9 eb 05 bb 56 00 00 00 e8 90 01 04 8b 4d 90 00 } //10 00 
		$a_01_4 = {85 c9 74 17 b8 40 00 00 00 83 f9 06 74 12 ba 0a 00 00 00 83 f9 09 0f 45 c2 eb 05 b8 56 00 00 00 } //01 00 
		$a_03_5 = {25 00 73 00 5c 00 40 00 73 00 79 00 73 00 74 00 65 00 6d 00 90 0f 01 00 00 2e 00 61 00 74 00 74 00 90 00 } //01 00 
		$a_01_6 = {20 5b 25 30 34 64 2d 25 30 32 64 2d 25 30 32 64 5d 20 5b 25 30 32 64 2d 25 30 32 64 2d 25 30 32 64 2d 25 30 33 64 5d 20 2d 3e 5b 5d 3c 20 20 25 73 20 20 3e } //01 00 
		$a_01_7 = {5b 00 7c 00 5d 00 25 00 30 00 38 00 58 00 5b 00 7c 00 5d 00 25 00 73 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 73 00 5b 00 7c 00 5d 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 2e 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 } //01 00 
		$a_01_8 = {69 70 63 62 33 3d 00 00 74 69 6d 65 75 70 3d 00 64 6e 75 70 31 3d 00 00 64 6e 65 31 3d 00 00 00 63 6c 5f 75 72 6c 31 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}