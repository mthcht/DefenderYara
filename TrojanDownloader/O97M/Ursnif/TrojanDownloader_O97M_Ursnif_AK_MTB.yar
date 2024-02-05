
rule TrojanDownloader_O97M_Ursnif_AK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.AK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {26 20 22 5c 90 02 10 2e 78 73 6c 22 90 00 } //01 00 
		$a_03_1 = {3d 20 43 68 72 28 22 26 68 22 20 26 20 4d 69 64 28 90 02 08 2c 20 90 02 06 2c 20 90 02 06 29 29 90 00 } //01 00 
		$a_01_2 = {3d 20 22 74 6d 70 22 } //01 00 
		$a_03_3 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 90 02 08 28 29 2c 20 31 29 90 00 } //01 00 
		$a_03_4 = {2e 72 75 6e 20 90 02 06 2c 90 00 } //01 00 
		$a_01_5 = {3d 20 22 22 } //01 00 
		$a_01_6 = {3d 20 4e 65 77 20 57 73 68 53 68 65 6c 6c } //01 00 
		$a_03_7 = {3d 20 45 6e 76 69 72 6f 6e 28 90 02 10 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}