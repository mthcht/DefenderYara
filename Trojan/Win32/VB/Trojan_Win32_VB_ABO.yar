
rule Trojan_Win32_VB_ABO{
	meta:
		description = "Trojan:Win32/VB.ABO,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 5a 00 68 00 75 00 44 00 6f 00 6e 00 67 00 46 00 61 00 6e 00 67 00 79 00 75 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {73 00 68 00 65 00 6e 00 6a 00 69 00 6e 00 67 00 79 00 75 00 61 00 6e 00 69 00 65 00 35 00 32 00 30 00 } //01 00 
		$a_01_2 = {65 00 36 00 37 00 32 00 33 00 76 00 67 00 6d 00 78 00 6b 00 68 00 69 00 6a 00 31 00 38 00 75 00 62 00 79 00 66 00 35 00 39 00 6f 00 6c 00 74 00 61 00 6e 00 72 00 73 00 64 00 30 00 77 00 63 00 70 00 71 00 34 00 7a 00 } //01 00 
		$a_01_3 = {7b 00 43 00 34 00 32 00 45 00 42 00 35 00 41 00 31 00 2d 00 30 00 45 00 45 00 44 00 2d 00 45 00 35 00 34 00 39 00 2d 00 39 00 31 00 42 00 30 00 2d 00 31 00 35 00 33 00 34 00 38 00 35 00 38 00 36 00 36 00 30 00 31 00 36 00 7d 00 } //01 00 
		$a_01_4 = {5c 00 7e 81 af 8b 54 00 54 00 2e 00 54 00 54 } //00 00 
	condition:
		any of ($a_*)
 
}