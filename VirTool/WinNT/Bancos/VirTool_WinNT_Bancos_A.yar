
rule VirTool_WinNT_Bancos_A{
	meta:
		description = "VirTool:WinNT/Bancos.A,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {68 00 10 00 00 6a 00 6a 04 6a 00 6a 00 8d 4d 90 01 01 51 8d 95 90 01 01 ff ff ff 52 68 00 00 01 00 8d 85 90 01 01 ff ff ff 50 ff 15 90 01 04 89 85 90 01 01 ff ff ff 83 bd 90 01 01 ff ff ff 00 7c 0d 8b 8d 90 01 01 ff ff ff 51 ff 15 90 00 } //01 00 
		$a_00_1 = {5c 00 3f 00 3f 00 5c 00 43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4c 00 69 00 76 00 65 00 20 00 54 00 6f 00 6f 00 6c 00 62 00 61 00 72 00 5c 00 6d 00 73 00 6e 00 74 00 62 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_00_2 = {5c 00 3f 00 3f 00 5c 00 43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 53 00 63 00 50 00 61 00 64 00 5c 00 73 00 63 00 70 00 4c 00 49 00 42 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_00_3 = {5c 00 3f 00 3f 00 5c 00 43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 47 00 62 00 50 00 6c 00 75 00 67 00 69 00 6e 00 5c 00 67 00 62 00 70 00 64 00 69 00 73 00 74 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_00_4 = {5c 00 3f 00 3f 00 5c 00 43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 67 00 62 00 70 00 6b 00 6d 00 2e 00 73 00 79 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}