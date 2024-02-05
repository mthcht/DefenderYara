
rule TrojanDownloader_Win32_Senekil_gen_A{
	meta:
		description = "TrojanDownloader:Win32/Senekil.gen!A,SIGNATURE_TYPE_PEHSTR,28 00 23 00 0b 00 00 0a 00 "
		
	strings :
		$a_01_0 = {61 73 73 69 73 74 73 65 2e 65 78 65 2c 6b 72 65 67 65 78 2e 65 78 65 2c 74 72 6f 6a 64 69 65 2e 6b 78 70 2c 6b 76 73 72 76 78 70 2e 65 78 65 2c 6b 76 6d 6f 6e 78 70 2e 6b 78 70 2c 66 72 6f 67 61 67 65 6e 74 2e 65 78 65 2c 6b 76 78 70 2e 6b 78 70 2c 63 63 65 6e 74 65 72 2e 65 78 65 2c 72 61 76 6d 6f 6e 64 2e 65 78 65 2c 72 61 76 6d 6f 6e 2e 65 78 65 2c 72 66 77 6d 61 69 6e 2e 65 78 65 2c 72 66 77 73 72 76 2e 65 78 65 2c 6b 70 66 77 73 76 63 2e 65 78 65 2c 6b 61 76 70 66 77 2e 65 78 65 2c 6b 61 76 73 74 61 72 74 2e 65 78 65 2c 6b 6d 61 69 6c 6d 6f 6e 2e 65 78 65 2c 6b 77 61 74 63 68 2e 65 78 65 2c 61 76 70 2e 65 78 65 } //0a 00 
		$a_01_1 = {6b 61 76 2e 65 78 65 2c 6b 61 76 73 76 63 2e 65 78 65 2c 72 74 76 73 63 61 6e 2e 65 78 65 2c 63 63 73 65 74 6d 67 72 2e 65 78 65 2c 64 65 66 77 61 74 63 68 2e 65 78 65 2c 63 63 65 76 74 6d 67 72 2e 65 78 65 2c 63 63 61 70 70 2e 65 78 65 2c 6d 63 73 68 69 65 6c 64 2e 65 78 65 2c 6d 63 76 73 65 73 63 6e 2e 65 78 65 2c 6d 63 64 65 74 65 63 74 2e 65 78 65 2c 6d 63 6d 6e 68 64 6c 72 2e 65 78 65 2c 74 72 6f 6a 61 6e 77 61 6c 6c 2e 65 78 65 2c 66 79 67 74 63 6c 65 61 6e 65 72 2e 65 78 65 2c 6d 61 6e 74 69 73 70 6d 2e 65 78 65 2c 76 73 6d 6f 6e 2e 65 78 65 2c 69 73 61 66 65 2e 65 78 65 2c 7a 6c 63 6c 69 65 6e 74 2e 65 78 65 } //0a 00 
		$a_01_2 = {70 63 63 6c 69 65 6e 74 2e 65 78 65 2c 70 63 63 74 6c 63 6f 6d 2e 65 78 65 2c 74 6d 70 66 77 2e 65 78 65 2c 74 6d 6e 74 73 72 76 2e 65 78 65 2c 74 6d 70 72 6f 78 79 2e 65 78 65 2c 70 63 63 67 75 69 64 65 2e 65 78 65 2c 69 70 61 72 6d 6f 72 2e 65 78 65 2c 78 66 69 6c 74 65 72 2e 65 78 65 2c 66 69 6c 6d 73 67 2e 65 78 65 2c 61 76 65 6e 67 69 6e 65 2e 65 78 65 2c 70 61 76 73 72 76 35 31 2e 65 78 65 2c 70 73 69 6d 73 76 63 2e 65 78 65 2c 70 61 76 70 72 73 72 76 2e 65 78 65 2c 74 70 73 72 76 2e 65 78 65 2c 70 61 76 70 72 73 72 76 2e 65 78 65 2c 61 70 76 78 64 77 69 6e 2e 65 78 65 2c 73 72 76 6c 6f 61 64 2e 65 78 65 2c 77 65 62 70 72 6f 78 79 2e 65 78 65 } //0a 00 
		$a_01_3 = {4b 56 53 72 76 58 50 2c 4b 56 57 53 43 2c 52 73 43 43 65 6e 74 65 72 2c 52 73 52 61 76 4d 6f 6e 2c 52 66 77 53 65 72 76 69 63 65 2c 4b 57 61 74 63 68 53 76 63 2c 4b 50 66 77 53 76 63 2c 41 56 50 2c 6b 61 76 73 76 63 2c 4d 63 54 73 6b 73 68 64 2e 65 78 65 2c 4d 63 44 65 74 65 63 74 2e 65 78 65 2c 43 41 49 53 61 66 65 2c 76 73 6d 6f 6e 2c 54 6d 6e 74 73 72 76 2c 50 63 43 74 6c 43 6f 6d 2c 54 6d 50 66 77 2c 74 6d 70 72 6f 78 79 2c 70 6d 73 68 65 6c 6c 73 72 76 2c 50 41 56 53 52 56 2c 50 41 56 46 4e 53 56 52 2c 50 53 49 4d 53 56 43 2c 50 4e 4d 53 52 56 2c 50 61 76 50 72 53 72 76 2c 54 50 53 72 76 } //0a 00 
		$a_01_4 = {4b 56 53 72 76 58 50 2c 4b 56 57 53 43 2c 4b 57 61 74 63 68 53 76 63 2c 4b 50 66 77 53 76 63 2c 41 56 50 2c 6b 61 76 73 76 63 2c 52 73 43 43 65 6e 74 65 72 2c 4d 63 54 73 6b 73 68 64 2e 65 78 65 2c 4d 63 44 65 74 65 63 74 2e 65 78 65 2c 43 41 49 53 61 66 65 2c 76 73 6d 6f 6e 2c 54 6d 6e 74 73 72 76 2c 50 63 43 74 6c 43 6f 6d 2c 54 6d 50 66 77 2c 74 6d 70 72 6f 78 79 2c 70 6d 73 68 65 6c 6c 73 72 76 2c 50 41 56 53 52 56 2c 50 41 56 46 4e 53 56 52 2c 50 53 49 4d 53 56 43 2c 50 4e 4d 53 52 56 2c 50 61 76 50 72 53 72 76 2c 54 50 53 72 76 } //0a 00 
		$a_01_5 = {41 56 50 2e 43 6c 6f 73 65 52 65 71 75 65 73 74 44 69 61 6c 6f 67 } //01 00 
		$a_01_6 = {77 53 6b 79 73 6f 66 74 } //01 00 
		$a_01_7 = {4a 69 61 6e 67 6d 69 6e 20 52 65 67 69 73 74 72 79 20 4d 6f 6e 69 74 6f 72 20 45 78 } //01 00 
		$a_01_8 = {4b 56 58 50 5f 4d 6f 6e 69 74 6f 72 } //01 00 
		$a_01_9 = {4b 65 72 6e 65 6c 43 68 65 63 6b } //01 00 
		$a_01_10 = {46 6f 72 74 68 67 6f 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}