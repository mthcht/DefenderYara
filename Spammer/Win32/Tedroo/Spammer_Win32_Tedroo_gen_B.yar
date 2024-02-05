
rule Spammer_Win32_Tedroo_gen_B{
	meta:
		description = "Spammer:Win32/Tedroo.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0a 00 00 02 00 "
		
	strings :
		$a_01_0 = {73 1b 8b 55 fc 83 c2 54 8b 45 08 03 45 fc 0f be 08 33 ca } //02 00 
		$a_03_1 = {74 08 66 c7 45 90 01 01 bb 01 eb 06 66 c7 45 90 01 01 50 00 6a 01 90 00 } //02 00 
		$a_03_2 = {83 c0 04 75 02 eb e4 66 c7 45 90 01 01 02 00 6a 35 ff 15 90 00 } //02 00 
		$a_03_3 = {0f be 02 83 f8 4d 75 5f 8b 8d 90 01 04 0f be 51 01 83 fa 5a 75 50 90 00 } //02 00 
		$a_03_4 = {83 c2 20 33 c2 8b 4d 90 01 01 03 4d 90 00 } //01 00 
		$a_03_5 = {04 20 32 45 ff 47 88 90 01 02 b8 90 01 04 8d 48 01 8a 10 90 00 } //01 00 
		$a_01_6 = {2f 73 70 6d 2f } //01 00 
		$a_01_7 = {26 73 6d 74 70 3d 25 73 26 74 61 73 6b 3d 25 64 } //01 00 
		$a_01_8 = {63 6c 69 63 6b 3a 00 } //01 00 
		$a_01_9 = {72 75 6e 25 64 25 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}