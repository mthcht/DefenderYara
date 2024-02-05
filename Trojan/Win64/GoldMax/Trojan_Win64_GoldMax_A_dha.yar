
rule Trojan_Win64_GoldMax_A_dha{
	meta:
		description = "Trojan:Win64/GoldMax.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0b 00 00 01 00 "
		
	strings :
		$a_03_0 = {6d 61 69 6e 2e 64 65 6c 65 74 90 01 01 5f 65 6d 70 74 79 00 90 00 } //01 00 
		$a_03_1 = {6d 61 69 6e 2e 73 61 76 65 5f 69 6e 74 90 01 01 72 6e 61 6c 5f 73 65 74 74 69 6e 67 73 00 90 00 } //01 00 
		$a_03_2 = {6d 61 69 6e 2e 64 65 66 69 6e 65 5f 69 6e 74 65 90 01 01 6e 61 6c 5f 73 65 74 74 69 6e 67 73 00 90 00 } //01 00 
		$a_03_3 = {6d 61 69 6e 2e 77 67 65 74 5f 66 90 01 01 6c 65 00 90 00 } //01 00 
		$a_03_4 = {6d 61 69 6e 2e 62 65 61 63 90 01 01 6e 69 6e 67 00 90 00 } //01 00 
		$a_03_5 = {6d 61 69 6e 2e 72 65 71 75 65 73 74 5f 73 65 90 01 01 73 69 6f 6e 5f 6b 65 79 00 90 00 } //01 00 
		$a_03_6 = {6d 61 69 6e 2e 72 65 74 72 69 65 76 65 5f 73 65 90 01 01 73 69 6f 6e 5f 6b 65 79 00 90 00 } //01 00 
		$a_03_7 = {6d 61 69 6e 2e 72 65 73 6f 6c 76 65 5f 63 6f 90 01 01 6d 61 6e 64 00 90 00 } //01 00 
		$a_03_8 = {6d 61 69 6e 2e 73 65 6e 64 5f 66 90 01 01 6c 65 5f 70 61 72 74 00 90 00 } //01 00 
		$a_03_9 = {6d 61 69 6e 2e 73 65 6e 64 5f 63 6f 90 01 01 6d 61 6e 64 5f 72 65 73 75 6c 74 00 90 00 } //01 00 
		$a_03_10 = {6d 61 69 6e 2e 66 61 6c 73 65 5f 72 65 71 90 01 01 65 73 74 69 6e 67 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}