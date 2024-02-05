
rule TrojanDownloader_BAT_Genmaldow_S{
	meta:
		description = "TrojanDownloader:BAT/Genmaldow.S,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {53 00 4c 00 45 00 45 00 50 00 48 00 49 00 44 00 45 00 90 02 20 2e 00 65 00 78 00 65 00 90 01 02 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 00 } //01 00 
		$a_03_1 = {26 00 65 00 78 00 70 00 6f 00 72 00 74 00 3d 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 90 01 02 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 40 2e 00 70 00 68 00 70 00 3f 00 65 00 78 00 3d 00 90 02 20 74 00 61 00 73 00 6b 00 68 00 6f 00 73 00 74 00 90 00 } //00 00 
		$a_00_2 = {78 } //e0 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_BAT_Genmaldow_S_2{
	meta:
		description = "TrojanDownloader:BAT/Genmaldow.S,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6d 00 79 00 2d 00 73 00 61 00 76 00 65 00 2d 00 69 00 6d 00 67 00 2e 00 72 00 75 00 2f 00 69 00 70 00 32 00 2e 00 70 00 68 00 70 00 90 02 20 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6d 00 79 00 2d 00 73 00 61 00 76 00 65 00 2d 00 69 00 6d 00 67 00 2e 00 72 00 75 00 2f 00 90 02 10 2e 00 6a 00 70 00 67 00 90 00 } //01 00 
		$a_03_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 64 00 6f 00 63 00 73 00 2e 00 67 00 6f 00 6f 00 67 00 6c 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 75 00 63 00 90 02 80 26 00 65 00 78 00 70 00 6f 00 72 00 74 00 3d 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}