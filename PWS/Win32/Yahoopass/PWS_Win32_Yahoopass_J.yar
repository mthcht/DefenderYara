
rule PWS_Win32_Yahoopass_J{
	meta:
		description = "PWS:Win32/Yahoopass.J,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 4d 00 59 00 20 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 5c 00 56 00 69 00 72 00 6f 00 73 00 5c 00 59 00 61 00 68 00 6f 00 6f 00 20 00 50 00 61 00 73 00 73 00 20 00 26 00 20 00 64 00 61 00 69 00 6c 00 5c 00 53 00 65 00 6e 00 4d 00 61 00 69 00 6c 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_01_1 = {48 41 63 6b 20 50 61 73 73 77 6f 72 64 20 59 61 68 6f 6f 20 25 20 41 63 63 20 4e 65 74 } //01 00 
		$a_01_2 = {5c 76 69 72 6f 73 5c 79 61 68 6f 6f 20 70 61 73 01 00 } //01 00 
		$a_01_3 = {59 00 41 00 48 00 4f 00 4f 00 20 00 4d 00 45 00 53 00 53 00 4e 00 45 00 47 00 45 00 52 00 } //01 00 
		$a_01_4 = {56 00 69 00 63 00 4d 00 73 00 74 00 20 00 49 00 50 00 20 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 3a 00 } //00 00 
	condition:
		any of ($a_*)
 
}