
rule Trojan_Win32_Conhook_P{
	meta:
		description = "Trojan:Win32/Conhook.P,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {7d 0e 88 04 0e 47 41 8a 01 84 c0 75 ec 83 ff 03 75 20 8a 52 03 80 fa 2e 74 18 33 c0 8a 43 02 } //02 00 
		$a_03_1 = {83 c4 0c d1 ee e8 90 01 04 33 d2 f7 f6 8b fa e8 90 01 04 33 d2 f7 f6 8b da 3b fb 74 e6 90 00 } //01 00 
		$a_01_2 = {5c 2a 3f 3f 3f 2e 2a 00 } //01 00 
		$a_01_3 = {42 69 6e 44 61 74 61 00 } //04 00 
		$a_01_4 = {44 4e 52 75 6e 00 44 4e 53 65 74 75 70 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 4e 6f 74 69 66 79 53 68 75 74 64 6f 77 6e 00 4e 6f 74 69 66 79 53 74 61 72 74 75 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}