
rule TrojanDownloader_BAT_Bladabindi_C{
	meta:
		description = "TrojanDownloader:BAT/Bladabindi.C,SIGNATURE_TYPE_PEHSTR_EXT,26 00 26 00 07 00 00 10 00 "
		
	strings :
		$a_00_0 = {5c 00 73 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //04 00 
		$a_01_1 = {2e 00 67 00 75 00 6c 00 66 00 75 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 } //04 00 
		$a_01_2 = {77 00 77 00 77 00 35 00 2e 00 30 00 7a 00 7a 00 30 00 2e 00 63 00 6f 00 6d 00 2f 00 32 00 30 00 31 00 35 00 2f 00 30 00 31 00 2f 00 32 00 39 00 2f 00 32 00 30 00 2f 00 37 00 34 00 32 00 39 00 37 00 36 00 31 00 30 00 34 00 2e 00 6a 00 70 00 67 00 } //02 00 
		$a_03_3 = {2e 00 6a 00 70 00 67 00 90 01 02 2e 00 4c 00 4f 00 47 00 90 01 02 2e 00 6a 00 70 00 67 00 90 00 } //01 00 
		$a_03_4 = {5c 00 54 00 45 00 4d 00 50 00 5c 00 74 00 6d 00 70 00 90 29 04 00 2e 00 74 00 6d 00 70 00 2e 00 4c 00 4f 00 47 00 90 00 } //01 00 
		$a_03_5 = {5c 00 54 00 45 00 4d 00 50 00 5c 00 74 00 6d 00 70 00 90 29 04 00 2e 00 74 00 6d 00 70 00 2e 00 6a 00 70 00 67 00 90 00 } //10 00 
		$a_03_6 = {07 1f 10 8d 90 04 01 03 27 2b 30 00 00 01 0c 08 16 17 9c 08 17 18 9c 08 18 19 9c 08 19 1a 9c 08 1a 1b 9c 08 1b 1c 9c 08 1c 1d 9c 08 1d 1e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}