
rule TrojanDownloader_Win32_Nuborti_A{
	meta:
		description = "TrojanDownloader:Win32/Nuborti.A,SIGNATURE_TYPE_PEHSTR_EXT,ffffffaa 00 ffffffa0 00 0a 00 00 64 00 "
		
	strings :
		$a_01_0 = {62 00 79 00 76 00 4f 00 6c 00 6b 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 5b 00 55 00 6e 00 69 00 63 00 6f 00 72 00 6e 00 2d 00 42 00 6f 00 74 00 6e 00 65 00 74 00 5d 00 } //32 00 
		$a_01_1 = {48 6f 74 74 74 65 72 78 57 73 6e 32 } //14 00 
		$a_01_2 = {50 00 68 00 61 00 72 00 6d 00 69 00 6e 00 67 00 20 00 46 00 61 00 69 00 6c 00 65 00 64 00 } //14 00 
		$a_01_3 = {53 00 70 00 72 00 65 00 61 00 64 00 20 00 55 00 53 00 42 00 2f 00 50 00 32 00 50 00 20 00 53 00 75 00 63 00 63 00 65 00 73 00 73 00 66 00 75 00 6c 00 } //14 00 
		$a_01_4 = {53 00 74 00 65 00 61 00 6c 00 65 00 72 00 20 00 46 00 61 00 69 00 6c 00 65 00 64 00 } //0a 00 
		$a_01_5 = {77 00 69 00 6e 00 62 00 74 00 73 00 65 00 72 00 76 00 73 00 2e 00 63 00 6f 00 6d 00 } //0a 00 
		$a_01_6 = {68 00 70 00 6c 00 65 00 6e 00 65 00 73 00 65 00 72 00 76 00 61 00 73 00 2e 00 63 00 6f 00 6d 00 } //0a 00 
		$a_01_7 = {70 00 61 00 72 00 61 00 73 00 65 00 74 00 6d 00 6f 00 6c 00 65 00 78 00 69 00 73 00 2e 00 63 00 6f 00 6d 00 } //0a 00 
		$a_01_8 = {6e 00 6f 00 64 00 33 00 32 00 76 00 61 00 6c 00 65 00 73 00 76 00 65 00 72 00 67 00 61 00 2e 00 63 00 6f 00 6d 00 } //0a 00 
		$a_01_9 = {42 00 6f 00 74 00 2e 00 70 00 68 00 70 00 } //00 00 
		$a_00_10 = {80 10 00 00 7a 3c a0 06 56 cc 8b 60 ed 98 fe ff 70 09 00 80 80 10 00 00 7a 3c a0 06 80 f4 4b 9b ed 7c 5e 5e 44 0d 00 80 } //80 10 
	condition:
		any of ($a_*)
 
}