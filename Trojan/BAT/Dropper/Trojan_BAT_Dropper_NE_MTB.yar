
rule Trojan_BAT_Dropper_NE_MTB{
	meta:
		description = "Trojan:BAT/Dropper.NE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {28 0b 00 00 0a 72 b4 0e 5d 70 6f 0c 00 00 0a 0a 73 0d 00 00 0a 0b 02 28 08 00 00 0a 73 0e 00 00 0a 0c 08 07 06 06 6f 0f 00 00 0a 16 73 10 00 00 0a 0d 09 73 11 00 00 0a 13 04 11 04 6f 12 00 00 0a 13 05 de 0a } //01 00 
		$a_01_1 = {30 00 4f 00 44 00 79 00 37 00 64 00 72 00 32 00 36 00 67 00 42 00 71 00 64 00 6d 00 35 00 70 00 52 00 32 00 38 00 6c 00 6c 00 58 00 64 00 49 00 64 00 6f 00 6a 00 79 00 6f 00 48 00 46 00 67 00 42 00 73 00 43 00 4c 00 45 00 65 00 53 00 34 00 57 00 38 00 31 00 63 00 37 00 7a 00 55 00 79 00 45 00 6f 00 35 00 39 00 76 00 5a 00 35 00 64 00 77 00 69 00 56 00 37 00 } //00 00 
	condition:
		any of ($a_*)
 
}