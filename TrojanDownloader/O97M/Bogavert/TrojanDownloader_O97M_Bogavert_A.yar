
rule TrojanDownloader_O97M_Bogavert_A{
	meta:
		description = "TrojanDownloader:O97M/Bogavert.A,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 53 58 4d 4c 32 2e 58 4d 4c 48 54 54 50 22 29 } //01 00 
		$a_03_1 = {2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 90 01 0b 2c 20 46 61 6c 73 65 90 00 } //01 00 
		$a_01_2 = {2e 53 65 6e 64 20 22 73 65 6e 64 20 72 65 71 75 65 73 74 } //01 00 
		$a_03_3 = {44 6f 20 57 68 69 6c 65 20 90 01 0b 2e 72 65 61 64 79 53 74 61 74 65 20 3c 90 01 01 20 90 04 01 03 31 2d 39 90 00 } //01 00 
		$a_03_4 = {4f 70 65 6e 20 90 01 0b 20 46 6f 72 20 42 69 6e 61 72 79 20 41 73 20 23 90 00 } //01 00 
		$a_03_5 = {3d 20 53 68 65 6c 6c 28 90 01 0b 2c 20 31 29 90 00 } //01 00 
		$a_01_6 = {45 6e 76 69 72 6f 6e 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 20 26 } //01 00 
		$a_01_7 = {45 6e 76 69 72 6f 6e 28 22 41 70 70 44 61 74 61 22 29 20 26 } //01 00 
		$a_01_8 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 53 74 72 52 65 76 65 72 73 65 28 48 65 78 32 53 74 72 28 22 35 30 35 34 35 34 34 38 34 43 34 44 35 38 32 45 33 32 34 43 34 44 35 38 35 33 34 44 22 29 } //01 00 
		$a_03_9 = {2e 4f 70 65 6e 20 53 74 72 52 65 76 65 72 73 65 28 48 65 78 32 53 74 72 28 22 35 34 34 35 34 37 22 29 29 2c 20 90 01 0b 2c 20 46 61 6c 73 65 90 00 } //01 00 
		$a_01_10 = {2e 53 65 6e 64 20 53 74 72 52 65 76 65 72 73 65 28 48 65 78 32 53 74 72 28 22 37 34 37 33 36 35 37 35 37 31 36 35 37 32 32 30 36 34 36 45 36 35 37 33 22 29 } //01 00 
		$a_01_11 = {45 6e 76 69 72 6f 6e 28 53 74 72 52 65 76 65 72 73 65 28 48 65 78 32 53 74 72 28 22 36 35 36 43 36 39 36 36 36 46 37 32 35 30 37 32 36 35 37 33 35 35 22 29 29 29 20 26 } //00 00 
		$a_00_12 = {5d 04 00 00 b2 18 } //03 80 
	condition:
		any of ($a_*)
 
}