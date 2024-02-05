
rule Backdoor_Win32_Scieron_A_dha{
	meta:
		description = "Backdoor:Win32/Scieron.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 08 00 08 00 00 03 00 "
		
	strings :
		$a_03_0 = {68 04 20 6d 3b 90 01 01 ff 15 90 00 } //01 00 
		$a_01_1 = {6d 00 73 00 68 00 74 00 74 00 70 00 5f 00 64 00 6c 00 6c 00 5f 00 35 00 5f 00 31 00 00 00 } //01 00 
		$a_01_2 = {5c 00 5c 00 2e 00 5c 00 49 00 70 00 6e 00 65 00 74 00 00 00 } //01 00 
		$a_01_3 = {69 00 70 00 6e 00 65 00 74 00 00 00 } //01 00 
		$a_01_4 = {50 00 4f 00 52 00 54 00 5f 00 4e 00 55 00 4d 00 00 00 50 00 4f 00 52 00 54 00 5f 00 4e 00 55 00 4d 00 00 00 } //01 00 
		$a_01_5 = {49 00 50 00 5f 00 50 00 41 00 44 00 44 00 49 00 4e 00 47 00 5f 00 44 00 41 00 54 00 41 00 00 00 } //01 00 
		$a_01_6 = {48 00 54 00 43 00 6c 00 69 00 65 00 6e 00 74 00 3b 00 20 00 25 00 73 00 00 00 } //01 00 
		$a_01_7 = {25 00 75 00 00 00 00 00 50 00 4f 00 53 00 54 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}