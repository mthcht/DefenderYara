
rule Backdoor_Win32_Buzus_C{
	meta:
		description = "Backdoor:Win32/Buzus.C,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {75 3d 6a 01 68 90 01 02 00 30 68 90 01 02 00 30 8d 85 7c ff ff ff 50 b9 02 00 00 00 ba 90 01 02 00 30 8b 45 fc e8 90 01 02 ff ff 8b 85 7c ff ff ff e8 90 01 02 ff ff 50 68 90 01 02 00 30 6a 00 e8 90 01 02 ff ff 8b 45 f4 ba 90 01 02 00 30 e8 90 01 02 ff ff 75 21 6a 01 68 90 01 02 00 30 68 90 01 02 00 30 8b 45 fc e8 90 01 02 ff ff 50 68 90 01 02 00 30 6a 00 e8 90 01 02 ff ff 8b 45 f4 ba 90 01 02 00 30 e8 90 01 02 ff ff 75 13 90 00 } //01 00 
		$a_02_1 = {45 78 65 63 75 74 65 46 69 6c 65 90 02 10 53 68 75 74 64 6f 77 6e 90 02 10 53 65 53 68 75 74 64 6f 77 6e 50 72 69 76 69 6c 65 67 65 90 02 10 4c 6f 67 6f 66 66 90 02 10 52 65 62 6f 6f 74 90 02 10 53 63 72 65 65 6e 73 68 6f 74 90 02 10 2e 70 6d 62 90 02 10 57 65 62 63 61 6d 90 02 10 43 61 70 74 75 72 65 57 69 6e 64 6f 77 90 00 } //01 00 
		$a_02_2 = {47 65 74 4f 6e 6c 69 6e 65 4c 6f 67 67 65 72 53 74 61 74 65 90 02 05 47 65 74 50 6c 75 67 69 6e 44 69 72 65 63 74 6f 72 79 90 02 05 53 65 74 4f 6e 6c 69 6e 65 4c 6f 67 67 65 72 53 74 61 74 65 90 00 } //01 00 
		$a_02_3 = {54 49 45 66 6d 66 75 66 4c 66 7a 42 90 02 10 74 69 6d 78 62 71 6a 2f 65 6d 6d 90 02 10 63 61 70 47 65 74 44 72 69 76 65 72 44 65 73 63 72 69 70 74 69 6f 6e 41 90 02 10 49 73 4e 54 41 64 6d 69 6e 90 02 10 69 6f 63 74 6c 73 6f 63 6b 65 74 90 02 10 4d 61 6b 65 53 75 72 65 44 69 72 65 63 74 6f 72 79 50 61 74 68 45 78 69 73 74 73 90 02 10 2d 73 90 02 20 53 6c 68 53 6c 68 20 46 69 6e 61 6c 90 02 20 53 65 72 76 65 72 53 74 61 72 74 75 70 90 02 ff 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 5c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}