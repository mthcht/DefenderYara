
rule Worm_Win32_Autorun_XE{
	meta:
		description = "Worm:Win32/Autorun.XE,SIGNATURE_TYPE_PEHSTR_EXT,06 00 04 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {5b 61 75 74 6f 72 75 6e 5d 0d 0a 73 68 65 6c 6c 65 78 65 63 75 74 65 3d 22 77 69 6e 73 79 73 2e 65 78 65 22 0d 0a 55 73 65 41 75 74 6f 50 6c 61 79 3d 31 00 } //02 00 
		$a_00_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 73 00 79 00 73 00 69 00 6e 00 66 00 44 00 61 00 74 00 65 00 00 00 } //01 00 
		$a_00_2 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 53 00 52 00 00 00 } //01 00 
		$a_00_3 = {4e 00 6f 00 4d 00 61 00 6e 00 61 00 67 00 65 00 4d 00 79 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 56 00 65 00 72 00 62 00 00 00 } //01 00 
		$a_00_4 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 00 00 } //01 00 
		$a_00_5 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 41 00 6e 00 74 00 69 00 44 00 6f 00 64 00 65 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}