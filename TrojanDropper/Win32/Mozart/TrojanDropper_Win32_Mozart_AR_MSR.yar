
rule TrojanDropper_Win32_Mozart_AR_MSR{
	meta:
		description = "TrojanDropper:Win32/Mozart.AR!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {39 00 33 00 2e 00 31 00 38 00 38 00 2e 00 31 00 35 00 35 00 2e 00 32 00 } //01 00 
		$a_01_1 = {6d 00 6f 00 7a 00 61 00 72 00 74 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_2 = {6d 00 6f 00 76 00 65 00 20 00 22 00 25 00 54 00 45 00 4d 00 50 00 25 00 5c 00 } //01 00 
		$a_01_3 = {22 00 20 00 22 00 25 00 41 00 70 00 70 00 44 00 61 00 74 00 61 00 25 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 } //00 00 
		$a_00_4 = {5d 04 00 } //00 ff 
	condition:
		any of ($a_*)
 
}