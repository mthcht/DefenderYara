
rule VirTool_Win64_CobaltStrike_D{
	meta:
		description = "VirTool:Win64/CobaltStrike.D,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {ff e0 58 5f 5a 8b 12 eb 86 5b 80 7e 10 00 75 3b c6 46 10 01 68 a6 95 bd 9d ff d3 3c 06 7c 1a } //01 00 
		$a_01_1 = {31 c9 51 51 ff 76 08 ff 36 51 51 68 38 68 0d 16 ff d3 c9 } //01 00 
		$a_01_2 = {e8 00 00 00 00 58 83 c0 25 83 ec 08 89 e2 c7 42 04 33 00 00 00 89 02 e8 09 00 00 00 } //01 00 
		$a_01_3 = {48 31 d2 48 8b 0e 41 ba c8 38 a4 40 ff d5 48 85 c0 74 0c } //01 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win64_CobaltStrike_D_2{
	meta:
		description = "VirTool:Win64/CobaltStrike.D,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 b9 00 10 00 00 4c 8d 87 80 00 00 00 48 89 d6 c7 44 24 20 04 00 00 00 31 d2 ff 15 90 01 04 48 89 c5 48 8d 44 24 50 4d 89 e0 49 89 f9 48 89 ea 48 89 d9 48 89 44 24 20 ff 15 90 00 } //01 00 
		$a_01_1 = {c7 44 24 48 65 00 00 00 c7 44 24 40 70 00 00 00 c7 44 24 38 69 00 00 00 c7 44 24 30 70 00 00 00 } //01 00 
		$a_01_2 = {25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 4d 53 53 45 2d 25 64 2d 73 65 72 76 65 72 } //01 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win64_CobaltStrike_D_3{
	meta:
		description = "VirTool:Win64/CobaltStrike.D,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 b8 00 30 00 00 31 c9 48 89 f7 ff 15 90 01 04 48 89 c3 31 c0 39 f8 7d 16 48 89 c2 83 e2 03 41 8a 14 14 32 54 05 00 88 14 03 48 ff c0 eb e6 90 00 } //01 00 
		$a_01_1 = {c7 44 24 48 65 00 00 00 c7 44 24 40 70 00 00 00 c7 44 24 38 69 00 00 00 c7 44 24 30 70 00 00 00 } //01 00 
		$a_03_2 = {b9 60 ea 00 00 ff d3 eb f7 90 02 10 48 ff e1 90 00 } //01 00 
		$a_01_3 = {25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 4d 53 53 45 2d 25 64 2d 73 65 72 76 65 72 } //01 00 
		$a_00_4 = {78 c2 00 } //00 04 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win64_CobaltStrike_D_4{
	meta:
		description = "VirTool:Win64/CobaltStrike.D,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 ff e1 41 54 55 57 56 53 48 83 ec 40 41 b9 04 00 00 00 48 63 f2 48 89 cd 90 02 15 41 b8 00 30 00 00 90 00 } //01 00 
		$a_03_1 = {4c 8d 4c 24 3c 48 89 f2 48 89 d9 41 b8 20 00 00 00 ff 15 90 01 04 4c 8d 90 01 02 ff ff ff 49 89 d9 31 d2 31 c9 48 c7 44 24 28 00 00 00 00 c7 44 24 20 00 00 00 00 ff 15 90 01 04 90 90 48 83 c4 40 90 00 } //01 00 
		$a_01_2 = {c7 44 24 48 65 00 00 00 c7 44 24 40 70 00 00 00 c7 44 24 38 69 00 00 00 c7 44 24 30 70 00 00 00 } //01 00 
		$a_01_3 = {25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 4d 53 53 45 2d 25 64 2d 73 65 72 76 65 72 } //01 00 
		$a_00_4 = {78 c4 00 } //00 03 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win64_CobaltStrike_D_5{
	meta:
		description = "VirTool:Win64/CobaltStrike.D,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {e8 00 00 00 00 58 83 c0 25 83 ec 08 89 e2 c7 42 04 33 00 00 00 89 02 e8 09 00 00 00 } //01 00 
		$a_01_1 = {f0 e8 c8 00 00 00 41 51 41 50 52 51 56 48 31 d2 65 48 8b 52 60 48 8b 52 18 48 8b 52 20 48 8b 72 50 48 0f b7 4a 4a } //01 00 
		$a_01_2 = {48 31 d2 48 8b 0e 41 ba c8 38 a4 40 ff d5 48 85 c0 74 0c } //9c ff 
		$a_01_3 = {4d 00 61 00 6c 00 77 00 61 00 72 00 65 00 64 00 65 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 68 00 65 00 6c 00 70 00 65 00 72 00 00 00 } //9c ff 
		$a_01_4 = {4f 00 75 00 74 00 62 00 79 00 74 00 65 00 20 00 50 00 43 00 20 00 52 00 65 00 70 00 61 00 69 00 72 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win64_CobaltStrike_D_6{
	meta:
		description = "VirTool:Win64/CobaltStrike.D,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {55 89 e5 8b 45 08 5d ff e0 55 89 e5 90 02 20 c7 44 24 0c 04 00 00 00 c7 44 24 08 00 30 00 00 c7 04 24 00 00 00 00 90 00 } //01 00 
		$a_03_1 = {c7 44 24 08 20 00 00 00 89 44 24 0c ff 15 90 01 04 83 ec 10 89 90 01 01 24 0c c7 44 24 14 00 00 00 00 c7 44 24 10 00 00 00 00 c7 44 24 08 90 01 04 c7 44 24 04 00 00 00 00 c7 04 24 00 00 00 00 ff 15 90 00 } //01 00 
		$a_01_2 = {c7 44 24 24 65 00 00 00 c7 44 24 20 70 00 00 00 c7 44 24 1c 69 00 00 00 c7 44 24 18 70 00 00 00 } //01 00 
		$a_01_3 = {25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 4d 53 53 45 2d 25 64 2d 73 65 72 76 65 72 } //01 00 
		$a_00_4 = {5d 04 00 } //00 fc 
	condition:
		any of ($a_*)
 
}