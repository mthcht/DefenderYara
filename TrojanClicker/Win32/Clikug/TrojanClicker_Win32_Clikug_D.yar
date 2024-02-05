
rule TrojanClicker_Win32_Clikug_D{
	meta:
		description = "TrojanClicker:Win32/Clikug.D,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {49 64 6c 65 43 72 61 77 6c 65 72 } //01 00 
		$a_01_1 = {43 68 72 6f 6d 65 20 57 6f 72 6b 65 72 20 46 61 69 6c 65 64 2c 20 25 73 } //01 00 
		$a_01_2 = {2e 3f 41 56 50 72 6f 66 69 6c 65 49 6e 73 74 61 6c 6c 65 72 57 72 61 70 70 65 72 40 40 } //01 00 
		$a_01_3 = {4d 61 69 6e 20 50 49 44 3a 20 25 64 20 48 61 6e 64 6c 65 3a 20 30 78 25 78 20 54 49 44 3a 20 25 64 20 48 61 6e 64 6c 65 3a 20 30 78 25 78 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanClicker_Win32_Clikug_D_2{
	meta:
		description = "TrojanClicker:Win32/Clikug.D,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 12 00 00 01 00 "
		
	strings :
		$a_00_0 = {22 00 25 00 73 00 22 00 20 00 2d 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 20 00 22 00 25 00 73 00 22 00 20 00 2d 00 6e 00 6f 00 2d 00 72 00 65 00 6d 00 6f 00 74 00 65 00 } //01 00 
		$a_01_1 = {43 68 72 6f 6d 65 20 57 6f 72 6b 65 72 20 46 61 69 6c 65 64 2c 20 25 73 } //01 00 
		$a_01_2 = {53 75 70 70 53 72 76 33 00 } //01 00 
		$a_01_3 = {50 61 72 73 69 6e 67 20 43 4d 44 3a 20 25 73 00 } //01 00 
		$a_01_4 = {2f 53 75 70 70 53 72 76 32 2e 70 68 70 00 } //01 00 
		$a_01_5 = {63 64 6e 00 49 64 6c 65 43 72 61 77 6c 65 72 2e 63 6f 6d 00 } //01 00 
		$a_01_6 = {63 64 6e 2e 25 73 2f 25 73 2e 70 68 70 00 } //01 00 
		$a_01_7 = {63 64 6e 2e 63 6f 6d 00 2f 00 00 00 2e 70 68 00 } //02 00 
		$a_01_8 = {59 00 64 00 72 00 53 00 75 00 70 00 70 00 00 00 } //01 00 
		$a_03_9 = {8b 08 68 26 98 00 00 8b 01 8d 54 24 90 01 01 52 ff 50 90 00 } //01 00 
		$a_01_10 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 20 00 2f 00 53 00 74 00 6f 00 70 00 20 00 2f 00 46 00 20 00 2f 00 54 00 4e 00 20 00 22 00 49 00 64 00 6c 00 65 00 7e 00 43 00 72 00 61 00 77 00 6c 00 65 00 72 00 20 00 52 00 75 00 6e 00 6e 00 65 00 72 00 22 00 } //01 00 
		$a_01_11 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 20 00 2f 00 53 00 74 00 6f 00 70 00 20 00 2f 00 46 00 20 00 2f 00 54 00 4e 00 20 00 22 00 49 00 64 00 6c 00 65 00 2d 00 43 00 72 00 61 00 77 00 6c 00 65 00 72 00 20 00 52 00 75 00 6e 00 6e 00 65 00 72 00 22 00 } //01 00 
		$a_01_12 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 47 00 69 00 67 00 61 00 43 00 6c 00 69 00 63 00 6b 00 73 00 5c 00 43 00 72 00 61 00 77 00 6c 00 65 00 72 00 00 00 } //01 00 
		$a_01_13 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 20 00 2f 00 43 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 54 00 4e 00 20 00 22 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 4d 00 61 00 69 00 6e 00 74 00 65 00 6e 00 61 00 6e 00 63 00 65 00 5c 00 49 00 64 00 6c 00 65 00 } //01 00 
		$a_01_14 = {47 00 43 00 5f 00 53 00 63 00 68 00 65 00 64 00 75 00 6c 00 65 00 72 00 20 00 52 00 75 00 6e 00 3a 00 } //01 00 
		$a_01_15 = {47 00 43 00 5f 00 53 00 63 00 68 00 65 00 64 00 75 00 6c 00 65 00 72 00 20 00 43 00 72 00 65 00 61 00 74 00 65 00 3a 00 } //01 00 
		$a_01_16 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 20 00 2f 00 43 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 54 00 4e 00 20 00 22 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 4d 00 61 00 69 00 6e 00 74 00 65 00 6e 00 61 00 6e 00 63 00 65 00 5c 00 49 00 43 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 } //01 00 
		$a_01_17 = {5c 00 53 00 76 00 63 00 53 00 75 00 70 00 70 00 6f 00 72 00 74 00 2e 00 65 00 78 00 65 00 22 00 20 00 2d 00 2d 00 53 00 65 00 6e 00 64 00 49 00 6e 00 73 00 74 00 4c 00 6f 00 67 00 73 00 20 00 22 00 } //00 00 
		$a_00_18 = {60 0f } //00 00 
	condition:
		any of ($a_*)
 
}