
rule Worm_Win32_Autorun_YC{
	meta:
		description = "Worm:Win32/Autorun.YC,SIGNATURE_TYPE_PEHSTR,1f 00 1e 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {75 72 74 6f 72 62 72 6f 00 70 72 6a 44 6f 77 6e 6c 6f 61 64 65 64 } //0a 00 
		$a_01_1 = {70 72 6a 44 6f 77 6e 6c 6f 61 64 65 72 00 00 00 16 00 00 00 75 00 73 00 62 00 68 00 65 00 6c 00 70 00 2e 00 65 00 78 00 65 } //05 00 
		$a_01_2 = {2a 00 5c 00 41 00 43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 4d 00 61 00 74 00 74 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 56 00 69 00 73 00 75 00 61 00 6c 00 20 00 42 00 61 00 73 00 69 00 63 00 5c 00 56 00 42 00 36 00 20 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 72 00 5c 00 70 00 72 00 6a 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 72 00 2e 00 76 00 62 00 70 00 } //05 00 
		$a_01_3 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00 
		$a_01_4 = {6d 00 61 00 64 00 74 00 6f 00 72 00 72 00 65 00 6e 00 74 00 73 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 75 00 73 00 62 00 2e 00 70 00 68 00 70 00 3f 00 6d 00 73 00 67 00 67 00 3d 00 49 00 6e 00 66 00 65 00 63 00 74 00 65 00 64 00 20 00 46 00 72 00 6f 00 6d 00 20 00 55 00 53 00 42 00 20 00 44 00 72 00 69 00 76 00 65 00 } //01 00 
		$a_01_5 = {6d 00 61 00 64 00 74 00 6f 00 72 00 72 00 65 00 6e 00 74 00 73 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 70 00 61 00 79 00 6c 00 6f 00 61 00 64 00 73 00 2f 00 } //00 00 
	condition:
		any of ($a_*)
 
}