
rule Trojan_BAT_Formbook_NE_MTB{
	meta:
		description = "Trojan:BAT/Formbook.NE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {06 11 0d 16 11 0b 6f 4c 00 00 0a 26 11 0a 11 0d 16 11 0b 11 0c 16 6f 56 00 00 0a 13 0f 7e 0e 00 00 04 11 0c 16 11 0f 6f 57 00 00 0a 11 0e 11 0b 58 13 0e 11 0e 11 0b 58 6a 06 6f 4f 00 00 0a 25 26 32 bd } //01 00 
		$a_01_1 = {53 00 30 00 78 00 4b 00 52 00 45 00 74 00 4b 00 54 00 45 00 52 00 54 00 53 00 6b 00 70 00 54 00 52 00 43 00 51 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}