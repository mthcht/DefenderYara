
rule Trojan_BAT_ZgRAT_KAK_MTB{
	meta:
		description = "Trojan:BAT/ZgRAT.KAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {06 07 18 5d 39 90 01 01 00 00 00 02 65 38 90 01 01 00 00 00 02 58 0a 07 17 58 0b 07 03 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}