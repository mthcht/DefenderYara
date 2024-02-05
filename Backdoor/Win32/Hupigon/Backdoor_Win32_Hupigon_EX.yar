
rule Backdoor_Win32_Hupigon_EX{
	meta:
		description = "Backdoor:Win32/Hupigon.EX,SIGNATURE_TYPE_PEHSTR,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 00 54 00 50 00 2e 00 45 00 58 00 45 00 20 00 2d 00 69 00 20 00 2d 00 73 00 3a 00 6a 00 26 00 64 00 65 00 6c 00 20 00 6a 00 26 00 65 00 63 00 68 00 6f 00 20 00 66 00 6f 00 72 00 20 00 25 00 25 00 69 00 20 00 69 00 6e 00 20 00 28 00 2a 00 2e 00 65 00 78 00 65 00 29 00 20 00 64 00 6f 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 25 00 25 00 69 00 20 00 3e 00 44 00 2e 00 62 00 61 00 74 00 26 00 65 00 63 00 68 00 6f 00 20 00 64 00 65 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 71 00 20 00 25 00 30 00 25 00 20 00 3e 00 3e 00 44 00 2e 00 62 00 61 00 74 00 26 00 44 00 2e 00 62 00 61 00 } //01 00 
		$a_01_1 = {41 00 74 00 74 00 61 00 63 00 6b 00 53 00 63 00 61 00 6e 00 6e 00 65 00 72 00 20 00 76 00 69 00 61 00 20 00 47 00 6f 00 74 00 68 00 69 00 6e 00 } //01 00 
		$a_01_2 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 27 00 2c 00 27 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 43 00 4d 00 44 00 27 00 } //00 00 
	condition:
		any of ($a_*)
 
}