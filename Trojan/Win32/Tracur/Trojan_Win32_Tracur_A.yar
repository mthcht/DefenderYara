
rule Trojan_Win32_Tracur_A{
	meta:
		description = "Trojan:Win32/Tracur.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8a 1c 0e 32 9a 90 01 02 40 00 83 c2 01 3b d5 88 5c 0e ff 75 02 33 d2 83 c1 01 3b cf 7e e3 5b 5f 88 44 31 ff 5d c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Tracur_A_2{
	meta:
		description = "Trojan:Win32/Tracur.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {44 65 66 c7 46 90 01 01 74 6f 66 c7 46 90 01 01 75 72 66 c7 46 90 01 01 73 21 90 00 } //02 00 
		$a_01_1 = {74 4e 8b 0e 8d 44 01 01 50 e8 } //02 00 
		$a_01_2 = {85 c0 74 6c 81 7d fc c8 00 00 00 75 63 ff 75 f4 } //01 00 
		$a_01_3 = {99 68 80 96 98 00 52 50 e8 } //01 00 
		$a_01_4 = {1b 4d f4 6a 08 68 00 68 c4 61 51 50 e8 } //02 00 
		$a_01_5 = {70 31 39 45 33 4e 55 53 48 41 47 43 68 75 73 68 79 73 6a 77 76 00 } //02 00 
		$a_01_6 = {51 75 69 77 38 32 68 64 44 65 67 5b 75 61 56 31 6e 32 78 75 53 00 } //00 00 
	condition:
		any of ($a_*)
 
}