
rule TrojanDownloader_Win32_Ejik_F{
	meta:
		description = "TrojanDownloader:Win32/Ejik.F,SIGNATURE_TYPE_PEHSTR_EXT,6f 00 6f 00 05 00 00 64 00 "
		
	strings :
		$a_02_0 = {5b 8b e5 5d c3 00 00 00 ff ff ff ff 0a 00 00 00 5b 73 65 74 74 69 6e 67 73 5d 00 00 ff ff ff ff 90 01 01 00 00 00 75 73 65 72 6e 61 6d 65 3d 90 02 10 ff ff ff ff 03 00 00 00 69 64 3d 00 ff ff ff ff 0a 00 00 00 76 65 72 3d 30 90 01 05 00 00 ff ff ff ff 04 00 00 00 72 6e 64 3d 00 00 00 00 ff ff ff ff 11 00 00 00 77 69 6e 64 6f 77 6e 65 77 73 75 70 73 2e 69 6e 69 00 00 00 90 00 } //05 00 
		$a_00_1 = {41 41 41 00 45 58 45 46 49 4c 45 00 ff ff ff ff 10 00 00 00 52 65 67 73 76 72 33 32 2e 65 78 65 20 2f 73 20 00 00 00 00 } //05 00 
		$a_02_2 = {45 58 45 46 49 4c 45 00 ff ff ff ff 10 00 00 00 52 65 67 73 76 72 33 32 2e 65 78 65 20 2f 73 90 09 0c 00 ff ff ff ff 03 00 00 00 90 04 03 06 61 2d 7a 30 2d 39 00 90 00 } //05 00 
		$a_00_3 = {31 00 00 00 45 58 45 46 49 4c 45 00 ff ff ff ff 08 00 00 00 35 35 34 34 2e 65 78 65 } //01 00 
		$a_02_4 = {70 61 73 73 77 6f 72 64 90 02 50 75 73 65 72 6e 61 6d 65 90 02 50 50 61 73 73 77 6f 72 64 90 02 50 55 73 65 72 6e 61 6d 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}