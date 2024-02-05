
rule Trojan_BAT_Seraph_AMAA_MTB{
	meta:
		description = "Trojan:BAT/Seraph.AMAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {11 01 11 03 11 00 11 03 91 72 90 01 01 00 00 70 28 90 01 01 00 00 06 59 d2 9c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_Seraph_AMAA_MTB_2{
	meta:
		description = "Trojan:BAT/Seraph.AMAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {06 72 01 00 00 70 28 90 01 01 00 00 0a 72 90 01 01 00 00 70 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 0b 28 90 01 01 00 00 06 0c 73 90 01 01 00 00 0a 0d 08 73 90 01 01 00 00 0a 13 04 11 04 07 16 73 90 01 01 00 00 0a 13 05 11 05 09 6f 90 01 01 00 00 0a 09 6f 90 01 01 00 00 0a 13 06 dd 90 00 } //01 00 
		$a_80_1 = {48 74 74 70 43 6c 69 65 6e 74 } //HttpClient  00 00 
	condition:
		any of ($a_*)
 
}