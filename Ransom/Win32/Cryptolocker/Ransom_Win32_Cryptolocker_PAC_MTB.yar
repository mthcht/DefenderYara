
rule Ransom_Win32_Cryptolocker_PAC_MTB{
	meta:
		description = "Ransom:Win32/Cryptolocker.PAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2d 00 54 00 79 00 70 00 65 00 3a 00 20 00 61 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 2f 00 78 00 2d 00 77 00 77 00 77 00 2d 00 66 00 6f 00 72 00 6d 00 2d 00 75 00 72 00 6c 00 65 00 6e 00 63 00 6f 00 64 00 65 00 64 00 } //01 00 
		$a_01_1 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 43 00 20 00 70 00 69 00 6e 00 67 00 20 00 33 00 2e 00 34 00 2e 00 32 00 2e 00 31 00 20 00 2d 00 6e 00 20 00 34 00 } //01 00 
		$a_01_2 = {20 00 26 00 20 00 72 00 6d 00 64 00 69 00 72 00 20 00 2f 00 51 00 20 00 2f 00 53 00 20 00 22 00 } //01 00 
		$a_01_3 = {2d 6e 61 6d 65 3d 25 6c 73 26 64 65 6c 65 74 65 3d } //01 00 
		$a_01_4 = {70 00 68 00 70 00 69 00 6e 00 66 00 6f 00 2e 00 70 00 68 00 70 00 } //01 00 
		$a_01_5 = {5c 00 77 00 69 00 6e 00 6d 00 73 00 69 00 73 00 6d 00 } //00 00 
	condition:
		any of ($a_*)
 
}