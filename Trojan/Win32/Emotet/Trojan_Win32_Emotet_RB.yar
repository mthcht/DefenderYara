
rule Trojan_Win32_Emotet_RB{
	meta:
		description = "Trojan:Win32/Emotet.RB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 44 64 74 4e 23 6a 6f 4b 63 37 2e 70 64 62 } //01 00 
		$a_01_1 = {63 00 68 00 65 00 62 00 75 00 74 00 37 00 37 00 37 00 37 00 46 00 6f 00 72 00 50 00 61 00 6e 00 64 00 69 00 74 00 4f 00 } //01 00 
		$a_01_2 = {39 00 42 00 74 00 68 00 65 00 45 00 61 00 73 00 74 00 65 00 72 00 31 00 62 00 67 00 39 00 28 00 6f 00 72 00 44 00 65 00 63 00 65 00 6d 00 62 00 65 00 72 00 } //01 00 
		$a_01_3 = {43 00 68 00 72 00 6f 00 6d 00 65 00 20 00 20 00 28 00 6e 00 6f 00 74 00 69 00 77 00 61 00 6e 00 74 00 75 00 4d 00 74 00 68 00 65 00 } //01 00 
		$a_01_4 = {42 00 72 00 6f 00 77 00 73 00 65 00 72 00 20 00 70 00 72 00 69 00 76 00 61 00 74 00 65 00 20 00 31 00 37 00 66 00 59 00 75 00 73 00 65 00 36 00 36 00 44 00 65 00 76 00 } //00 00 
	condition:
		any of ($a_*)
 
}