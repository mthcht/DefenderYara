
rule Trojan_BAT_Stealer_ABBA_MTB{
	meta:
		description = "Trojan:BAT/Stealer.ABBA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {04 08 16 07 16 1f 10 28 ?? 01 00 06 7e ?? 00 00 04 08 16 07 1f 0f 1f 10 28 ?? 01 00 06 7e ?? 00 00 04 06 07 28 ?? 01 00 06 7e ?? 00 00 04 06 18 28 ?? 01 00 06 7e ?? 00 00 04 06 1b 28 ?? 01 00 06 7e ?? 01 00 04 06 28 ?? 01 00 06 0d 7e ?? 01 00 04 09 05 16 05 8e 69 28 ?? 01 00 06 2a } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}