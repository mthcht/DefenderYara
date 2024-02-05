
rule Trojan_Win32_Scelp_A{
	meta:
		description = "Trojan:Win32/Scelp.A,SIGNATURE_TYPE_PEHSTR,1a 00 1a 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {73 76 63 68 6f 73 74 2e 64 6c 6c 00 53 65 72 76 69 63 65 4d 61 69 6e } //0a 00 
		$a_01_1 = {41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 73 00 5c 00 69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 5c 00 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //02 00 
		$a_01_2 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //02 00 
		$a_01_3 = {47 45 54 20 25 73 20 48 54 54 50 2f 31 2e 30 } //01 00 
		$a_01_4 = {53 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 57 00 69 00 74 00 68 00 6f 00 75 00 74 00 4c 00 6f 00 67 00 6f 00 6e 00 } //01 00 
		$a_01_5 = {53 00 74 00 6f 00 70 00 33 00 36 00 30 00 20 00 45 00 72 00 72 00 6f 00 72 00 21 00 } //01 00 
		$a_01_6 = {5f 00 6b 00 61 00 73 00 70 00 65 00 72 00 73 00 6b 00 79 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}