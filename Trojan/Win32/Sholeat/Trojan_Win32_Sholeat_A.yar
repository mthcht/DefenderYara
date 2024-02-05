
rule Trojan_Win32_Sholeat_A{
	meta:
		description = "Trojan:Win32/Sholeat.A,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 06 00 00 0a 00 "
		
	strings :
		$a_00_0 = {43 00 6f 00 6d 00 70 00 61 00 6e 00 79 00 4e 00 61 00 6d 00 65 00 00 00 00 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 43 00 6f 00 72 00 70 00 6f 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //0a 00 
		$a_02_1 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 90 02 02 48 00 6f 00 73 00 74 00 73 00 2e 00 65 00 78 00 65 00 90 02 0d 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 4e 00 61 00 6d 00 65 00 90 02 04 48 00 6f 00 73 00 74 00 73 00 90 00 } //01 00 
		$a_00_2 = {40 00 6d 00 73 00 73 00 72 00 76 00 32 00 34 00 35 00 2e 00 64 00 61 00 74 00 } //01 00 
		$a_00_3 = {25 00 73 00 66 00 69 00 6c 00 65 00 25 00 30 00 34 00 75 00 25 00 73 00 } //01 00 
		$a_00_4 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 67 00 6f 00 6f 00 67 00 6c 00 65 00 61 00 64 00 73 00 2e 00 } //01 00 
		$a_00_5 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 7b 00 35 00 31 00 45 00 31 00 43 00 37 00 41 00 33 00 2d 00 30 00 30 00 33 00 33 00 2d 00 34 00 36 00 38 00 32 00 2d 00 42 00 39 00 37 00 46 00 2d 00 35 00 30 00 31 00 39 00 30 00 35 00 45 00 37 00 31 00 37 00 42 00 37 00 } //00 00 
	condition:
		any of ($a_*)
 
}