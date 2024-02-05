
rule TrojanDownloader_O97M_Valak_RA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Valak.RA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {56 42 5f 4e 61 6d 65 20 3d 20 22 72 54 22 } //01 00 
		$a_01_1 = {22 72 65 67 73 76 72 22 20 26 20 33 32 20 26 20 22 20 22 } //01 00 
		$a_01_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00 
		$a_03_3 = {44 69 6d 20 90 01 02 20 41 73 20 4e 65 77 20 57 73 68 53 68 65 6c 6c 0d 0a 90 1b 00 2e 65 78 65 63 20 6b 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Valak_RA_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Valak.RA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //01 00 
		$a_01_1 = {3d 20 45 6e 76 69 72 6f 6e 28 22 74 6d 70 22 29 20 26 20 22 5c 69 6e 64 65 78 2e 6a 70 67 } //01 00 
		$a_01_2 = {45 6e 76 69 72 6f 6e 28 22 74 6d 70 22 29 20 26 20 22 5c 31 2e 6a 70 67 } //01 00 
		$a_01_3 = {28 22 72 31 34 65 61 36 67 32 35 73 64 35 76 63 38 72 66 36 33 30 61 32 64 65 22 29 } //02 00 
		$a_03_4 = {43 61 6c 6c 20 90 02 0a 2e 65 78 65 63 28 90 02 0a 20 26 20 22 20 22 20 26 20 90 02 0a 29 90 00 } //02 00 
		$a_03_5 = {43 61 6c 6c 20 90 02 0a 2e 4f 70 65 6e 28 22 47 45 54 22 2c 20 90 02 0a 2c 20 46 61 6c 73 65 29 90 00 } //01 00 
		$a_01_6 = {72 64 30 65 31 65 67 66 39 73 39 62 76 33 31 72 63 37 33 38 62 32 30 32 } //01 00 
		$a_03_7 = {45 6e 76 69 72 6f 6e 28 22 74 6d 70 22 29 20 26 20 22 5c 90 02 0a 2e 6a 70 67 90 00 } //00 00 
		$a_00_8 = {cf 18 00 00 83 65 77 } //9d 1e 
	condition:
		any of ($a_*)
 
}