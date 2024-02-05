
rule Trojan_BAT_LokiStealer_A{
	meta:
		description = "Trojan:BAT/LokiStealer.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 43 00 20 00 63 00 68 00 6f 00 69 00 63 00 65 00 20 00 2f 00 43 00 20 00 59 00 20 00 2f 00 4e 00 20 00 2f 00 44 00 20 00 59 00 20 00 2f 00 54 00 20 00 33 00 20 00 26 00 20 00 44 00 65 00 6c 00 } //01 00 
		$a_03_1 = {4c 6f 6b 69 5c 90 02 10 5c 90 02 10 5c 6c 6f 6b 69 2e 70 64 62 90 00 } //01 00 
		$a_01_2 = {5b 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 20 00 4c 00 6f 00 6b 00 69 00 20 00 53 00 74 00 65 00 61 00 6c 00 65 00 72 00 20 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 3d 00 5d 00 } //01 00 
		$a_01_3 = {5c 00 69 00 6e 00 66 00 6f 00 2e 00 74 00 78 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}