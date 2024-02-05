
rule VirTool_BAT_Splori_A{
	meta:
		description = "VirTool:BAT/Splori.A,SIGNATURE_TYPE_PEHSTR_EXT,21 00 21 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {52 75 6e 50 45 00 } //0a 00 
		$a_01_1 = {49 6e 6a 65 63 74 50 45 00 } //0a 00 
		$a_01_2 = {68 69 64 5f 73 74 61 72 74 00 } //01 00 
		$a_01_3 = {49 73 41 6e 75 62 69 73 53 61 6e 64 62 6f 78 00 } //01 00 
		$a_01_4 = {49 73 43 57 53 61 6e 64 62 6f 78 00 } //01 00 
		$a_01_5 = {49 73 4e 6f 72 6d 61 6e 53 61 6e 64 62 6f 78 00 } //01 00 
		$a_01_6 = {49 73 53 61 6e 64 62 6f 78 69 65 00 } //01 00 
		$a_01_7 = {49 73 53 75 6e 62 65 6c 74 53 61 6e 64 62 6f 78 00 } //01 00 
		$a_01_8 = {49 73 57 69 72 65 73 68 61 72 6b 00 } //00 00 
		$a_00_9 = {5d 04 00 00 b9 22 03 80 5c 23 00 00 bc 22 03 80 00 00 01 00 04 00 0d } //00 88 
	condition:
		any of ($a_*)
 
}