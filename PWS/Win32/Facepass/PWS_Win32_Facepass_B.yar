
rule PWS_Win32_Facepass_B{
	meta:
		description = "PWS:Win32/Facepass.B,SIGNATURE_TYPE_PEHSTR,34 00 34 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {63 00 3a 00 5c 00 74 00 65 00 6d 00 70 00 5c 00 62 00 6f 00 74 00 2e 00 6c 00 6f 00 67 00 } //0a 00 
		$a_01_1 = {69 00 6e 00 6a 00 65 00 63 00 74 00 5f 00 66 00 69 00 72 00 65 00 66 00 6f 00 78 00 } //0a 00 
		$a_01_2 = {69 00 6e 00 6a 00 65 00 63 00 74 00 5f 00 69 00 65 00 62 00 68 00 6f 00 } //0a 00 
		$a_01_3 = {69 00 6e 00 6a 00 65 00 63 00 74 00 5f 00 72 00 65 00 67 00 72 00 75 00 6e 00 } //0a 00 
		$a_01_4 = {69 00 6e 00 6a 00 65 00 63 00 74 00 5f 00 77 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 } //01 00 
		$a_01_5 = {66 00 61 00 63 00 65 00 62 00 6f 00 6f 00 6b 00 2e 00 63 00 6f 00 6d 00 2f 00 6c 00 6f 00 67 00 69 00 6e 00 2e 00 70 00 68 00 70 00 } //01 00 
		$a_01_6 = {67 00 6f 00 6f 00 67 00 6c 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 63 00 63 00 6f 00 75 00 6e 00 74 00 73 00 2f 00 4c 00 6f 00 67 00 69 00 6e 00 } //01 00 
		$a_01_7 = {6d 00 61 00 69 00 6c 00 2e 00 72 00 75 00 2f 00 63 00 67 00 69 00 2d 00 62 00 69 00 6e 00 2f 00 6c 00 6f 00 67 00 69 00 6e 00 } //00 00 
	condition:
		any of ($a_*)
 
}