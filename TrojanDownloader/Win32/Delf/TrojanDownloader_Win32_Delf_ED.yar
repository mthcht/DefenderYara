
rule TrojanDownloader_Win32_Delf_ED{
	meta:
		description = "TrojanDownloader:Win32/Delf.ED,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {57 69 6e 45 78 65 63 } //01 00 
		$a_00_1 = {57 72 69 74 65 46 69 6c 65 } //01 00 
		$a_00_2 = {48 74 74 70 53 65 6e 64 52 65 71 75 65 73 74 41 } //01 00 
		$a_00_3 = {44 41 44 4f 53 3d } //01 00 
		$a_01_4 = {37 30 39 35 31 34 33 38 35 39 42 39 36 32 36 44 37 35 43 36 31 32 42 35 41 42 37 44 31 36 43 30 44 31 31 32 44 46 35 38 34 37 41 34 34 46 34 38 32 35 35 35 44 43 32 37 32 38 42 33 46 38 38 30 31 } //01 00 
		$a_01_5 = {35 34 41 34 33 31 32 39 34 31 46 33 41 44 38 32 32 33 36 36 33 35 38 32 46 35 } //00 00 
	condition:
		any of ($a_*)
 
}