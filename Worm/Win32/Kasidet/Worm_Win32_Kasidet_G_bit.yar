
rule Worm_Win32_Kasidet_G_bit{
	meta:
		description = "Worm:Win32/Kasidet.G!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 00 58 00 6c 00 35 00 6a 00 56 00 56 00 78 00 63 00 56 00 57 00 49 00 78 00 00 00 } //01 00 
		$a_01_1 = {0f b7 c9 c1 c0 07 33 c1 83 c2 02 0f b7 0a 66 85 c9 75 ed } //01 00 
		$a_03_2 = {66 83 34 48 90 01 01 41 3b 4d 0c 76 f5 90 00 } //01 00 
		$a_03_3 = {6a 9d 66 1c c7 45 90 01 01 18 6a f5 c2 c7 45 90 01 01 dd d9 57 74 c7 45 90 01 01 7b e1 06 c1 c7 45 90 01 01 c4 bc 08 56 c7 45 90 01 01 d0 f9 12 65 c7 45 90 01 01 2a d5 04 c6 c7 45 90 01 01 a5 51 06 4d c7 45 90 01 01 fb b9 12 ac c7 45 90 01 01 61 75 74 5b c7 45 90 01 01 85 9c 30 53 c7 45 90 01 01 22 d5 3e e5 90 00 } //01 00 
		$a_03_4 = {68 c3 f6 e6 a3 e8 90 01 04 8b f8 59 85 ff 74 68 8b 47 3c 53 56 8b 74 38 78 03 f7 8b 46 20 8b 4e 24 8b 5e 1c 03 c7 03 cf 03 df 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}