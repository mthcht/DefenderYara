
rule Trojan_BAT_Rozena_HNG_MTB{
	meta:
		description = "Trojan:BAT/Rozena.HNG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {56 00 69 00 72 00 74 00 75 00 61 00 6c 00 41 00 6c 00 6c 00 6f 00 63 00 45 00 78 00 00 25 57 00 72 00 69 00 74 00 65 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 00 23 52 00 65 00 61 00 64 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 00 0b 6e 00 74 00 64 00 6c 00 6c 00 00 29 5a 00 77 00 55 00 6e 00 6d 00 61 00 70 00 56 00 69 00 65 00 77 00 4f 00 66 00 53 00 65 00 63 00 74 00 69 00 6f 00 6e 00 00 1d 43 00 72 00 65 00 61 00 74 00 65 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 41 00 } //00 00 
	condition:
		any of ($a_*)
 
}