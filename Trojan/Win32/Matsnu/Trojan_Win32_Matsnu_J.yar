
rule Trojan_Win32_Matsnu_J{
	meta:
		description = "Trojan:Win32/Matsnu.J,SIGNATURE_TYPE_PEHSTR_EXT,07 00 05 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {80 3e 00 74 13 31 c0 8a 06 24 1f 8d 55 d4 01 c2 8a 02 88 07 46 47 eb e8 } //01 00 
		$a_03_1 = {73 61 6e 64 c7 45 90 01 01 2d 62 6f 78 90 00 } //01 00 
		$a_03_2 = {2e 70 72 65 c6 45 90 01 01 00 90 00 } //01 00 
		$a_03_3 = {67 65 74 3d c7 85 90 01 04 72 65 70 6f c7 85 90 01 04 72 74 26 74 90 00 } //01 00 
		$a_01_4 = {49 4d 41 47 45 53 3a 00 47 45 4f 3a 00 4c 4f 43 4b 3a 00 } //01 00 
		$a_01_5 = {55 52 4c 53 3a 00 45 58 45 43 55 54 45 3a 00 4b 49 4c 4c 3a 00 } //01 00 
		$a_01_6 = {26 76 65 72 3d 25 73 26 6c 74 79 70 65 3d 6d 6c 26 25 73 } //01 00 
		$a_03_7 = {67 65 74 3d c7 45 90 01 01 67 65 74 73 c7 45 90 01 01 65 6e 64 65 c7 45 90 01 01 72 73 74 6f 90 00 } //01 00 
		$a_03_8 = {67 65 74 3d c7 85 90 01 04 63 66 67 26 c7 85 90 01 04 73 74 74 68 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}