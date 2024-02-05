
rule Trojan_BAT_CryptInject_AR_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.AR!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 1f 0d 28 23 00 00 0a 72 17 02 00 70 28 3e 00 00 0a 0a 02 7b 02 00 00 04 06 17 28 2d 00 00 0a 00 06 73 2e 00 00 0a 0b 07 20 a4 00 00 00 6f 2f 00 00 0a 00 00 de 05 } //01 00 
		$a_01_1 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 00 0f 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 00 29 20 00 20 00 40 00 65 00 63 00 68 00 6f 00 20 00 6f 00 66 00 66 00 20 00 26 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 00 29 4a 00 41 00 49 00 53 00 49 00 59 00 41 00 52 00 41 00 4d } //00 00 
	condition:
		any of ($a_*)
 
}