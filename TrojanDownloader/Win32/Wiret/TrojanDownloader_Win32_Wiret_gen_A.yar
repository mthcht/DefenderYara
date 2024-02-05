
rule TrojanDownloader_Win32_Wiret_gen_A{
	meta:
		description = "TrojanDownloader:Win32/Wiret.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,28 00 23 00 09 00 00 05 00 "
		
	strings :
		$a_00_0 = {37 35 37 66 65 36 37 36 2d 32 35 66 34 2d 34 66 39 66 2d 61 61 65 37 2d 38 61 65 37 30 64 37 62 31 64 30 65 } //05 00 
		$a_00_1 = {33 63 34 30 36 33 34 34 2d 61 31 65 34 2d 34 63 62 66 2d 62 65 30 62 2d 31 66 36 36 62 63 30 64 61 34 66 34 } //14 00 
		$a_02_2 = {57 6a 00 6a 00 6a 00 6a 00 6a 00 ff d6 85 c0 8b 2d 90 01 03 00 8b 1d 90 01 03 00 6a 00 74 16 6a 00 6a 00 6a 00 6a 00 ff d6 6a 00 6a 00 6a 00 6a ff ff d3 eb 08 ff d5 ff 15 90 01 03 00 8b 4c 24 1c 8b 54 24 18 8d 44 24 10 50 6a 00 51 52 90 00 } //14 00 
		$a_02_3 = {6a 00 6a 00 ff 15 90 01 03 00 6a 00 6a 00 6a 00 6a 00 6a 00 8b f8 ff d6 85 c0 6a 00 74 1c 6a 00 6a 00 6a 00 6a 00 ff d6 6a 00 6a 00 6a 00 6a ff ff d3 8b c7 5f 5e 5d 5b 59 c3 ff d5 ff 15 90 01 03 00 8b c7 5f 5e 5d 5b 90 00 } //0c 00 
		$a_00_4 = {37 35 37 66 65 36 37 36 2d 32 35 66 34 2d 34 66 39 66 2d 61 61 65 37 2d 38 61 65 37 30 64 37 62 } //0d 00 
		$a_00_5 = {31 64 30 65 00 00 00 00 33 63 34 30 36 33 34 34 2d 61 31 65 34 2d 34 63 62 66 2d 62 65 30 62 2d 31 66 36 36 62 63 30 64 61 34 66 34 00 00 00 00 } //0f 00 
		$a_00_6 = {57 41 4e 4e 41 00 00 00 69 73 68 6f 73 74 2e 65 78 65 00 00 5c 00 00 00 6f 73 74 2e 65 78 65 00 25 73 5c 25 73 00 00 00 42 55 54 54 4f 4e 00 00 43 4f 4d 53 50 45 43 00 4f 70 65 6e 00 00 00 00 20 3e 20 6e 75 6c 00 00 2f 63 20 64 65 6c 20 00 43 6c 6f 73 65 48 61 6e 64 6c 65 00 45 78 69 74 50 72 6f 63 65 73 73 00 44 65 6c 65 74 65 46 69 6c 65 41 } //0f 00 
		$a_00_7 = {53 49 4c 4c 59 00 00 00 5c 00 00 00 69 73 68 6f 73 74 2e 65 78 65 00 00 25 73 5c 25 73 00 00 00 43 4f 4d 53 50 45 43 00 4f 70 65 6e 00 00 00 00 20 3e 20 6e 75 6c 00 00 2f 63 20 64 65 6c 20 00 43 6c 6f 73 65 48 61 6e 64 6c 65 00 45 78 69 74 50 72 6f 63 65 73 73 00 44 65 6c 65 74 65 46 69 6c 65 41 00 49 72 71 7d 6c 4a 75 79 6b 53 7a 5a 75 70 79 00 6b 65 } //0f 00 
		$a_00_8 = {52 41 4c 4c 59 00 00 00 5c 00 00 00 69 73 68 6f 73 74 2e 65 78 65 00 00 25 73 5c 25 73 00 00 00 43 4f 4d 53 50 45 43 00 4f 70 65 6e 00 00 00 00 20 3e 20 6e 75 6c 00 00 2f 63 20 64 65 6c 20 00 43 6c 6f 73 65 48 61 6e 64 6c 65 00 45 78 69 74 50 72 6f 63 65 73 73 00 44 65 6c 65 74 65 46 69 6c 65 41 00 25 73 25 73 25 73 00 00 55 6e 6d 61 00 00 00 00 70 56 } //00 00 
	condition:
		any of ($a_*)
 
}