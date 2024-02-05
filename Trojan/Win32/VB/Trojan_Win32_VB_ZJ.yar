
rule Trojan_Win32_VB_ZJ{
	meta:
		description = "Trojan:Win32/VB.ZJ,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {40 00 2a 00 5c 00 41 00 43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 43 00 52 00 4f 00 57 00 5c 00 45 00 73 00 63 00 72 00 69 00 74 00 6f 00 72 00 69 00 6f 00 5c 00 43 00 6f 00 6e 00 74 00 61 00 67 00 69 00 61 00 20 00 4d 00 65 00 6d 00 6f 00 72 00 69 00 61 00 73 00 5c 00 50 00 72 00 6f 00 79 00 65 00 63 00 74 00 6f 00 31 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_01_1 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 31 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 2e 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 5c 00 } //01 00 
		$a_01_2 = {73 00 68 00 65 00 6c 00 6c 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 3d 00 2e 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 5c 00 } //01 00 
		$a_01_3 = {25 00 77 00 69 00 6e 00 64 00 69 00 72 00 25 00 5c 00 72 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 2c 00 20 00 30 00 } //01 00 
		$a_01_4 = {57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_01_5 = {5b 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //00 00 
	condition:
		any of ($a_*)
 
}