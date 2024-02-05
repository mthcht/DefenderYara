
rule Ransom_Win32_Exxroute_B_{
	meta:
		description = "Ransom:Win32/Exxroute.B!!Exxroute.gen!B,SIGNATURE_TYPE_ARHSTR_EXT,06 00 06 00 0a 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 43 72 79 70 74 } //01 00 
		$a_00_1 = {4d 43 6f 6e 6e 65 63 74 } //01 00 
		$a_00_2 = {4d 65 6d 44 6c 6c } //01 00 
		$a_00_3 = {6d 64 64 35 } //01 00 
		$a_01_4 = {79 13 df 2c 01 df 6c 01 08 df 7c 11 08 df 3c 11 83 c1 10 78 ed df 2c 01 df 3c 11 8b 44 01 08 89 44 11 08 } //02 00 
		$a_03_5 = {00 d0 00 76 0b eb 02 7e 07 90 01 01 00 00 d0 00 eb 03 90 00 } //02 00 
		$a_03_6 = {74 31 81 bd 90 01 02 ff ff e8 03 00 00 75 4a 90 00 } //02 00 
		$a_03_7 = {8b 45 d8 8b 40 04 50 8b 45 ec 50 e8 90 01 04 85 c0 0f 84 90 01 04 c7 85 90 01 02 ff ff e8 03 00 00 90 00 } //02 00 
		$a_03_8 = {75 0f 81 7d 90 01 01 18 01 00 00 0f 86 90 01 04 eb 06 0f 8e 90 01 04 6a 00 6a 00 8b 45 90 01 01 8b 55 90 01 01 2d 18 01 00 00 83 da 00 90 00 } //02 00 
		$a_03_9 = {68 18 01 00 00 8d 85 90 01 02 ff ff 50 8b 45 90 01 01 50 e8 90 01 04 83 f8 01 1b c0 40 84 c0 75 10 c7 45 90 01 01 08 00 00 00 eb 07 c7 45 90 01 01 09 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Exxroute_B__2{
	meta:
		description = "Ransom:Win32/Exxroute.B!!Exxroute.gen!B,SIGNATURE_TYPE_ARHSTR_EXT,05 00 05 00 10 00 00 01 00 "
		
	strings :
		$a_80_0 = {49 66 20 65 78 69 73 74 20 22 25 73 22 20 47 6f 74 6f 20 } //If exist "%s" Goto   01 00 
		$a_80_1 = {42 65 20 73 75 72 65 } //Be sure  01 00 
		$a_03_2 = {4d 53 31 31 90 0f 01 00 00 90 00 } //01 00 
		$a_80_3 = {23 44 4f 4d 41 49 4e 23 00 } //#DOMAIN#  01 00 
		$a_80_4 = {23 49 44 23 00 } //#ID#  02 00 
		$a_00_5 = {8b 55 f0 8b 4d f8 8b 5d f0 0f b6 4c 19 ff 33 4d fc 88 4c 10 ff ff 45 f0 ff 4d ec 75 db 8b 45 f4 8b 55 f8 e8 } //01 00 
		$a_80_6 = {53 79 73 74 65 6d 33 32 5c 76 73 73 61 64 6d 69 6e 2e 65 78 65 00 } //System32\vssadmin.exe  01 00 
		$a_80_7 = {64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 51 75 69 65 74 00 } //delete shadows /all /Quiet  01 00 
		$a_80_8 = {4d 58 53 31 00 } //MXS1  01 00 
		$a_80_9 = {58 58 53 30 53 00 } //XXS0S  02 00 
		$a_02_10 = {8b 55 fc 0f 90 01 04 33 d7 90 01 01 43 4e 75 90 01 01 8b 45 f8 8b 55 fc e8 90 01 03 ff 90 00 } //01 00 
		$a_01_11 = {65 00 61 00 73 00 79 00 20 00 77 00 61 00 79 00 20 00 49 00 66 00 20 00 59 00 6f 00 75 00 20 00 68 00 61 00 76 00 65 00 20 00 72 00 65 00 61 00 6c 00 6c 00 79 00 20 00 76 00 61 00 6c 00 75 00 61 00 62 00 6c 00 65 00 20 00 64 00 61 00 74 00 61 00 2c 00 79 00 6f 00 75 00 20 00 62 00 65 00 74 00 74 00 65 00 72 00 20 00 6e 00 6f 00 74 00 20 00 77 00 61 00 73 00 74 00 65 00 20 00 79 00 6f 00 75 00 72 00 20 00 74 00 69 00 6d 00 65 00 2c 00 62 00 65 00 63 00 61 00 75 00 73 00 65 00 20 00 74 00 68 00 65 00 72 00 65 00 20 00 69 00 73 00 20 00 6e 00 6f 00 20 00 6f 00 74 00 68 00 65 00 72 00 } //01 00 
		$a_01_12 = {3c 00 68 00 32 00 3e 00 46 00 6f 00 72 00 20 00 6d 00 6f 00 72 00 65 00 20 00 73 00 70 00 65 00 63 00 69 00 66 00 69 00 63 00 20 00 69 00 6e 00 73 00 74 00 72 00 75 00 63 00 74 00 69 00 6f 00 6e 00 73 00 2c 00 70 00 6c 00 65 00 61 00 73 00 65 00 20 00 76 00 69 00 73 00 69 00 74 00 20 00 79 00 6f 00 75 00 72 00 20 00 70 00 65 00 72 00 73 00 6f 00 6e 00 61 00 6c 00 20 00 68 00 6f 00 6d 00 65 00 20 00 70 00 61 00 67 00 65 00 2c 00 20 00 74 00 68 00 65 00 72 00 65 00 20 00 61 00 72 00 65 00 20 00 61 00 20 00 66 00 65 00 77 00 20 00 64 00 69 00 66 00 66 00 65 00 72 00 65 00 6e 00 74 00 20 00 61 00 64 00 64 00 72 00 65 00 73 00 73 00 65 00 73 00 20 00 70 00 6f 00 69 00 6e 00 74 00 69 00 6e 00 67 00 20 00 74 00 6f 00 } //01 00 
		$a_01_13 = {53 00 23 00 24 00 23 00 70 00 65 00 63 00 23 00 24 00 23 00 69 00 61 00 23 00 24 00 23 00 6c 00 6c 00 79 00 20 00 66 00 23 00 24 00 23 00 6f 00 72 00 20 00 79 00 6f 00 23 00 24 00 23 00 75 00 72 00 20 00 50 00 23 00 24 00 23 00 43 00 20 00 77 00 23 00 24 00 23 00 61 00 73 00 20 00 67 00 23 00 24 00 23 00 65 00 6e 00 23 00 24 00 23 00 65 00 72 00 61 00 23 00 24 00 23 00 74 00 65 00 23 00 24 00 23 00 64 00 20 00 70 00 23 00 24 00 23 00 65 00 23 00 24 00 23 00 72 00 73 00 23 00 24 00 23 00 6f 00 6e 00 23 00 24 00 23 00 61 00 23 00 24 00 23 00 6c 00 } //01 00 
		$a_01_14 = {22 00 3e 00 59 00 4f 00 55 00 52 00 20 00 50 00 45 00 52 00 53 00 4f 00 4e 00 41 00 4c 00 20 00 49 00 44 00 3c 00 2f 00 69 00 3e 00 } //01 00 
		$a_01_15 = {69 00 6e 00 23 00 24 00 23 00 66 00 23 00 24 00 23 00 6f 00 72 00 23 00 24 00 23 00 6d 00 23 00 24 00 23 00 61 00 74 00 23 00 24 00 23 00 69 00 6f 00 6e 00 20 00 74 00 23 00 24 00 23 00 6f 00 20 00 6e 00 23 00 24 00 23 00 6f 00 74 00 23 00 24 00 23 00 65 00 62 00 23 00 24 00 23 00 6f 00 6f 00 23 00 24 00 23 00 6b 00 20 00 28 00 23 00 24 00 23 00 65 00 78 00 23 00 24 00 23 00 65 00 23 00 24 00 23 00 72 00 63 00 23 00 24 00 23 00 69 00 23 00 24 00 23 00 73 00 65 00 20 00 62 00 6f 00 23 00 24 00 23 00 6f 00 6b 00 20 00 21 00 23 00 24 00 23 00 21 00 21 00 29 00 } //00 00 
	condition:
		any of ($a_*)
 
}