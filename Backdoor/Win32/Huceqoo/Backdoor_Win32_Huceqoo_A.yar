
rule Backdoor_Win32_Huceqoo_A{
	meta:
		description = "Backdoor:Win32/Huceqoo.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0b 00 00 03 00 "
		
	strings :
		$a_01_0 = {75 f7 68 88 13 00 00 ff d6 eb ee } //04 00 
		$a_01_1 = {7e 0d 8a 0c 10 32 c8 88 0c 10 40 3b c3 7c f3 5f c6 04 1a 00 } //04 00 
		$a_01_2 = {99 b9 12 00 00 00 f7 f9 80 c2 42 88 54 34 0c 46 83 fe 08 7c e6 } //03 00 
		$a_01_3 = {8d 44 24 0c 6a 00 50 6a 00 68 3f 00 0f 00 6a 00 6a 00 6a 00 51 } //02 00 
		$a_01_4 = {83 ec 10 66 8b 44 24 18 8b 4c 24 14 56 6a 06 6a 01 6a 02 66 c7 44 24 10 02 00 66 89 44 24 12 89 4c 24 14 } //03 00 
		$a_01_5 = {6a 00 6a 01 68 c8 04 00 00 53 ff d5 6a 00 6a 01 68 c9 04 00 00 53 ff d5 } //02 00 
		$a_01_6 = {67 64 76 6b 6b 76 72 65 71 67 6b 66 69 00 } //01 00 
		$a_01_7 = {3a 62 79 65 62 79 65 00 } //02 00 
		$a_01_8 = {43 75 72 72 65 6e 74 55 73 65 72 00 2e 73 63 72 } //01 00 
		$a_01_9 = {69 66 20 65 78 69 73 74 20 22 25 73 22 20 67 6f 74 6f } //02 00 
		$a_01_10 = {3a 75 6e 3a 20 25 73 20 63 6e 3a 20 25 73 } //00 00 
	condition:
		any of ($a_*)
 
}