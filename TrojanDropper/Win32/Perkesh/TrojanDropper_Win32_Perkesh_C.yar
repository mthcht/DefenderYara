
rule TrojanDropper_Win32_Perkesh_C{
	meta:
		description = "TrojanDropper:Win32/Perkesh.C,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 02 00 "
		
	strings :
		$a_03_0 = {7c ea 33 c0 c3 90 09 18 00 90 02 03 33 c0 b1 90 01 01 8a 90 90 90 01 04 32 d1 88 90 90 90 01 04 40 3d 90 01 02 00 00 90 00 } //02 00 
		$a_03_1 = {68 00 1e 00 00 68 90 01 04 56 e8 90 01 02 ff ff 83 c4 14 85 c0 74 02 90 00 } //02 00 
		$a_03_2 = {68 c9 23 00 00 68 90 01 04 e8 90 01 04 8b f8 83 c4 0c 85 ff 75 08 90 00 } //02 00 
		$a_03_3 = {8a 0c 33 8a c3 c0 e0 90 01 01 2c 90 01 01 8b fe 02 c8 33 c0 88 0c 33 83 c9 ff 43 f2 ae f7 d1 49 3b d9 72 90 00 } //02 00 
		$a_03_4 = {74 21 8a c2 b1 90 01 01 2c 90 01 01 8b fe f6 e9 8a 0c 32 02 c8 33 c0 88 0c 32 90 00 } //01 00 
		$a_02_5 = {44 65 62 75 67 67 65 72 90 02 07 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 63 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 69 6d 61 67 65 20 66 69 6c 65 20 45 78 65 63 75 74 69 6f 6e 20 6f 70 74 69 6f 6e 73 5c 90 00 } //01 00 
		$a_03_6 = {2e 64 61 74 00 90 02 20 74 72 75 65 00 90 02 05 57 69 6e 45 78 65 63 00 90 00 } //01 00 
		$a_03_7 = {25 73 6f 70 25 78 2e 7a 90 02 05 5c 5c 2e 5c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}