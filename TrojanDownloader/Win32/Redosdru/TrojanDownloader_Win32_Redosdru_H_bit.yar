
rule TrojanDownloader_Win32_Redosdru_H_bit{
	meta:
		description = "TrojanDownloader:Win32/Redosdru.H!bit,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {52 56 c7 45 90 01 01 53 53 53 53 c7 45 90 01 01 53 53 56 49 66 c7 45 90 01 01 44 00 90 00 } //02 00 
		$a_01_1 = {8b 45 08 8d 49 00 8a 10 32 d1 02 d1 88 10 40 4e 75 f4 } //01 00 
		$a_03_2 = {43 3a 5c 50 c7 45 90 01 01 72 6f 67 72 c7 45 90 01 01 61 6d 20 46 c7 45 90 01 01 69 6c 65 73 c7 45 90 01 01 5c 41 70 70 66 c7 45 90 01 01 5c 00 90 00 } //01 00 
		$a_03_3 = {44 6c 6c 46 c7 45 90 01 01 75 55 70 67 c7 45 90 01 01 72 61 64 72 66 c7 45 90 01 01 73 00 90 00 } //01 00 
		$a_03_4 = {44 6c 6c 46 c7 45 90 01 01 75 55 70 67 c7 45 90 01 01 72 61 64 72 66 c7 45 90 01 01 73 31 c6 45 90 01 01 00 90 00 } //01 00 
		$a_03_5 = {50 6a 00 6a 00 6a 00 6a 00 6a 00 6a 00 56 8d 4d 90 01 01 6a 00 c7 45 90 01 01 57 69 6e 53 c7 45 90 01 01 74 61 30 5c c7 45 90 01 01 44 65 66 61 c7 45 90 01 01 75 6c 74 00 90 00 } //01 00 
		$a_01_6 = {5c 53 65 72 76 65 72 44 61 74 5c 52 65 6c 65 61 73 65 5c 53 65 72 76 65 72 44 61 74 2e 70 64 62 } //00 00 
		$a_00_7 = {5d 04 00 00 } //b7 8d 
	condition:
		any of ($a_*)
 
}