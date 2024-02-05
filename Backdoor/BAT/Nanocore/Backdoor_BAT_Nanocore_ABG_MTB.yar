
rule Backdoor_BAT_Nanocore_ABG_MTB{
	meta:
		description = "Backdoor:BAT/Nanocore.ABG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {11 06 1f 6a 91 13 05 2b 9b 02 73 90 01 03 0a 0b 07 75 90 01 03 01 06 75 90 01 03 01 16 73 90 01 03 0a 20 90 01 03 00 8d 90 01 03 01 0c 73 90 01 03 0a 0d 08 75 90 01 03 1b 09 75 90 01 03 01 07 75 90 01 03 01 28 90 01 03 06 17 13 05 38 90 01 03 ff 09 75 90 01 03 01 6f 90 01 03 0a 7e 90 01 03 04 20 90 01 03 00 7e 90 01 03 04 20 90 01 03 00 91 7e 90 01 03 04 1f 31 91 5f 20 90 01 03 00 5f 9c 2a 90 00 } //01 00 
		$a_01_1 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00 
		$a_01_2 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00 
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00 
		$a_01_4 = {63 76 68 6e 67 66 67 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_BAT_Nanocore_ABG_MTB_2{
	meta:
		description = "Backdoor:BAT/Nanocore.ABG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 04 00 "
		
	strings :
		$a_03_0 = {01 25 16 72 90 01 03 70 a2 25 17 72 90 01 03 70 a2 14 14 14 28 90 01 03 0a 28 90 01 03 0a 28 90 01 03 06 0b 07 28 90 01 03 06 28 90 01 03 0a 0c 28 90 01 03 0a 14 72 90 01 03 70 7e 90 01 03 0a 72 90 01 03 70 28 90 01 03 0a 17 8d 90 01 03 01 25 16 08 a2 14 14 90 0a 66 00 7e 90 01 03 04 14 72 90 01 03 70 18 8d 17 90 00 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_01_2 = {41 00 63 00 74 00 69 00 6f 00 6e 00 73 00 32 00 45 00 76 00 65 00 6e 00 74 00 73 00 4d 00 61 00 70 00 70 00 69 00 6e 00 67 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00 
		$a_01_3 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 } //01 00 
		$a_01_4 = {72 00 65 00 64 00 5f 00 6c 00 6f 00 76 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}