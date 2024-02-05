
rule TrojanDownloader_O97M_Obfuse_HPW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.HPW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {47 65 74 4f 62 6a 65 63 74 28 90 02 1e 28 22 31 22 20 2b 20 22 22 20 2b 20 22 33 22 20 2b 20 22 22 20 2b 20 22 22 20 2b 20 22 31 31 31 37 22 20 2b 20 22 31 32 22 20 2b 20 22 22 20 2b 20 22 32 31 22 20 2b 20 22 32 31 22 20 2b 20 22 31 31 35 31 32 31 31 22 20 2b 20 79 20 2b 20 79 20 2b 20 79 20 2b 20 22 32 38 31 32 37 30 37 30 22 29 29 90 00 } //01 00 
		$a_03_1 = {2e 47 65 74 28 90 02 1e 28 22 30 39 39 22 20 2b 20 79 20 2b 20 79 20 2b 20 79 20 2b 20 22 31 22 20 2b 20 79 20 2b 20 22 31 22 20 2b 20 22 37 31 32 32 30 36 33 30 36 32 31 22 20 2b 20 79 20 2b 20 79 20 2b 20 79 20 2b 20 22 30 22 20 2b 20 22 37 22 20 2b 20 22 30 22 20 2b 20 22 39 22 20 2b 20 22 32 22 20 2b 20 22 31 32 22 20 2b 20 79 20 2b 20 79 20 2b 20 22 36 31 32 33 31 31 22 20 2b 20 79 20 2b 20 22 31 31 31 22 20 2b 20 22 22 20 2b 20 79 20 2b 20 22 33 22 20 2b 20 22 31 32 37 31 32 37 22 29 29 90 00 } //01 00 
		$a_03_2 = {2e 43 72 65 61 74 65 20 90 02 1e 28 22 31 31 31 31 30 39 31 32 30 31 22 20 2b 20 22 31 31 22 20 2b 20 79 20 2b 20 79 20 2b 20 22 30 35 38 31 31 33 31 33 32 31 31 33 22 29 2c 20 61 61 63 73 61 73 63 61 37 73 63 61 37 63 61 73 63 76 61 73 63 63 73 61 73 63 61 37 73 63 61 37 63 61 73 63 76 61 73 63 2c 20 61 63 73 61 73 63 61 37 73 63 61 37 63 61 73 63 76 61 73 63 2c 20 73 61 63 61 73 63 61 73 63 61 63 73 61 73 63 61 37 73 63 61 37 63 61 73 63 76 61 73 63 90 00 } //01 00 
		$a_03_3 = {3d 20 43 68 72 28 90 02 28 20 2d 20 31 32 29 90 00 } //01 00 
		$a_03_4 = {3d 20 52 69 67 68 74 28 90 02 14 2c 20 4c 65 6e 28 90 02 14 29 20 2d 20 33 29 90 00 } //01 00 
		$a_03_5 = {3d 20 4f 61 74 90 02 14 20 2b 20 90 02 14 28 90 02 28 28 90 02 14 29 29 90 00 } //01 00 
		$a_03_6 = {4c 6f 6f 70 20 57 68 69 6c 65 20 4c 65 6e 28 90 02 14 29 20 3e 20 30 90 00 } //01 00 
		$a_03_7 = {3d 20 4c 65 66 74 28 90 02 28 2c 20 33 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}