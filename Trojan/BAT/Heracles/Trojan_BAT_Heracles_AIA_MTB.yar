
rule Trojan_BAT_Heracles_AIA_MTB{
	meta:
		description = "Trojan:BAT/Heracles.AIA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 14 28 90 01 03 0a 2c 26 07 d0 39 00 00 02 28 90 00 } //01 00 
		$a_01_1 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 50 00 52 00 4f 00 43 00 45 00 53 00 53 00 49 00 44 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 49 00 4e 00 33 00 32 00 5f 00 50 00 52 00 4f 00 43 00 45 00 53 00 53 00 20 00 57 00 48 00 45 00 52 00 45 00 20 00 50 00 41 00 52 00 45 00 4e 00 54 00 50 00 52 00 4f 00 43 00 45 00 53 00 53 00 49 00 44 00 20 00 3d 00 20 00 7b 00 30 00 7d 00 } //00 00 
	condition:
		any of ($a_*)
 
}