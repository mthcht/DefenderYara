
rule Trojan_Win32_Lnkhyd_A{
	meta:
		description = "Trojan:Win32/Lnkhyd.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {7e 05 bb 01 00 00 00 90 02 03 e8 90 01 04 8b 55 90 02 05 8a 54 32 ff 90 02 05 8a 4c 19 ff 32 d1 88 54 30 ff 43 46 4f 75 90 00 } //02 00 
		$a_03_1 = {ba 37 00 00 00 e8 90 01 04 b8 90 02 09 ba 0c 00 00 00 e8 90 00 } //01 00 
		$a_03_2 = {2a 2e 6c 6e 6b 90 02 10 7b 70 66 6d 7d 90 02 10 7b 64 73 6b 7d 90 00 } //01 00 
		$a_03_3 = {52 4e 44 3d 90 01 01 3b 48 4f 53 54 3d 90 02 10 3b 3b 4d 41 43 3d 90 00 } //01 00 
		$a_03_4 = {7b 71 6b 6d 7d 90 02 10 51 51 2e 45 58 45 90 02 10 51 51 47 41 4d 45 2e 45 58 45 90 02 10 55 4e 49 4e 53 54 41 4c 4c 2e 45 58 45 90 00 } //01 00 
		$a_03_5 = {7b 70 66 6d 7d 90 02 10 7b 73 74 6d 7d 90 02 10 7b 71 6b 6d 7d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}