
rule Trojan_Win32_Daxloyn_A{
	meta:
		description = "Trojan:Win32/Daxloyn.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 0c 00 00 03 00 "
		
	strings :
		$a_01_0 = {4f 6e 6c 79 41 64 53 79 73 32 2e 64 6c 6c 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6f 53 61 79 48 65 6c 6c 6f 00 53 65 72 76 69 63 65 4d 61 69 6e 00 } //03 00 
		$a_01_1 = {2e 70 70 74 2e 70 64 67 2e 6d 70 33 2e 6d 70 34 2e 77 6d 61 2e 76 6f 63 2e 6d 6f 76 2e 61 76 69 2e 6d 6f 76 2e 72 6d 2e 72 6d 76 62 2e 61 73 66 2e 6d 70 65 67 2e 6d 70 67 2e 77 6d 76 2e 33 67 70 2e 65 78 65 2e 72 61 72 } //01 00 
		$a_01_2 = {2f 75 70 64 61 74 65 2f 68 78 } //01 00 
		$a_01_3 = {2f 75 70 64 61 74 65 2f 4f 6e 6c 79 41 64 } //01 00 
		$a_01_4 = {50 4f 50 55 52 4c 4c 49 53 54 00 } //01 00 
		$a_01_5 = {50 4f 50 50 52 4f 43 45 53 53 4e 41 4d 45 00 } //01 00 
		$a_01_6 = {50 4f 50 50 45 52 43 45 4e 54 00 } //01 00 
		$a_01_7 = {44 4f 57 4e 55 52 4c 00 } //01 00 
		$a_01_8 = {43 4c 49 43 4b 53 54 59 4c 45 00 } //01 00 
		$a_01_9 = {53 45 41 52 43 48 45 4e 54 52 59 55 52 4c 00 } //01 00 
		$a_01_10 = {4d 55 4c 55 52 4c 45 4e 41 42 4c 45 44 00 } //01 00 
		$a_01_11 = {50 76 50 6c 75 67 53 72 76 5f 53 69 6c 65 6e 63 65 5f 56 31 2e 64 6c 6c 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6f 53 61 79 48 65 6c 6c 6f 00 53 65 72 76 69 63 65 4d 61 69 6e 00 } //00 00 
	condition:
		any of ($a_*)
 
}