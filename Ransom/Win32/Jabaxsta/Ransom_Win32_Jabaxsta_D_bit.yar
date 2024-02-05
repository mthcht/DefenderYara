
rule Ransom_Win32_Jabaxsta_D_bit{
	meta:
		description = "Ransom:Win32/Jabaxsta.D!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b c1 99 f7 ff 85 d2 75 01 46 8b c1 99 f7 fb 8a 82 90 01 04 32 06 46 88 81 90 01 04 8b c1 41 81 f9 90 01 02 00 00 72 d7 90 00 } //01 00 
		$a_03_1 = {8b c1 99 f7 fe 8a 82 90 01 04 30 81 90 01 04 41 83 f9 90 01 01 7c dc 90 00 } //01 00 
		$a_01_2 = {65 66 6b 72 6d 34 74 67 6b 6c 34 79 74 67 34 } //01 00 
		$a_01_3 = {42 54 43 20 77 61 6c 6c 65 74 3a 00 52 79 75 6b } //01 00 
		$a_01_4 = {55 00 4e 00 49 00 51 00 55 00 45 00 5f 00 49 00 44 00 5f 00 44 00 4f 00 5f 00 4e 00 4f 00 54 00 5f 00 52 00 45 00 4d 00 4f 00 56 00 45 00 } //01 00 
		$a_01_5 = {52 00 79 00 75 00 6b 00 52 00 65 00 61 00 64 00 4d 00 65 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_03_6 = {63 00 73 00 72 00 73 00 73 00 2e 00 65 00 78 00 65 00 90 02 10 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 90 02 10 6c 00 73 00 61 00 61 00 73 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_01_7 = {74 61 70 53 72 5a 64 6a 66 4e 76 46 4d 64 6d 5a 79 6f 50 66 4f 4c 53 52 51 55 70 75 6c 6e 77 75 57 57 67 57 6f 76 44 77 41 67 46 5a 43 41 61 6e 6f 70 7a 65 66 71 45 54 5a 56 55 61 42 46 4a 76 68 6b 4c 57 42 78 42 70 4b 58 41 76 61 5a 61 73 50 6b 51 41 63 49 76 75 69 64 70 45 77 62 } //00 00 
	condition:
		any of ($a_*)
 
}