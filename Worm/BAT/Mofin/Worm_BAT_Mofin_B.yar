
rule Worm_BAT_Mofin_B{
	meta:
		description = "Worm:BAT/Mofin.B,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 73 00 75 00 63 00 68 00 6f 00 73 00 74 00 2e 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {69 00 6e 00 66 00 6d 00 61 00 6e 00 69 00 62 00 69 00 6c 00 61 00 3d 00 22 00 5b 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 22 00 26 00 76 00 62 00 63 00 72 00 6c 00 66 00 26 00 22 00 73 00 68 00 65 00 6c 00 6c 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 3d 00 77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 78 00 65 00 20 00 6d 00 6d 00 73 00 2e 00 76 00 62 00 73 00 22 00 } //01 00 
		$a_01_3 = {73 00 65 00 74 00 20 00 62 00 61 00 73 00 6f 00 3d 00 62 00 61 00 6c 00 69 00 2e 00 63 00 72 00 65 00 61 00 74 00 65 00 74 00 65 00 78 00 74 00 66 00 69 00 6c 00 65 00 28 00 64 00 61 00 6c 00 61 00 6e 00 20 00 26 00 20 00 22 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 47 00 72 00 6f 00 75 00 70 00 50 00 6f 00 6c 00 69 00 63 00 79 00 5c 00 4d 00 61 00 63 00 68 00 69 00 6e 00 65 00 5c 00 53 00 63 00 72 00 69 00 70 00 74 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 6d 00 6d 00 73 00 2e 00 76 00 62 00 73 00 22 00 2c 00 32 00 2c 00 74 00 72 00 75 00 65 00 29 00 } //01 00 
		$a_01_4 = {49 00 66 00 20 00 28 00 6d 00 61 00 6e 00 69 00 62 00 69 00 6c 00 61 00 2e 00 64 00 72 00 69 00 76 00 65 00 74 00 79 00 70 00 65 00 20 00 3d 00 20 00 31 00 20 00 6f 00 72 00 20 00 6d 00 61 00 6e 00 69 00 62 00 69 00 6c 00 61 00 2e 00 64 00 72 00 69 00 76 00 65 00 74 00 79 00 70 00 65 00 20 00 3d 00 20 00 32 00 29 00 20 00 61 00 6e 00 64 00 20 00 6d 00 61 00 6e 00 69 00 62 00 69 00 6c 00 61 00 2e 00 70 00 61 00 74 00 68 00 20 00 3c 00 3e 00 20 00 22 00 41 00 3a 00 22 00 20 00 74 00 68 00 65 00 6e 00 } //01 00 
		$a_01_5 = {73 00 65 00 74 00 20 00 62 00 61 00 73 00 6f 00 3d 00 62 00 61 00 6c 00 69 00 2e 00 63 00 72 00 65 00 61 00 74 00 65 00 74 00 65 00 78 00 74 00 66 00 69 00 6c 00 65 00 28 00 6d 00 61 00 6e 00 69 00 62 00 69 00 6c 00 61 00 2e 00 70 00 61 00 74 00 68 00 20 00 26 00 20 00 22 00 5c 00 6d 00 6d 00 73 00 2e 00 76 00 62 00 73 00 22 00 2c 00 32 00 2c 00 74 00 72 00 75 00 65 00 29 00 } //01 00 
		$a_01_6 = {73 00 65 00 74 00 20 00 62 00 61 00 73 00 6f 00 3d 00 62 00 61 00 6c 00 69 00 2e 00 63 00 72 00 65 00 61 00 74 00 65 00 74 00 65 00 78 00 74 00 66 00 69 00 6c 00 65 00 28 00 6d 00 61 00 6e 00 69 00 62 00 69 00 6c 00 61 00 2e 00 70 00 61 00 74 00 68 00 20 00 26 00 20 00 22 00 5c 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 22 00 2c 00 32 00 2c 00 74 00 72 00 75 00 65 00 29 00 } //01 00 
		$a_01_7 = {62 00 61 00 73 00 6f 00 2e 00 77 00 72 00 69 00 74 00 65 00 20 00 69 00 6e 00 66 00 6d 00 61 00 6e 00 69 00 62 00 69 00 6c 00 61 00 } //01 00 
		$a_01_8 = {74 00 61 00 6c 00 61 00 2e 00 72 00 65 00 67 00 77 00 72 00 69 00 74 00 65 00 20 00 22 00 48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 50 00 69 00 6e 00 61 00 6e 00 67 00 61 00 74 00 22 00 2c 00 64 00 61 00 6c 00 61 00 6e 00 20 00 26 00 20 00 22 00 5c 00 6b 00 65 00 72 00 6e 00 65 00 6c 00 2e 00 76 00 62 00 73 00 22 00 } //00 00 
		$a_00_9 = {87 10 00 } //00 b3 
	condition:
		any of ($a_*)
 
}