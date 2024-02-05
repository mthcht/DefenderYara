
rule TrojanSpy_Win32_Bancos_AFC{
	meta:
		description = "TrojanSpy:Win32/Bancos.AFC,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 42 51 73 6e 67 70 63 45 4d 41 49 4c 30 } //01 00 
		$a_01_1 = {49 42 51 73 6e 67 70 63 53 45 4e 48 41 34 } //01 00 
		$a_01_2 = {43 6f 6e 73 75 6c 74 61 44 61 64 6f 73 41 72 71 75 69 76 6f 53 4e 47 50 43 } //01 00 
		$a_01_3 = {49 42 51 73 6e 67 70 63 24 } //01 00 
		$a_01_4 = {49 42 51 73 6e 67 70 63 43 50 46 5f 52 45 53 50 4f 4e 53 41 56 45 4c 5f 53 4e 47 50 43 } //00 00 
	condition:
		any of ($a_*)
 
}