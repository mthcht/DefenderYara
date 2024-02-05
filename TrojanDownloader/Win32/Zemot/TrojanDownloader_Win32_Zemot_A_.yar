
rule TrojanDownloader_Win32_Zemot_A_{
	meta:
		description = "TrojanDownloader:Win32/Zemot.A!!Zemot,SIGNATURE_TYPE_ARHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 45 18 68 00 00 00 a0 6a ff ff 34 b0 57 ff 15 90 01 04 46 3b 75 1c 72 e6 90 00 } //02 00 
		$a_00_1 = {65 00 78 00 65 00 00 00 4a 00 61 00 76 00 61 00 5f 00 55 00 70 00 64 00 61 00 74 00 65 00 5f 00 } //01 00 
		$a_03_2 = {66 31 45 ec b8 d6 48 00 00 66 31 45 ee 33 c9 33 c0 8a 54 05 f8 30 54 0d f0 40 83 f8 04 75 02 90 09 0c 00 81 75 e8 90 01 04 b8 90 01 02 00 00 90 00 } //01 00 
		$a_01_3 = {6c 6f 61 64 65 72 33 32 2e 62 69 6e 00 6c 6f 61 64 65 72 43 6f 6e 66 69 67 53 6f 75 72 63 65 00 } //02 00 
		$a_01_4 = {55 00 70 00 64 00 61 00 74 00 65 00 46 00 6c 00 61 00 73 00 68 00 50 00 6c 00 61 00 79 00 65 00 72 00 5f 00 } //00 00 
	condition:
		any of ($a_*)
 
}