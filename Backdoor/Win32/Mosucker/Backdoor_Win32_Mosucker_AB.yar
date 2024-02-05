
rule Backdoor_Win32_Mosucker_AB{
	meta:
		description = "Backdoor:Win32/Mosucker.AB,SIGNATURE_TYPE_PEHSTR,ffffff9b 00 ffffff91 00 1f 00 00 32 00 "
		
	strings :
		$a_01_0 = {4d 00 6f 00 53 00 75 00 63 00 6b 00 65 00 72 00 } //32 00 
		$a_01_1 = {54 00 68 00 61 00 6e 00 78 00 20 00 66 00 6f 00 72 00 20 00 75 00 73 00 69 00 6e 00 67 00 20 00 4d 00 6f 00 53 00 75 00 63 00 6b 00 65 00 72 00 2e 00 20 00 48 00 61 00 76 00 65 00 20 00 61 00 20 00 6e 00 69 00 63 00 65 00 20 00 64 00 61 00 79 00 2e 00 } //32 00 
		$a_01_2 = {4d 00 6f 00 53 00 75 00 63 00 6b 00 65 00 72 00 2d 00 73 00 65 00 72 00 76 00 65 00 72 00 20 00 69 00 73 00 20 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 21 00 20 00 56 00 69 00 63 00 74 00 69 00 6d 00 3d 00 25 00 56 00 4e 00 2c 00 20 00 49 00 50 00 3d 00 25 00 49 00 50 00 2c 00 20 00 50 00 6f 00 72 00 74 00 3d 00 25 00 50 00 54 00 2c 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 3d 00 25 00 50 00 57 00 2e 00 20 00 54 00 68 00 69 00 73 00 20 00 6d 00 65 00 73 00 73 00 61 00 67 00 65 00 20 00 67 00 6f 00 65 00 73 00 20 00 74 00 6f 00 3a 00 20 00 25 00 41 00 55 00 } //0a 00 
		$a_01_3 = {77 00 69 00 6e 00 73 00 74 00 61 00 72 00 74 00 2e 00 62 00 61 00 74 00 } //0a 00 
		$a_01_4 = {77 00 69 00 6e 00 69 00 6e 00 69 00 74 00 2e 00 69 00 6e 00 69 00 } //0a 00 
		$a_01_5 = {64 00 65 00 6c 00 20 00 25 00 77 00 69 00 6e 00 64 00 69 00 72 00 25 00 5c 00 74 00 65 00 6d 00 70 00 2e 00 62 00 61 00 74 00 } //0a 00 
		$a_01_6 = {61 00 40 00 62 00 63 00 2e 00 64 00 65 00 } //0a 00 
		$a_01_7 = {41 00 64 00 6d 00 69 00 6e 00 43 00 61 00 6e 00 4b 00 69 00 63 00 6b 00 } //05 00 
		$a_01_8 = {56 00 69 00 63 00 74 00 69 00 6d 00 20 00 6e 00 61 00 6d 00 65 00 } //05 00 
		$a_01_9 = {56 00 69 00 63 00 74 00 69 00 6d 00 27 00 73 00 20 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 77 00 69 00 6c 00 6c 00 20 00 63 00 72 00 61 00 73 00 68 00 20 00 73 00 6f 00 6f 00 6e 00 21 00 } //05 00 
		$a_01_10 = {4f 00 6e 00 6c 00 79 00 20 00 74 00 68 00 65 00 20 00 61 00 64 00 6d 00 69 00 6e 00 20 00 63 00 61 00 6e 00 20 00 63 00 6c 00 6f 00 73 00 65 00 20 00 74 00 68 00 65 00 20 00 73 00 65 00 72 00 76 00 65 00 72 00 2e 00 } //05 00 
		$a_01_11 = {43 00 3a 00 5c 00 63 00 6f 00 6e 00 5c 00 63 00 6f 00 6e 00 } //05 00 
		$a_01_12 = {43 00 3a 00 5c 00 6e 00 75 00 6c 00 5c 00 6e 00 75 00 6c 00 } //05 00 
		$a_01_13 = {53 00 79 00 73 00 74 00 65 00 6d 00 74 00 72 00 61 00 79 00 20 00 68 00 69 00 64 00 64 00 65 00 6e 00 } //05 00 
		$a_01_14 = {53 00 79 00 73 00 74 00 65 00 6d 00 74 00 72 00 61 00 79 00 20 00 73 00 68 00 6f 00 77 00 6e 00 } //05 00 
		$a_01_15 = {4d 00 6f 00 75 00 73 00 65 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 64 00 } //05 00 
		$a_01_16 = {52 00 45 00 53 00 54 00 41 00 52 00 54 00 4d 00 45 00 } //05 00 
		$a_01_17 = {41 00 44 00 4d 00 49 00 4e 00 4c 00 4f 00 47 00 49 00 4e 00 3a 00 } //01 00 
		$a_01_18 = {59 00 6f 00 75 00 20 00 61 00 72 00 65 00 20 00 6e 00 6f 00 74 00 20 00 61 00 6e 00 20 00 61 00 64 00 6d 00 69 00 6e 00 21 00 } //01 00 
		$a_01_19 = {59 00 6f 00 75 00 20 00 61 00 72 00 65 00 20 00 6e 00 6f 00 74 00 20 00 61 00 6c 00 6c 00 6f 00 77 00 65 00 64 00 20 00 74 00 6f 00 20 00 6b 00 69 00 63 00 6b 00 20 00 75 00 73 00 65 00 72 00 73 00 2e 00 } //01 00 
		$a_01_20 = {41 00 75 00 74 00 6f 00 52 00 65 00 73 00 74 00 6f 00 72 00 65 00 53 00 65 00 72 00 76 00 65 00 72 00 } //01 00 
		$a_01_21 = {50 00 65 00 72 00 6d 00 61 00 6e 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //01 00 
		$a_01_22 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00 
		$a_01_23 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 } //01 00 
		$a_01_24 = {48 00 4b 00 45 00 59 00 5f 00 55 00 53 00 45 00 52 00 53 00 5c 00 2e 00 44 00 45 00 46 00 41 00 55 00 4c 00 54 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 4f 00 6e 00 63 00 65 00 } //01 00 
		$a_01_25 = {72 00 65 00 6e 00 20 00 25 00 77 00 69 00 6e 00 64 00 69 00 72 00 25 00 5c 00 7e 00 62 00 63 00 6b 00 75 00 70 00 2e 00 74 00 6d 00 70 00 20 00 7e 00 62 00 63 00 6b 00 75 00 70 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_26 = {25 00 77 00 69 00 6e 00 64 00 69 00 72 00 25 00 5c 00 7e 00 62 00 63 00 6b 00 75 00 70 00 2e 00 65 00 78 00 65 00 20 00 2d 00 75 00 70 00 64 00 61 00 74 00 65 00 } //01 00 
		$a_01_27 = {64 00 65 00 6c 00 20 00 25 00 77 00 69 00 6e 00 64 00 69 00 72 00 25 00 5c 00 7e 00 62 00 63 00 6b 00 75 00 70 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_28 = {69 00 66 00 20 00 65 00 78 00 69 00 73 00 74 00 20 00 25 00 77 00 69 00 6e 00 64 00 69 00 72 00 25 00 5c 00 7e 00 62 00 63 00 6b 00 75 00 70 00 2e 00 65 00 78 00 65 00 20 00 67 00 6f 00 74 00 6f 00 20 00 54 00 72 00 79 00 41 00 67 00 61 00 69 00 6e 00 32 00 } //01 00 
		$a_01_29 = {63 00 3a 00 5c 00 7e 00 62 00 63 00 6b 00 75 00 70 00 34 00 2e 00 74 00 6d 00 70 00 } //01 00 
		$a_01_30 = {66 00 74 00 70 00 2e 00 73 00 69 00 6d 00 6c 00 6f 00 61 00 64 00 73 00 2e 00 63 00 6f 00 6d 00 } //00 00 
	condition:
		any of ($a_*)
 
}