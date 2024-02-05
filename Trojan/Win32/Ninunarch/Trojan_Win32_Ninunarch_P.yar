
rule Trojan_Win32_Ninunarch_P{
	meta:
		description = "Trojan:Win32/Ninunarch.P,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {fd 9a 80 5c 6f 67 75 72 63 68 65 6e 6e 69 6b 6f 76 35 39 32 38 37 2e 6d 61 72 67 2e 70 75 68 00 } //01 00 
		$a_01_1 = {5c 6f 6d 61 72 62 61 6e 61 6e 37 38 32 2e 6d 61 72 67 2e 70 75 68 00 } //01 00 
		$a_01_2 = {fd 95 80 5c 79 61 6d 75 72 69 6c 6b 69 6e 32 39 38 2d 3e fd 95 80 5c 77 69 6e 7a 69 70 66 2e 65 78 65 00 } //01 00 
		$a_01_3 = {5c 6f 67 75 72 63 68 65 6e 6e 69 6b 6f 76 35 39 32 38 37 2d 3e fd 95 80 5c 61 2e 68 74 6d 00 } //01 00 
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 77 69 6e 78 67 7a 00 } //01 00 
		$a_01_5 = {fd 95 80 5c 62 7a 69 70 66 72 65 65 2e 65 78 65 00 } //01 00 
		$a_01_6 = {fd 95 80 5c 7a 69 70 73 6d 61 72 74 2e 65 78 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}