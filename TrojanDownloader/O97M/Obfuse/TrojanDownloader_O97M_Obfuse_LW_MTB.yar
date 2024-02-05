
rule TrojanDownloader_O97M_Obfuse_LW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.LW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 14 28 22 77 3a 35 33 3a 35 33 69 3a 35 33 3a 35 33 3a 35 33 6e 3a 35 33 6d 3a 35 33 67 3a 35 33 3a 35 33 6d 74 3a 35 33 73 3a 3a 35 33 3a 35 33 3a 35 33 57 69 3a 35 33 6e 33 32 3a 35 33 3a 35 33 5f 50 72 3a 35 33 3a 35 33 6f 63 65 3a 35 33 73 73 22 29 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //01 00 
		$a_03_1 = {3d 20 52 65 70 6c 61 63 65 28 90 02 14 2c 20 52 65 70 6c 61 63 65 28 22 6f 79 71 67 75 77 65 64 3a 6f 79 71 67 75 77 65 64 35 6f 79 71 67 75 77 65 64 33 6f 79 71 67 75 77 65 64 22 2c 20 22 6f 79 71 67 75 77 65 64 22 2c 20 22 22 29 2c 20 22 22 29 90 00 } //01 00 
		$a_01_2 = {2e 53 68 6f 77 57 69 6e 64 6f 77 20 3d } //00 00 
	condition:
		any of ($a_*)
 
}