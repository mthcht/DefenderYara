
rule Rogue_Win32_FakeSmoke{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {2e 70 68 74 6d 6c 3f 67 65 74 3d fd 81 80 00 fe 25 25 5c 90 02 28 2e 65 78 65 90 00 } //01 00 
		$a_01_1 = {2f 54 52 41 4e 53 4c 41 54 45 32 00 64 6f 77 6e 6c 6f 61 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_2{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 68 74 6d 6c 3f 67 65 74 3d } //01 00 
		$a_01_1 = {2f 54 52 41 4e 53 4c 41 54 45 32 00 64 6f 77 6e 6c 6f 61 64 00 } //01 00 
		$a_01_2 = {56 69 72 69 69 20 50 72 6f 74 65 63 74 69 6f 6e } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_3{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {8a 14 39 03 c6 30 10 46 41 3b 74 24 10 72 e5 } //01 00 
		$a_01_1 = {25 78 73 70 79 77 61 72 65 25 64 } //01 00 
		$a_01_2 = {25 78 73 70 61 72 73 65 25 64 } //01 00 
		$a_01_3 = {69 64 3d 25 73 26 68 61 73 68 3d } //01 00 
		$a_01_4 = {41 72 6d 6f 72 53 68 69 65 6c 64 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_4{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {44 6f 77 6e 6c 6f 61 64 69 6e 67 20 57 69 6e 90 02 01 90 03 08 07 42 6c 75 65 53 6f 66 74 46 69 67 68 74 65 72 00 90 00 } //01 00 
		$a_01_1 = {2f 64 6f 77 6e 6c 6f 61 64 2e 70 68 70 3f 73 3d } //01 00 
		$a_01_2 = {2f 64 6f 77 6e 6c 6f 61 64 2e 70 68 70 3f 70 3d } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_5{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {20 53 65 63 75 72 69 74 79 20 53 65 72 76 69 63 65 00 49 6e 73 74 61 6c 6c 00 53 74 61 72 74 90 09 20 00 90 02 19 53 76 63 2e 65 78 65 90 00 } //01 00 
		$a_01_1 = {31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 00 } //01 00 
		$a_03_2 = {56 69 73 69 74 20 74 68 65 20 90 02 10 20 73 69 74 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_6{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {2e 68 74 6d 6c 3f 67 65 74 3d fd 81 80 00 } //01 00 
		$a_03_1 = {2f 54 52 41 4e 53 4c 41 54 45 00 64 6f 77 6e 6c 6f 61 64 00 fe 25 25 5c 90 02 28 2e 65 78 65 90 00 } //01 00 
		$a_03_2 = {2f 54 52 41 4e 53 4c 41 54 45 32 00 64 6f 77 6e 6c 6f 61 64 5f 71 75 69 65 74 00 fe 25 25 5c 90 02 28 2e 65 78 65 90 00 } //01 00 
		$a_03_3 = {2f 54 52 41 4e 53 4c 41 54 45 32 00 64 6f 77 6e 6c 6f 61 64 00 fe 25 25 5c 90 02 28 2e 65 78 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_7{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 6f 6b 69 65 73 68 6c 64 00 } //01 00 
		$a_01_1 = {6e 6f 61 64 77 61 72 65 34 5f 30 34 30 33 31 30 2e 6e 61 00 } //01 00 
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 41 6e 74 69 2d 56 69 72 75 73 20 45 6c 69 74 65 } //01 00 
		$a_00_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 61 00 64 00 77 00 70 00 72 00 6f 00 2e 00 61 00 76 00 65 00 6c 00 69 00 74 00 65 00 2e 00 68 00 6f 00 70 00 2e 00 63 00 6c 00 69 00 63 00 6b 00 62 00 61 00 6e 00 6b 00 2e 00 6e 00 65 00 74 00 2f 00 3f 00 6d 00 6f 00 64 00 65 00 3d 00 70 00 } //01 00 
		$a_01_4 = {83 f8 ff bb 01 00 00 00 74 08 89 9e a0 01 00 00 eb 06 89 be a0 01 00 00 55 8b ce } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_8{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {7b 31 31 62 35 32 62 32 36 2d 65 62 64 33 2d 34 61 63 65 2d 61 37 38 37 2d 63 63 39 66 34 66 63 62 62 64 31 65 7d } //01 00 
		$a_01_1 = {7b 65 65 66 62 30 63 34 35 2d 63 38 66 39 2d 34 35 64 66 2d 39 35 36 34 2d 37 62 36 65 38 32 37 38 66 31 66 61 7d } //01 00 
		$a_01_2 = {39 31 2e 32 31 32 2e 31 32 37 2e 31 33 35 } //01 00 
		$a_01_3 = {53 6f 66 74 43 6f 70 } //01 00 
		$a_01_4 = {77 77 77 2e 73 6f 66 74 2d 63 6f 70 2e 63 6f 6d } //01 00 
		$a_01_5 = {2f 73 6f 66 74 63 6f 70 2e 70 68 70 3f } //01 00 
		$a_01_6 = {25 73 73 3d 25 73 00 } //01 00 
		$a_01_7 = {25 73 70 3d 25 73 00 } //01 00 
		$a_01_8 = {25 73 64 31 3d 25 73 00 } //01 00 
		$a_01_9 = {47 45 54 00 2e 65 78 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_9{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 06 00 00 0b 00 "
		
	strings :
		$a_03_0 = {2e 68 74 6d 3f 67 65 74 3d fd 81 80 00 20 ff a8 80 00 2f 54 52 41 4e 53 4c 41 54 45 00 64 6f 77 6e 6c 6f 61 64 00 fe 25 25 5c 90 02 28 2e 65 78 65 90 00 } //0b 00 
		$a_03_1 = {2e 70 68 70 3f 67 65 74 3d fd 81 80 00 20 ff a8 80 00 2f 54 52 41 4e 53 4c 41 54 45 00 64 6f 77 6e 6c 6f 61 64 00 fe 25 25 5c 90 02 28 2e 65 78 65 90 00 } //0a 00 
		$a_01_2 = {2e 70 68 74 6d 6c 3f 67 65 74 3d fd 81 80 00 } //01 00 
		$a_03_3 = {2f 54 52 41 4e 53 4c 41 54 45 00 64 6f 77 6e 6c 6f 61 64 00 fe 25 25 5c 90 02 28 2e 65 78 65 90 00 } //01 00 
		$a_03_4 = {2f 54 52 41 4e 53 4c 41 54 45 32 00 64 6f 77 6e 6c 6f 61 64 5f 71 75 69 65 74 00 fe 25 25 5c 90 02 28 2e 65 78 65 90 00 } //01 00 
		$a_03_5 = {2f 54 52 41 4e 53 4c 41 54 45 32 00 64 6f 77 6e 6c 6f 61 64 00 fe 25 25 5c 90 02 28 2e 65 78 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_10{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 65 72 73 6f 6e 6e 65 6c 6c 65 73 20 65 74 20 6c 27 65 78 74 65 72 6d 69 6e 61 74 69 6f 6e 20 64 65 20 76 6f 74 72 65 20 6d 61 63 68 69 6e 65 2e } //01 00 
		$a_01_1 = {75 73 65 72 5f 70 72 65 66 28 22 67 65 6e 65 72 61 6c 2e 75 73 65 72 61 67 65 6e 74 2e 65 78 74 72 61 2e 61 6e 74 69 73 70 79 61 70 70 22 2c 20 22 25 73 22 29 3b } //01 00 
		$a_01_2 = {2f 75 70 64 61 74 65 2e 70 68 70 3f 74 3d 70 72 67 26 76 3d } //01 00 
		$a_01_3 = {41 6e 6e 6f 79 69 6e 67 20 61 64 76 65 72 74 69 73 65 6d 65 6e 74 73 20 77 61 73 74 69 6e 67 20 79 6f 75 72 20 74 72 61 66 66 69 63 2e } //01 00 
		$a_01_4 = {41 67 72 65 73 73 69 76 65 20 57 65 72 62 75 6e 67 20 50 6f 70 2d 75 70 73 } //01 00 
		$a_01_5 = {52 65 67 69 73 74 65 72 20 24 50 72 6f 67 4e 61 6d 65 24 20 74 6f 20 61 63 74 69 76 61 74 65 20 70 72 6f 74 65 63 74 69 6f 6e 20 66 72 6f 6d 20 6d 61 6c 77 61 72 65 20 61 74 74 61 63 6b 73 2e } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_11{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 64 6e 6f 74 2d 61 2d 76 69 72 75 73 25 78 00 } //01 00 
		$a_01_1 = {25 64 73 70 61 6d 62 6f 74 25 78 00 } //01 00 
		$a_01_2 = {25 78 61 64 64 77 61 72 65 25 64 00 } //01 00 
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 48 61 72 6d 46 75 6c 6c 20 53 6f 66 74 77 61 72 65 00 } //01 00 
		$a_01_4 = {25 73 2f 3f 63 75 72 72 65 6e 74 5f 76 65 72 73 69 6f 6e 3d 25 73 26 69 64 3d 25 73 00 } //01 00 
		$a_01_5 = {25 73 2f 72 65 70 6f 72 74 3f 69 64 3d 25 73 26 63 75 72 72 65 6e 74 5f 76 65 72 73 69 6f 6e 3d 00 } //01 00 
		$a_01_6 = {49 00 74 00 20 00 63 00 61 00 6e 00 20 00 68 00 61 00 70 00 70 00 65 00 6e 00 64 00 20 00 62 00 65 00 63 00 61 00 75 00 73 00 65 00 20 00 74 00 68 00 69 00 73 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 69 00 73 00 20 00 69 00 6e 00 66 00 65 00 63 00 74 00 65 00 64 00 20 00 62 00 79 00 20 00 76 00 69 00 72 00 } //01 00 
		$a_01_7 = {77 00 73 00 63 00 75 00 69 00 2e 00 63 00 70 00 6c 00 } //01 00 
		$a_03_8 = {33 c0 50 50 68 1f 00 02 00 50 50 56 68 01 00 00 80 8d 4d 90 01 01 89 45 90 01 01 e8 90 01 04 85 c0 8b 7d 90 01 01 75 18 6a 01 57 68 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_12{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {42 6c 75 65 53 6f 66 74 20 90 04 07 04 2e 30 2d 39 90 00 } //01 00 
		$a_01_1 = {53 65 74 75 70 3f 00 54 68 65 20 63 6f 72 65 20 66 69 6c 65 73 20 72 65 71 75 69 72 65 64 20 74 6f 20 75 73 65 } //01 00 
		$a_03_2 = {49 6e 73 74 61 6c 6c 69 6e 67 20 61 6e 64 20 75 73 69 6e 67 20 6f 66 20 74 68 65 20 53 6f 66 74 77 61 72 65 20 73 69 67 6e 69 66 69 65 73 20 74 68 65 20 55 73 65 72 20 61 63 63 65 70 74 90 0e 02 00 61 6c 6c 20 63 6f 6e 64 69 74 69 6f 6e 73 20 6f 66 20 74 68 65 20 4c 69 63 65 6e 63 65 2e 90 00 } //01 00 
		$a_03_3 = {41 6e 79 20 6f 66 20 61 66 6f 72 65 63 69 74 65 64 20 61 63 74 69 6f 6e 73 20 6e 65 65 64 20 77 72 69 74 74 65 6e 20 70 65 72 6d 69 73 73 69 6f 6e 20 6f 66 20 74 68 65 90 0e 02 00 63 6f 70 79 72 69 67 68 74 20 6f 77 6e 65 72 2e 90 00 } //01 00 
		$a_03_4 = {20 53 65 63 75 72 69 74 79 20 53 65 72 76 69 63 65 00 49 6e 73 74 61 6c 6c 00 53 74 61 72 74 90 09 20 00 90 02 19 53 76 63 2e 65 78 65 90 00 } //01 00 
		$a_03_5 = {2d 20 4e 6f 20 70 65 72 73 6f 6e 20 6f 72 20 63 6f 6d 70 61 6e 79 20 6d 61 79 20 64 69 73 74 72 69 62 75 74 65 20 64 69 73 69 6e 74 65 67 72 61 74 65 64 20 70 61 72 74 73 90 0e 10 00 6f 66 20 74 68 65 20 70 61 63 6b 61 67 65 2e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_13{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 04 00 "
		
	strings :
		$a_03_0 = {83 f8 64 72 90 01 01 5f c7 86 06 02 00 00 77 66 44 55 c7 06 45 47 46 45 90 00 } //02 00 
		$a_00_1 = {5f 5f 53 49 47 4e 5f 54 48 49 53 5f 46 49 4c 45 5f 49 53 5f 49 4e 46 45 43 54 45 44 } //02 00 
		$a_00_2 = {5f 53 41 59 5f 4d 41 47 49 43 5f 57 4f 52 44 5f 3a 5f 44 45 4c 45 54 45 5f } //02 00 
		$a_00_3 = {68 74 74 70 3a 2f 2f 25 73 2f 70 72 6f 74 65 63 74 69 6f 6e 2f 3f 69 3d 25 73 } //02 00 
		$a_00_4 = {5f 77 6f 72 6b 5c 56 50 72 6f 74 65 63 74 6f 72 5c 52 65 6c 65 61 73 65 5c } //01 00 
		$a_00_5 = {48 00 61 00 72 00 6d 00 66 00 75 00 6c 00 20 00 6d 00 65 00 6d 00 6f 00 72 00 79 00 20 00 69 00 6e 00 66 00 65 00 63 00 74 00 69 00 6f 00 6e 00 20 00 77 00 61 00 73 00 20 00 64 00 65 00 74 00 65 00 63 00 74 00 65 00 64 00 2e 00 } //01 00 
		$a_00_6 = {59 00 6f 00 75 00 72 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 69 00 73 00 20 00 69 00 6e 00 66 00 65 00 63 00 74 00 65 00 64 00 20 00 77 00 69 00 74 00 68 00 20 00 73 00 70 00 79 00 77 00 61 00 72 00 65 00 2e 00 49 00 74 00 20 00 63 00 6f 00 75 00 6c 00 64 00 20 00 64 00 61 00 6d 00 61 00 67 00 65 00 20 00 79 00 6f 00 75 00 72 00 20 00 63 00 72 00 69 00 74 00 69 00 63 00 61 00 6c 00 20 00 66 00 69 00 6c 00 65 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_14{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 10 00 00 02 00 "
		
	strings :
		$a_00_0 = {73 76 63 2e 65 78 65 20 5b 2d 69 6e 73 74 61 6c 6c 5d 20 7c 20 5b 2d 75 6e 69 6e 73 74 61 6c 6c 5d 20 7c 20 5b 2d 73 76 63 5d } //02 00 
		$a_00_1 = {2d 63 6f 6e 73 6f 6c 65 00 } //01 00 
		$a_00_2 = {00 41 6e 74 69 73 70 79 53 76 63 00 } //01 00 
		$a_00_3 = {00 25 73 20 25 73 00 } //01 00 
		$a_00_4 = {00 25 73 25 30 38 58 25 30 38 58 00 } //01 00 
		$a_00_5 = {2f 75 70 64 61 74 65 2e 70 68 70 3f 74 3d 70 72 67 26 76 3d 00 } //01 00 
		$a_00_6 = {2f 75 70 64 61 74 65 2e 70 68 70 3f 74 3d 64 61 74 26 76 3d 00 } //01 00 
		$a_00_7 = {43 41 6e 74 69 53 70 79 43 6f 72 65 00 } //02 00 
		$a_01_8 = {75 73 65 72 5f 70 72 65 66 28 22 67 65 6e 65 72 61 6c 2e 75 73 65 72 61 67 65 6e 74 2e 65 78 74 72 61 2e 61 6e 74 69 73 70 79 61 70 70 22 2c 20 22 25 73 22 29 3b } //01 00 
		$a_00_9 = {2d 75 72 6c 20 22 25 73 25 73 3f 25 73 25 73 26 69 64 3d } //01 00 
		$a_00_10 = {73 79 73 74 65 6d 5f 73 63 61 6e 5f 6f 6e 5f 73 74 61 72 74 75 70 00 } //01 00 
		$a_00_11 = {6c 61 73 74 5f 73 63 61 6e 00 } //01 00 
		$a_00_12 = {69 6e 74 65 72 6e 65 74 5f 61 67 65 6e 74 73 00 } //01 00 
		$a_01_13 = {52 65 67 69 73 74 65 72 20 24 50 72 6f 67 4e 61 6d 65 24 20 74 6f 20 61 63 74 69 76 61 74 65 20 70 72 6f 74 65 63 74 69 6f 6e 20 66 72 6f 6d 20 6d 61 6c 77 61 72 65 20 61 74 74 61 63 6b 73 2e } //01 00 
		$a_01_14 = {41 6e 6e 6f 79 69 6e 67 20 61 64 76 65 72 74 69 73 65 6d 65 6e 74 73 20 77 61 73 74 69 6e 67 20 79 6f 75 72 20 74 72 61 66 66 69 63 2e } //01 00 
		$a_01_15 = {41 67 72 65 73 73 69 76 65 20 57 65 72 62 75 6e 67 20 50 6f 70 2d 75 70 73 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_15{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 00 61 00 79 00 20 00 6c 00 65 00 61 00 64 00 20 00 74 00 6f 00 20 00 74 00 68 00 65 00 20 00 6c 00 65 00 61 00 6b 00 20 00 6f 00 66 00 20 00 79 00 6f 00 75 00 72 00 20 00 70 00 65 00 72 00 73 00 6f 00 6e 00 61 00 6c 00 20 00 64 00 61 00 74 00 61 00 20 00 61 00 6e 00 64 00 20 00 74 00 68 00 65 00 20 00 65 00 78 00 74 00 65 00 72 00 6d 00 69 00 6e 00 61 00 74 00 69 00 6f 00 6e 00 20 00 6f 00 66 00 20 00 79 00 6f 00 75 00 72 00 20 00 6d 00 61 00 63 00 68 00 69 00 6e 00 65 00 } //01 00 
		$a_01_1 = {75 73 65 72 5f 70 72 65 66 28 22 67 65 6e 65 72 61 6c 2e 75 73 65 72 61 67 65 6e 74 2e 65 78 74 72 61 2e 61 6e 74 69 73 70 79 61 70 70 22 2c 20 22 25 73 22 29 3b } //01 00 
		$a_01_2 = {2f 75 70 64 61 74 65 2e 70 68 70 3f 74 3d 70 72 67 26 76 3d } //01 00 
		$a_01_3 = {77 00 69 00 74 00 68 00 20 00 6e 00 6f 00 20 00 72 00 69 00 73 00 6b 00 20 00 6f 00 66 00 20 00 69 00 6e 00 66 00 65 00 63 00 74 00 69 00 6f 00 6e 00 20 00 66 00 6f 00 72 00 20 00 79 00 6f 00 75 00 20 00 50 00 43 00 2e 00 } //01 00 
		$a_01_4 = {41 00 67 00 72 00 65 00 73 00 73 00 69 00 76 00 65 00 20 00 61 00 64 00 76 00 65 00 72 00 74 00 69 00 73 00 69 00 6e 00 67 00 20 00 70 00 6f 00 70 00 75 00 70 00 73 00 00 00 } //01 00 
		$a_01_5 = {45 00 6e 00 61 00 62 00 6c 00 65 00 20 00 64 00 61 00 74 00 61 00 20 00 65 00 78 00 63 00 68 00 61 00 6e 00 67 00 65 00 20 00 66 00 6f 00 72 00 20 00 41 00 6e 00 74 00 69 00 53 00 70 00 79 00 55 00 49 00 20 00 73 00 65 00 72 00 76 00 65 00 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_16{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 2e 00 00 01 00 "
		
	strings :
		$a_01_0 = {26 43 6c 6f 73 65 00 53 61 66 65 46 69 67 68 74 65 72 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_1 = {26 43 6c 6f 73 65 00 54 72 75 73 74 43 6f 70 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_2 = {26 43 6c 6f 73 65 00 54 72 75 73 74 53 6f 6c 64 69 65 72 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_3 = {26 43 6c 6f 73 65 00 54 72 75 73 74 46 69 67 68 74 65 72 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_4 = {26 43 6c 6f 73 65 00 53 6f 66 74 53 6f 6c 64 69 65 72 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_5 = {26 43 6c 6f 73 65 00 53 6f 66 74 43 6f 70 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_6 = {26 43 6c 6f 73 65 00 54 52 45 20 41 6e 74 69 56 69 72 75 73 20 32 2e 30 2e 30 2e 31 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_7 = {26 43 6c 6f 73 65 00 53 6f 66 74 56 65 74 65 72 61 6e 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_8 = {26 43 6c 6f 73 65 00 53 6f 66 74 53 74 72 6f 6e 67 68 6f 6c 64 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_9 = {26 43 6c 6f 73 65 00 53 68 69 65 6c 64 53 61 66 65 6e 65 73 73 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_10 = {26 43 6c 6f 73 65 00 53 6f 66 74 42 61 72 72 69 65 72 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_11 = {26 43 6c 6f 73 65 00 42 6c 6f 63 6b 57 61 74 63 68 65 72 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_12 = {26 43 6c 6f 73 65 00 42 6c 6f 63 6b 53 63 61 6e 6e 65 72 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_13 = {26 43 6c 6f 73 65 00 41 6e 74 69 41 49 44 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_14 = {26 43 6c 6f 73 65 00 4c 69 6e 6b 53 61 66 65 6e 65 73 73 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_15 = {26 43 6c 6f 73 65 00 53 69 74 65 56 69 6c 6c 61 69 6e 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_16 = {26 43 6c 6f 73 65 00 53 65 63 75 72 65 4b 65 65 70 65 72 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_17 = {26 43 6c 6f 73 65 00 4b 65 65 70 43 6f 70 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_18 = {26 43 6c 6f 73 65 00 52 45 41 6e 74 69 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_19 = {26 43 6c 6f 73 65 00 52 45 53 70 79 57 61 72 65 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_20 = {26 43 6c 6f 73 65 00 41 6e 74 69 41 64 64 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_21 = {26 43 6c 6f 73 65 00 41 6e 74 69 4b 65 65 70 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_22 = {26 43 6c 6f 73 65 00 41 6e 74 69 54 72 6f 79 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_23 = {26 43 6c 6f 73 65 00 53 69 74 65 41 64 77 61 72 65 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_24 = {26 43 6c 6f 73 65 00 49 47 75 61 72 64 50 63 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_25 = {26 43 6c 6f 73 65 00 47 75 61 72 64 50 63 73 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_26 = {26 43 6c 6f 73 65 00 54 68 65 44 65 66 65 6e 64 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_27 = {26 43 6c 6f 73 65 00 53 79 73 44 65 66 65 6e 63 65 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_28 = {26 43 6c 6f 73 65 00 50 72 6f 74 65 63 74 50 63 73 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_29 = {26 43 6c 6f 73 65 00 41 50 43 50 72 6f 74 65 63 74 20 31 2e 32 2e 30 2e 36 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_30 = {26 43 6c 6f 73 65 00 47 72 65 61 74 44 65 66 65 6e 64 65 72 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_31 = {26 43 6c 6f 73 65 00 50 63 73 50 72 6f 74 65 63 74 6f 72 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_32 = {50 43 70 72 6f 74 65 63 74 61 72 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_33 = {41 50 63 44 65 66 65 6e 64 65 72 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_34 = {53 79 73 50 72 6f 74 65 63 74 6f 72 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_35 = {49 6e 53 79 73 53 65 63 75 72 65 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_36 = {53 79 73 44 65 66 65 6e 64 65 72 73 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_37 = {26 43 6c 6f 73 65 00 44 65 66 65 6e 64 41 50 63 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_38 = {26 43 6c 6f 73 65 00 41 50 63 53 65 63 75 72 65 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_39 = {26 43 6c 6f 73 65 00 50 63 73 53 65 63 75 72 65 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_40 = {26 43 6c 6f 73 65 00 41 50 63 53 61 66 65 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_41 = {26 43 6c 6f 73 65 00 50 63 53 65 63 75 72 65 4e 65 74 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_42 = {26 43 6c 6f 73 65 00 4d 79 50 63 53 65 63 75 72 65 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_43 = {26 43 6c 6f 73 65 00 47 75 61 72 64 57 57 57 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_44 = {26 43 6c 6f 73 65 00 53 61 66 65 50 63 41 76 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_01_45 = {26 43 6c 6f 73 65 00 53 65 63 75 72 65 50 63 41 76 20 32 2e 32 2e 30 2e 35 33 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_17{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 2d 00 00 01 00 "
		
	strings :
		$a_02_0 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 61 90 03 02 04 76 65 66 65 74 79 4b 65 65 70 65 72 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 90 00 } //01 00 
		$a_00_1 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 6f 66 74 53 61 66 65 6e 65 73 73 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_2 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 54 72 75 73 74 57 61 72 72 69 6f 72 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_3 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 61 76 65 44 65 66 65 6e 64 65 72 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_4 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 61 76 65 41 72 6d 6f 72 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_5 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 65 63 75 72 69 74 79 46 69 67 68 74 65 72 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_6 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 65 63 75 72 65 56 65 74 65 72 61 6e 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_7 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 65 63 75 72 69 74 79 53 6f 6c 64 69 65 72 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_8 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 65 63 75 72 65 57 61 72 72 69 6f 72 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_9 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 54 72 75 73 74 43 6f 70 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_10 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 65 63 75 72 65 46 69 67 68 74 65 72 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_11 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 41 6e 74 69 41 49 44 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_12 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 4c 69 6e 6b 53 61 66 65 6e 65 73 73 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_13 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 69 74 65 56 69 6c 6c 61 69 6e 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_14 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 65 63 75 72 65 4b 65 65 70 65 72 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_15 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 4b 65 65 70 43 6f 70 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_16 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 52 45 41 6e 74 69 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_17 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 52 45 53 70 79 57 61 72 65 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_18 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 41 6e 74 69 41 64 64 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_19 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 41 6e 74 69 4b 65 65 70 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_20 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 41 6e 74 69 54 72 6f 79 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_21 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 69 74 65 41 64 77 61 72 65 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_22 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 49 47 75 61 72 64 50 63 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_23 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 47 75 61 72 64 50 63 73 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_24 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 54 68 65 44 65 66 65 6e 64 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_25 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 79 73 44 65 66 65 6e 63 65 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_26 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 50 72 6f 74 65 63 74 50 63 73 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_27 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 41 50 43 50 72 6f 74 65 63 74 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_28 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 47 72 65 61 74 44 65 66 65 6e 64 65 72 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_29 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 50 63 73 50 72 6f 74 65 63 74 6f 72 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_30 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 50 43 70 72 6f 74 65 63 74 61 72 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_31 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 41 50 63 44 65 66 65 6e 64 65 72 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_32 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 79 73 50 72 6f 74 65 63 74 6f 72 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_33 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 49 6e 53 79 73 53 65 63 75 72 65 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_34 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 79 73 44 65 66 65 6e 64 65 72 73 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_35 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 44 65 66 65 6e 64 41 50 63 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_36 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 41 50 63 53 65 63 75 72 65 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_37 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 50 63 73 53 65 63 75 72 65 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_38 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 41 50 63 53 61 66 65 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_39 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 50 63 53 65 63 75 72 65 4e 65 74 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_40 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 4d 79 50 63 53 65 63 75 72 65 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_41 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 47 75 61 72 64 57 57 57 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_42 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 61 66 65 50 63 41 76 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_43 = {43 6c 69 63 6b 20 4e 65 78 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 2e 00 26 43 6c 6f 73 65 00 53 65 63 75 72 65 50 63 41 76 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //01 00 
		$a_00_44 = {3a 20 43 6f 6d 70 6c 65 74 65 64 00 26 43 6c 6f 73 65 00 56 69 72 75 73 50 72 6f 74 65 63 74 6f 72 00 fe 24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakeSmoke_18{
	meta:
		description = "Rogue:Win32/FakeSmoke,SIGNATURE_TYPE_PEHSTR,15 00 15 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {25 73 5c 25 73 20 53 6f 66 74 77 61 72 65 5c 25 73 2e 65 78 65 00 } //0a 00 
		$a_01_1 = {74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 74 20 2f 69 6d 20 25 73 2e 65 78 65 00 } //01 00 
		$a_01_2 = {31 2e 32 2e 30 2e 36 34 00 } //01 00 
		$a_01_3 = {32 2e 34 2e 30 2e 37 30 00 } //00 00 
	condition:
		any of ($a_*)
 
}