
rule TrojanDownloader_Win32_Banload_BFN{
	meta:
		description = "TrojanDownloader:Win32/Banload.BFN,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 47 00 62 00 50 00 6c 00 75 00 67 00 69 00 6e 00 5c 00 } //01 00 
		$a_01_1 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 6d 00 64 00 69 00 2e 00 6e 00 65 00 74 00 } //01 00 
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 32 00 31 00 33 00 2e 00 34 00 31 00 2e 00 38 00 38 00 2e 00 33 00 32 00 3a 00 38 00 30 00 38 00 30 00 2f 00 } //01 00 
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 32 00 33 00 2e 00 31 00 30 00 38 00 2e 00 31 00 30 00 2e 00 31 00 33 00 37 00 2f 00 6e 00 6f 00 77 00 70 00 6c 00 61 00 79 00 } //01 00 
		$a_01_4 = {63 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 61 00 64 00 64 00 69 00 6e 00 73 00 5c 00 } //01 00 
		$a_01_5 = {2f 00 6e 00 65 00 77 00 70 00 6c 00 61 00 79 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_6 = {2f 00 73 00 61 00 76 00 65 00 69 00 6e 00 66 00 2e 00 70 00 68 00 70 00 3f 00 69 00 64 00 63 00 6c 00 69 00 3d 00 } //00 00 
		$a_00_7 = {80 10 00 00 } //2a 4c 
	condition:
		any of ($a_*)
 
}