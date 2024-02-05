
rule Trojan_BAT_Bepush_F{
	meta:
		description = "Trojan:BAT/Bepush.F,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 3a 00 20 00 7b 00 30 00 7d 00 20 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2e 00 2e 00 2e 00 } //01 00 
		$a_01_1 = {2f 00 79 00 6f 00 6b 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_2 = {43 00 68 00 72 00 6f 00 6d 00 65 00 20 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 20 00 7b 00 30 00 7d 00 20 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 64 00 2e 00 2e 00 2e 00 } //01 00 
		$a_01_3 = {43 00 68 00 72 00 6f 00 6d 00 65 00 20 00 65 00 6b 00 6c 00 65 00 6e 00 74 00 69 00 20 00 64 00 6f 00 73 00 79 00 61 00 20 00 79 00 6f 00 6c 00 75 00 20 00 79 00 61 00 6e 00 6c 00 } //01 00 
		$a_01_4 = {44 00 6f 00 73 00 79 00 61 00 20 00 73 00 69 00 6c 00 6d 00 65 00 64 00 65 00 20 00 76 00 65 00 79 00 61 00 20 00 74 00 61 00 } //01 00 
		$a_01_5 = {46 00 48 00 64 00 50 00 6c 00 61 00 79 00 65 00 72 00 33 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //00 00 
		$a_00_6 = {5d 04 00 00 } //72 29 
	condition:
		any of ($a_*)
 
}