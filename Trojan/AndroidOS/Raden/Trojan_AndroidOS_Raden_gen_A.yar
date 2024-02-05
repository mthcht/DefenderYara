
rule Trojan_AndroidOS_Raden_gen_A{
	meta:
		description = "Trojan:AndroidOS/Raden.gen!A,SIGNATURE_TYPE_DEXHSTR_EXT,03 00 02 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 65 6e 64 43 4d } //01 00 
		$a_01_1 = {6d 6a 2f 75 74 69 6c 73 2f 4d 4a 55 74 69 6c 73 } //01 00 
		$a_03_2 = {73 63 44 42 90 01 02 73 63 4e 75 6d 62 65 72 90 01 02 73 63 53 74 61 74 65 90 01 02 73 63 54 61 62 6c 65 90 00 } //01 00 
		$a_03_3 = {69 42 6f 6f 6b 4e 90 01 02 69 42 6f 6f 6b 53 90 01 02 69 42 6f 6f 6b 54 90 00 } //01 00 
		$a_03_4 = {6d 49 6e 74 65 76 65 72 90 01 02 6d 42 75 6e 64 6c 65 90 01 02 6d 4d 73 67 90 01 02 6d 4e 75 6d 62 65 72 90 00 } //02 00 
		$a_01_5 = {6d 6a 2f 69 43 61 6c 65 6e 64 61 72 2f 53 6d 73 52 65 63 65 69 76 65 72 } //02 00 
		$a_03_6 = {69 42 6f 6f 6b 54 90 01 02 73 63 54 61 62 6c 65 90 01 02 69 42 6f 6f 6b 53 90 01 02 73 63 53 74 61 74 65 90 01 02 69 42 6f 6f 6b 4e 90 01 02 73 63 4e 75 6d 62 65 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}