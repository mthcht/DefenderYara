
rule TrojanDownloader_O97M_Obfuse_ER{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.ER,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 0b 00 00 02 00 "
		
	strings :
		$a_03_0 = {43 72 65 61 74 65 90 02 01 20 90 02 10 20 2b 20 90 02 25 20 2b 20 90 00 } //01 00 
		$a_01_1 = {47 65 74 4f 62 6a 65 63 74 28 22 77 69 6e 6d 22 20 2b 20 22 67 6d 22 20 2b 20 22 74 73 3a 57 22 20 2b 20 22 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 20 2b 20 22 53 74 61 22 20 2b 20 22 72 74 75 70 22 29 29 } //01 00 
		$a_01_2 = {2b 20 22 67 6d 22 20 2b 20 22 74 73 22 20 2b 20 22 3a 57 22 20 2b 20 22 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 20 2b 20 22 53 74 61 22 20 2b 20 22 72 74 75 70 22 29 29 } //01 00 
		$a_01_3 = {22 69 6e 33 32 5f 50 22 20 2b 20 22 72 6f 63 65 73 73 22 20 2b 20 22 53 74 61 22 20 2b 20 22 72 74 75 70 22 29 29 } //01 00 
		$a_01_4 = {47 65 74 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 22 20 2b 20 22 57 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 20 2b 20 22 53 74 61 22 20 2b 20 22 72 74 75 70 22 29 29 } //01 00 
		$a_01_5 = {47 65 74 4f 62 6a 65 63 74 28 22 77 22 20 2b 20 22 69 6e 6d 67 6d 74 73 3a 57 22 20 2b 20 22 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 20 2b 20 22 53 74 61 22 20 2b 20 22 72 74 75 70 22 29 29 } //01 00 
		$a_01_6 = {47 65 74 4f 62 6a 65 63 74 28 22 77 69 6e 6d 22 20 2b 20 22 67 22 20 2b 20 22 6d 74 73 3a 57 22 20 2b 20 22 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 20 2b 20 22 53 74 61 22 20 2b 20 22 72 74 75 70 22 29 29 } //01 00 
		$a_01_7 = {47 65 74 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 22 20 2b 20 22 73 3a 57 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 20 2b 20 22 53 74 61 72 74 75 70 22 29 29 } //01 00 
		$a_01_8 = {47 65 74 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 22 20 2b 20 22 73 3a 57 69 22 20 2b 20 22 6e 33 32 5f 50 72 6f 63 65 73 73 22 20 2b 20 22 53 74 61 72 74 75 70 22 29 29 } //01 00 
		$a_01_9 = {2b 20 22 69 6e 33 32 5f 50 22 20 2b 20 22 72 6f 63 65 73 73 22 20 5f } //01 00 
		$a_03_10 = {53 68 6f 77 57 69 6e 64 6f 77 20 3d 20 90 02 14 20 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}