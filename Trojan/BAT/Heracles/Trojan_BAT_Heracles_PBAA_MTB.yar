
rule Trojan_BAT_Heracles_PBAA_MTB{
	meta:
		description = "Trojan:BAT/Heracles.PBAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 0c 19 13 09 38 ?? ff ff ff 07 08 28 ?? 00 00 0a 6f ?? 00 00 0a 11 05 11 04 12 05 28 ?? 00 00 0a 13 07 } //4
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}