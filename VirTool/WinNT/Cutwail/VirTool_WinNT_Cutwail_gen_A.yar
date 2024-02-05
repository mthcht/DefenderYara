
rule VirTool_WinNT_Cutwail_gen_A{
	meta:
		description = "VirTool:WinNT/Cutwail.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,41 00 3f 00 11 00 00 03 00 "
		
	strings :
		$a_01_0 = {73 74 61 72 74 64 72 76 2e 65 78 65 } //03 00 
		$a_01_1 = {5a 77 4f 70 65 6e 46 69 6c 65 } //03 00 
		$a_01_2 = {52 74 6c 49 6e 69 74 55 6e 69 63 6f 64 65 53 74 72 69 6e 67 } //03 00 
		$a_01_3 = {50 73 4c 6f 6f 6b 75 70 50 72 6f 63 65 73 73 42 79 50 72 6f 63 65 73 73 49 64 } //03 00 
		$a_01_4 = {4e 74 42 75 69 6c 64 4e 75 6d 62 65 72 } //03 00 
		$a_01_5 = {50 73 53 65 74 43 72 65 61 74 65 50 72 6f 63 65 73 73 4e 6f 74 69 66 79 52 6f 75 74 69 6e 65 } //03 00 
		$a_01_6 = {5a 77 57 72 69 74 65 46 69 6c 65 } //03 00 
		$a_01_7 = {5a 77 43 72 65 61 74 65 46 69 6c 65 } //03 00 
		$a_01_8 = {4b 65 42 75 67 43 68 65 63 6b 45 78 } //03 00 
		$a_01_9 = {5c 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 5c 00 4d 00 61 00 63 00 68 00 69 00 6e 00 65 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //03 00 
		$a_01_10 = {5c 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 5c 00 4d 00 61 00 63 00 68 00 69 00 6e 00 65 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 72 00 75 00 6e 00 74 00 69 00 6d 00 65 00 32 00 } //05 00 
		$a_01_11 = {72 00 75 00 6e 00 74 00 69 00 6d 00 65 00 32 00 2e 00 73 00 79 00 5f 00 } //05 00 
		$a_01_12 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 54 00 65 00 6d 00 70 00 5c 00 73 00 74 00 61 00 72 00 74 00 64 00 72 00 76 00 2e 00 65 00 78 00 65 00 } //05 00 
		$a_01_13 = {5c 00 54 00 65 00 6d 00 70 00 5c 00 73 00 74 00 61 00 72 00 74 00 64 00 72 00 76 00 2e 00 65 00 78 00 65 00 } //05 00 
		$a_01_14 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 72 00 75 00 6e 00 74 00 69 00 6d 00 65 00 32 00 2e 00 73 00 79 00 73 00 } //05 00 
		$a_01_15 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 52 00 6e 00 74 00 6d 00 32 00 } //0a 00 
		$a_02_16 = {55 8b ec 51 fa 0f 20 c0 89 45 fc 25 ff ff fe ff 0f 22 c0 8b 0d 90 01 02 01 00 8b 09 a1 90 01 01 29 01 00 8b 40 01 c7 04 81 90 01 01 1f 01 00 8b 0d 90 01 02 01 00 8b 09 a1 90 01 02 01 00 8b 40 01 c7 04 81 90 01 01 1f 01 00 8b 0d 90 01 02 01 00 8b 09 a1 90 01 02 01 00 8b 40 01 c7 04 81 90 01 01 21 01 00 8b 0d 90 01 02 01 00 8b 09 a1 90 01 01 29 01 00 8b 40 01 c7 04 81 90 01 01 23 01 00 8b 0d 90 01 02 01 00 a1 90 01 02 01 00 8b 40 01 8b 09 c7 04 81 90 01 01 24 01 00 8b 45 fc 0f 22 c0 fb c9 c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}