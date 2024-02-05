
rule TrojanSpy_Win32_Rebhip_I{
	meta:
		description = "TrojanSpy:Win32/Rebhip.I,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 6e 69 74 46 75 6e 63 6f 65 73 44 69 76 65 72 73 61 73 00 } //01 00 
		$a_01_1 = {55 6e 69 74 44 69 76 65 72 73 6f 73 00 } //01 00 
		$a_01_2 = {55 6e 69 74 49 6e 73 65 72 74 50 61 73 73 00 } //01 00 
		$a_01_3 = {55 6e 69 74 52 65 76 50 72 6f 78 79 50 6f 72 74 00 } //01 00 
		$a_01_4 = {53 70 79 4e 65 74 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 6a 
	condition:
		any of ($a_*)
 
}