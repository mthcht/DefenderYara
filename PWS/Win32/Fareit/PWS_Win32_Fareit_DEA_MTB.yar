
rule PWS_Win32_Fareit_DEA_MTB{
	meta:
		description = "PWS:Win32/Fareit.DEA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 00 53 00 5a 00 50 00 62 00 61 00 32 00 66 00 42 00 66 00 37 00 62 00 6f 00 64 00 6a 00 7a 00 45 00 74 00 4a 00 34 00 62 00 39 00 65 00 61 00 67 00 53 00 68 00 79 00 4d 00 47 00 37 00 41 00 39 00 39 00 } //01 00 
		$a_01_1 = {53 00 65 00 6c 00 76 00 61 00 6e 00 74 00 6e 00 64 00 65 00 6c 00 73 00 65 00 72 00 6e 00 65 00 73 00 35 00 } //01 00 
		$a_01_2 = {54 00 65 00 6b 00 73 00 74 00 6d 00 61 00 72 00 6b 00 65 00 72 00 69 00 6e 00 67 00 65 00 72 00 6e 00 65 00 37 00 } //01 00 
		$a_01_3 = {4d 00 65 00 6e 00 74 00 61 00 6c 00 75 00 6e 00 64 00 65 00 72 00 73 00 67 00 65 00 6e 00 64 00 65 00 36 00 } //01 00 
		$a_01_4 = {75 00 64 00 6c 00 67 00 73 00 74 00 69 00 64 00 73 00 70 00 75 00 6e 00 6b 00 74 00 65 00 72 00 73 00 } //01 00 
		$a_01_5 = {53 00 61 00 6d 00 6d 00 65 00 6e 00 74 00 72 00 6e 00 67 00 6e 00 69 00 6e 00 67 00 65 00 72 00 37 00 } //01 00 
		$a_01_6 = {53 00 61 00 6c 00 70 00 65 00 74 00 65 00 72 00 73 00 79 00 72 00 65 00 66 00 61 00 62 00 72 00 69 00 6b 00 6b 00 65 00 72 00 39 00 } //01 00 
		$a_01_7 = {43 00 72 00 45 00 70 00 47 00 61 00 58 00 6c 00 46 00 61 00 71 00 4d 00 5a 00 70 00 63 00 62 00 58 00 71 00 4e 00 37 00 39 00 } //00 00 
	condition:
		any of ($a_*)
 
}