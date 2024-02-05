
rule TrojanDownloader_Win32_Banload_ADG{
	meta:
		description = "TrojanDownloader:Win32/Banload.ADG,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 2a 6e 23 66 40 31 23 } //01 00 
		$a_01_1 = {77 69 6e 78 2a 74 23 33 2a 32 2a 5c 2a 23 70 40 6a 63 23 74 40 61 2a 2e 6a 23 70 23 67 40 } //01 00 
		$a_01_2 = {52 23 75 23 6e 2a 44 23 4c 23 4c 40 33 23 32 2e 40 65 78 65 40 } //01 00 
		$a_01_3 = {63 68 23 61 2a 76 2a 65 2a 3d 2a 78 2a 63 2a 68 23 61 23 76 65 2a 26 23 75 23 72 2a 6c 23 3d 23 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Banload_ADG_2{
	meta:
		description = "TrojanDownloader:Win32/Banload.ADG,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {c2 08 00 53 a1 90 01 04 83 38 00 74 90 01 01 8b 1d 90 01 04 8b 1b ff d3 5b c3 90 01 01 55 8b ec 51 53 56 57 89 4d fc 8b da 8b f0 8b c3 ff 50 f4 90 00 } //01 00 
		$a_02_1 = {43 3a 5c 73 79 73 36 34 5c 90 02 08 2e 65 78 65 90 00 } //01 00 
		$a_02_2 = {2f 6a 75 62 61 73 2f 90 02 08 2e 65 78 65 90 00 } //01 00 
		$a_00_3 = {59 4d 44 20 72 65 63 61 6c 63 20 6f 72 64 65 72 3a } //01 00 
		$a_00_4 = {44 4d 59 20 72 65 63 61 6c 63 20 6f 72 64 65 72 3a } //00 00 
	condition:
		any of ($a_*)
 
}