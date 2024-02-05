
rule TrojanDownloader_Win32_Bagle_gen_A{
	meta:
		description = "TrojanDownloader:Win32/Bagle.gen!A,SIGNATURE_TYPE_PEHSTR,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {4b 61 73 70 65 72 73 6b 79 20 4c 61 62 0b 54 72 65 6e 64 20 4d 69 63 72 6f 0f 49 00 63 00 65 00 53 00 77 00 6f 00 72 00 64 15 53 00 61 00 74 00 69 00 6e 00 66 00 6f 00 20 00 53 00 2e 00 4c 1e 33 32 37 38 38 32 52 32 46 57 4a 46 57 5c 72 65 73 74 6f 72 65 5f 70 74 2e 76 62 73 ed 87 2e 43 00 } //01 00 
		$a_01_1 = {5c 52 75 6e 00 3a 5c 57 49 4e 00 72 75 6e 64 6c 6c 33 32 2e 65 78 65 00 5c 5c 2e 5c 00 53 31 6f 31 66 31 74 31 77 31 61 31 72 31 65 31 5c 31 62 31 69 31 73 31 6f 31 66 74 00 } //01 00 
		$a_01_2 = {4c 1e 33 32 37 38 38 32 52 32 46 57 4a 46 57 5c 72 65 73 74 6f 72 65 5f 70 74 2e 76 62 73 ed 87 2e 43 00 6f 00 6d 00 70 00 69 00 6c 00 65 00 64 00 53 00 63 00 72 00 69 00 70 00 74 00 00 00 41 00 75 00 74 00 6f 00 49 00 74 00 20 00 76 00 2d 00 61 00 6e 00 79 00 4e 00 61 00 6d 00 65 00 00 00 00 00 4b 00 61 00 73 00 70 00 65 00 72 00 73 00 6b 00 79 00 20 00 4c 00 61 00 62 00 2c } //01 00 
		$a_01_3 = {5c 53 76 63 00 45 6e 61 62 6c 65 4c 55 41 00 5c 2a 2e 2a 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 3a 5c 57 49 4e 00 72 75 6e 64 6c 6c 33 32 2e 65 78 65 00 5c 5c 2e 5c 00 53 } //00 00 
	condition:
		any of ($a_*)
 
}