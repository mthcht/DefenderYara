
rule Trojan_Win32_Fiefeer_gen_A{
	meta:
		description = "Trojan:Win32/Fiefeer.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 02 00 "
		
	strings :
		$a_00_0 = {2e 64 6c 6c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 } //02 00 
		$a_03_1 = {70 00 6f 00 72 00 6e 00 6f 00 2f 00 69 00 6d 00 67 00 2f 00 6e 00 65 00 77 00 2f 00 90 02 02 61 00 2e 00 67 00 69 00 66 00 29 00 90 00 } //01 00 
		$a_00_2 = {6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 64 00 61 00 74 00 61 00 2e 00 78 00 73 00 6c 00 } //01 00 
		$a_00_3 = {62 00 61 00 63 00 6b 00 67 00 72 00 6f 00 75 00 6e 00 64 00 2d 00 69 00 6d 00 61 00 67 00 65 00 3a 00 75 00 72 00 6c 00 28 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 } //01 00 
		$a_00_4 = {70 00 72 00 39 00 30 00 30 00 31 00 } //00 00 
	condition:
		any of ($a_*)
 
}