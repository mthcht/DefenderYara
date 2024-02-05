
rule Trojan_BAT_Dcstl_ABBH_MTB{
	meta:
		description = "Trojan:BAT/Dcstl.ABBH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00 
		$a_01_1 = {43 6c 69 70 62 6f 61 72 64 } //01 00 
		$a_01_2 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00 
		$a_01_3 = {24 62 65 32 39 63 32 65 63 2d 38 61 38 66 2d 34 63 31 39 2d 62 35 30 62 2d 34 32 36 33 63 38 38 65 36 30 39 64 } //01 00 
		$a_01_4 = {44 00 69 00 73 00 63 00 6f 00 72 00 64 00 5f 00 43 00 68 00 65 00 63 00 6b 00 65 00 72 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00 
		$a_01_5 = {6c 00 7a 00 74 00 5f 00 6c 00 6f 00 67 00 6f 00 } //01 00 
		$a_01_6 = {70 00 68 00 6f 00 74 00 6f 00 5f 00 32 00 30 00 32 00 31 00 5f 00 30 00 37 00 5f 00 30 00 31 00 5f 00 31 00 36 00 5f 00 33 00 31 00 5f 00 30 00 32 00 5f 00 72 00 65 00 6d 00 6f 00 76 00 65 00 62 00 67 00 5f 00 70 00 72 00 65 00 76 00 69 00 65 00 77 00 5f 00 5f 00 31 00 5f 00 } //01 00 
		$a_01_7 = {74 00 65 00 6c 00 65 00 67 00 72 00 61 00 6d 00 5f 00 50 00 4e 00 47 00 33 00 33 00 } //01 00 
		$a_01_8 = {74 00 65 00 6e 00 6f 00 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}