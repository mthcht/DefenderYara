
rule TrojanDownloader_O97M_Obfuse_JAG_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JAG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 70 6f 77 5f 64 6d 6f 77 20 3d 20 22 70 } //01 00 
		$a_01_1 = {6b 6f 6b 5f 78 77 6f 6b 66 20 3d 20 22 68 } //01 00 
		$a_01_2 = {6b 6f 6f 6b 20 3d 20 22 74 } //01 00 
		$a_01_3 = {6f 6b 61 6c 32 73 20 3d 20 22 73 3a 2f } //01 00 
		$a_01_4 = {70 5f 63 6b 77 20 3d 20 22 2f 25 33 38 31 32 25 33 38 31 32 25 33 38 31 32 25 33 38 31 32 25 33 38 31 32 40 6a 2e 6d 70 5c 61 73 64 67 37 38 36 33 35 32 67 68 6a 64 67 76 62 73 61 66 64 67 68 61 73 } //01 00 
		$a_01_5 = {70 5f 63 6b 77 20 3d 20 22 2f 25 33 38 31 32 25 33 38 31 32 25 33 38 31 32 25 33 38 31 32 25 33 38 31 32 25 33 38 31 32 25 33 38 31 32 25 33 38 31 32 25 33 38 31 32 40 6a 2e 6d 70 5c 64 61 73 72 36 37 75 35 32 33 67 76 64 61 6a 6d 73 62 63 6d 7a 78 63 67 68 66 73 61 64 } //00 00 
	condition:
		any of ($a_*)
 
}