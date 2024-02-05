
rule _PseudoThreat_4000002a{
	meta:
		description = "!PseudoThreat_4000002a,SIGNATURE_TYPE_PEHSTR_EXT,24 00 24 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {2f 73 65 61 72 63 68 2e 70 68 70 3f 71 71 3d 25 73 } //0a 00 
		$a_01_1 = {43 4c 41 46 2e 64 6c 6c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 } //05 00 
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 61 00 75 00 74 00 6f 00 2e 00 73 00 65 00 61 00 72 00 63 00 68 00 2e 00 6d 00 73 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 65 00 73 00 70 00 6f 00 6e 00 73 00 65 00 2e 00 61 00 73 00 70 00 3f 00 4d 00 54 00 3d 00 } //05 00 
		$a_01_3 = {2f 00 73 00 65 00 61 00 72 00 63 00 68 00 2e 00 70 00 68 00 70 00 3f 00 71 00 71 00 3d 00 25 00 73 00 } //05 00 
		$a_01_4 = {72 65 6c 65 61 73 65 00 } //01 00 
		$a_01_5 = {7b 35 44 44 45 35 35 39 31 2d 41 38 41 42 2d 34 38 39 37 2d 39 33 45 46 2d 31 45 34 45 39 34 33 46 38 35 41 37 7d } //00 00 
	condition:
		any of ($a_*)
 
}