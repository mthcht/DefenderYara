
rule TrojanDropper_Win32_Tilcun_A{
	meta:
		description = "TrojanDropper:Win32/Tilcun.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 03 00 "
		
	strings :
		$a_03_0 = {72 f1 c1 e8 02 8b c8 74 14 8d 85 90 01 02 ff ff 8b 15 90 01 02 40 00 31 10 83 c0 04 49 75 f2 6a 02 53 53 90 00 } //03 00 
		$a_03_1 = {53 50 6a 26 68 90 01 02 40 00 ff 75 90 01 01 ff 15 90 01 02 40 00 83 fb 26 7d 0a 80 b3 90 01 02 40 00 90 01 01 43 eb f1 56 90 00 } //01 00 
		$a_01_2 = {5c 77 69 6e 73 79 73 2e 72 65 67 00 } //01 00 
		$a_01_3 = {5c 53 68 65 6c 6c 45 78 65 63 75 74 65 48 6f 6f 6b 73 5d 0a 00 } //01 00 
		$a_01_4 = {7e 74 69 00 } //00 00 
	condition:
		any of ($a_*)
 
}