
rule Virus_Win32_Virut_gen_AI{
	meta:
		description = "Virus:Win32/Virut.gen!AI,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {3d 45 58 45 00 74 90 01 01 3d 53 43 52 00 0f 90 01 02 ff ff ff 8b 03 3d 57 49 4e 43 0f 90 01 02 ff ff ff 3d 57 43 55 4e 0f 90 01 02 ff ff ff 3d 57 43 33 32 0f 90 01 02 ff ff ff 3d 50 53 54 4f 0f 90 01 02 ff ff ff 90 00 } //01 00 
		$a_02_1 = {66 81 3e 4d 5a 0f 85 90 01 02 00 00 8b 5e 3c 03 de 66 81 3b 50 45 0f 85 90 01 02 00 00 f7 43 16 00 20 00 00 0f 85 90 01 02 00 00 f6 43 5c 02 0f 84 90 01 02 00 00 81 7e 20 20 20 20 20 0f 84 90 01 02 00 00 e8 90 01 02 ff ff 0f 82 90 01 02 00 00 8b 42 08 8b 4a 10 90 00 } //01 00 
		$a_02_2 = {3d 10 00 2a 00 75 90 01 01 66 81 7c 24 0c 6c 71 75 90 01 01 60 e8 90 01 02 ff ff 75 90 01 01 e8 90 01 02 ff ff e8 90 01 02 ff ff 61 2e ff 2d 78 56 34 12 b8 90 01 04 60 e8 90 01 02 ff ff 75 90 01 01 8b 44 24 30 8d b5 90 01 04 8b 50 08 66 81 3a 06 02 73 90 01 01 56 68 00 00 ff 00 8b c4 6a 00 52 50 ff 95 90 01 04 83 c4 08 81 3e 5c 3f 3f 5c 75 03 90 00 } //01 00 
		$a_02_3 = {81 3e 50 52 49 56 0f 85 90 01 02 00 00 83 c6 08 ac 3c 0d 0f 84 90 01 02 00 00 3c 20 75 90 01 01 ac 3c 3a 0f 85 90 01 02 00 00 ad 0d 20 20 20 20 3d 21 67 65 74 75 90 01 01 ac 3c 20 75 90 01 01 81 7e ff 20 68 74 74 75 90 01 01 81 7e 03 70 3a 2f 2f 75 90 01 01 c6 47 ff 00 0f 31 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}