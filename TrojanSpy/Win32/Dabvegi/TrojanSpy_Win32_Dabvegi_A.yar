
rule TrojanSpy_Win32_Dabvegi_A{
	meta:
		description = "TrojanSpy:Win32/Dabvegi.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 72 54 78 74 00 } //01 00 
		$a_01_1 = {44 6f 53 70 79 00 } //01 00 
		$a_01_2 = {53 54 4f 50 5f 53 4e 49 46 46 45 52 00 } //01 00 
		$a_01_3 = {47 52 41 42 42 45 5f 49 50 5f 50 4f 52 54 5f 53 4e 49 46 46 45 52 00 } //01 00 
		$a_01_4 = {53 54 41 52 54 5f 53 4e 49 46 46 45 52 00 } //01 00 
		$a_01_5 = {55 50 44 41 54 45 5f 50 41 53 54 41 5f 4b 45 59 00 } //01 00 
		$a_01_6 = {52 45 47 49 53 54 52 41 5f 49 4e 46 45 43 54 00 } //01 00 
		$a_01_7 = {53 61 76 65 44 65 6c 65 74 65 53 74 61 72 74 75 70 4b 4c 00 } //00 00 
	condition:
		any of ($a_*)
 
}