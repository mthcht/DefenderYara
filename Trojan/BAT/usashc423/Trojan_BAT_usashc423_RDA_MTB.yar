
rule Trojan_BAT_usashc423_RDA_MTB{
	meta:
		description = "Trojan:BAT/usashc423.RDA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 00 38 00 73 00 7a 00 7a 00 52 00 6e 00 67 00 34 00 54 00 71 00 67 00 51 00 6b 00 45 00 5a 00 35 00 6d 00 44 00 33 00 6b 00 53 00 6b 00 69 00 51 00 6d 00 6f 00 70 00 48 00 63 00 73 00 52 00 6b 00 30 00 77 00 53 00 6f 00 4a 00 50 00 36 00 77 00 2f 00 30 00 3d 00 } //01 00 
		$a_01_1 = {4f 00 4b 00 50 00 5a 00 73 00 6a 00 78 00 34 00 37 00 2b 00 36 00 6d 00 6f 00 69 00 52 00 5a 00 72 00 71 00 7a 00 71 00 53 00 53 00 6b 00 55 00 73 00 6d 00 66 00 61 00 38 00 36 00 64 00 51 00 49 00 46 00 41 00 68 00 73 00 34 00 35 00 56 00 47 00 31 00 39 00 36 00 54 00 68 00 2b 00 2b 00 } //01 00 
		$a_01_2 = {38 34 38 32 66 35 37 64 61 31 65 66 34 65 66 35 38 36 34 33 36 32 32 35 64 37 61 32 38 39 64 30 } //01 00 
		$a_01_3 = {32 61 32 35 63 31 34 63 64 64 32 30 34 65 61 37 61 63 32 38 63 32 32 30 63 35 30 39 65 30 34 38 } //00 00 
	condition:
		any of ($a_*)
 
}