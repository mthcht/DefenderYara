
rule TrojanDownloader_O97M_Emotet_PDEC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.PDEC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 6e 22 26 22 61 74 22 26 22 75 72 22 26 22 61 6c 22 26 22 70 72 22 26 22 65 6d 22 26 22 69 75 22 26 22 6d 74 22 26 22 72 61 22 26 22 69 6e 22 26 22 69 6e 22 26 22 67 2e 63 22 26 22 68 2f 53 22 26 22 7a 72 22 26 22 6b 47 22 26 22 4d 79 22 26 22 44 4b 22 26 22 44 2f 42 22 26 22 35 73 71 22 26 22 76 36 22 26 22 34 31 22 26 22 69 42 22 26 22 5a 52 22 26 22 61 64 22 26 22 42 2f } //01 00 
		$a_01_1 = {3a 2f 2f 77 22 26 22 77 22 26 22 77 2e 61 22 26 22 67 72 22 26 22 6f 66 22 26 22 61 72 2e 6e 22 26 22 65 22 26 22 74 2f 77 22 26 22 70 2d 69 22 26 22 6e 63 22 26 22 6c 75 22 26 22 64 65 22 26 22 73 2f 39 22 26 22 6c 2f } //01 00 
		$a_01_2 = {3a 2f 2f 74 22 26 22 61 6c 22 26 22 74 75 22 26 22 73 2e 63 22 26 22 6f 2e 75 22 26 22 6b 2f 5a 22 26 22 49 31 22 26 22 4d 4c 22 26 22 54 55 22 26 22 34 49 22 26 22 77 77 22 26 22 33 4c 22 26 22 74 6e 22 26 22 72 41 22 26 22 50 67 2f } //00 00 
	condition:
		any of ($a_*)
 
}