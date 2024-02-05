
rule Worm_Win32_Gamarue_N{
	meta:
		description = "Worm:Win32/Gamarue.N,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0a 00 1c 00 00 0a 00 "
		
	strings :
		$a_03_0 = {74 5c 56 e8 90 01 04 50 e8 90 01 04 59 59 89 45 e4 6a 40 b8 00 10 00 00 50 50 53 ff 15 90 01 04 8b f8 56 ff 75 e4 6a 01 57 e8 90 01 04 83 c4 10 89 5d fc ff d7 90 00 } //0a 00 
		$a_03_1 = {74 42 57 e8 90 01 04 50 e8 90 01 04 59 59 8b f0 6a 40 68 00 10 00 00 56 53 ff 15 90 01 04 89 45 e4 57 56 6a 01 50 e8 90 01 04 83 c4 10 89 5d fc ff 55 e4 90 00 } //0a 00 
		$a_03_2 = {74 30 57 e8 90 01 04 50 e8 90 01 04 59 59 6a 40 68 00 10 00 00 8b f0 56 53 ff 15 90 01 04 57 56 8b d8 6a 01 53 e8 90 01 04 83 c4 10 ff d3 90 00 } //0a 00 
		$a_03_3 = {75 2f 53 ff 75 f8 ff 15 90 01 04 6a 40 68 00 10 00 00 8b f0 56 53 ff 15 90 01 04 53 8b f8 8d 45 90 01 01 50 56 57 ff 75 f8 ff 15 90 01 04 ff d7 90 00 } //0a 00 
		$a_03_4 = {74 29 38 5d 13 75 24 6a 40 be 00 10 00 00 56 56 53 ff 15 90 01 04 53 8b f8 8d 45 90 01 01 50 56 57 ff 75 f8 ff 15 90 01 04 ff d7 90 00 } //0a 00 
		$a_03_5 = {83 c0 02 66 3b cb 75 ea 6a 40 be 00 10 00 00 56 56 53 ff 15 90 01 04 53 68 80 00 00 00 6a 03 53 6a 01 68 00 00 00 80 57 a3 90 01 04 ff 15 90 01 04 a3 90 00 } //0a 00 
		$a_03_6 = {8d 78 fe 66 8b 4f 02 83 c7 02 66 3b ce 75 f4 be 90 01 04 a5 a5 a5 a5 33 f6 56 68 80 00 00 00 6a 03 56 6a 01 68 00 00 00 80 50 ff 15 90 00 } //0a 00 
		$a_03_7 = {8d 7b fe 66 8b 47 02 83 c7 02 66 3b c6 75 f4 6a 05 59 be 90 01 04 f3 a5 33 f6 56 68 80 00 00 00 6a 03 56 6a 01 68 00 00 00 80 53 ff 15 90 00 } //0a 00 
		$a_03_8 = {66 8b 4f 02 83 c7 02 66 3b cb 75 f4 53 be 90 01 04 a5 68 80 00 00 00 6a 03 a5 53 6a 01 a5 68 00 00 00 80 50 a5 ff 15 90 00 } //0a 00 
		$a_03_9 = {83 c0 02 66 3b cf 75 ea 6a 40 be 90 01 04 56 56 57 ff 15 90 01 04 57 68 80 00 00 00 6a 03 57 6a 01 68 00 00 00 80 53 a3 90 01 04 ff 15 90 00 } //0a 00 
		$a_03_10 = {8d 78 fe 66 8b 4f 02 83 c7 02 66 3b ce 75 f4 6a 05 59 be 90 01 04 f3 a5 33 f6 56 68 80 00 00 00 6a 03 56 6a 01 68 00 00 00 80 50 ff 15 90 00 } //02 00 
		$a_01_11 = {64 6c 6c 5f 64 6f 77 6e 5f 65 78 65 63 2e 64 6c 6c 00 5f 66 6e 64 6f 74 40 31 36 00 } //02 00 
		$a_01_12 = {64 6c 6c 5f 64 6f 77 6e 5f 65 78 65 63 2e 64 6c 6c 00 5f 6c 64 72 40 31 36 00 } //02 00 
		$a_01_13 = {64 6c 6c 5f 64 6f 77 6e 5f 65 78 65 63 2e 64 6c 6c 00 5f 72 65 76 40 31 36 00 } //02 00 
		$a_01_14 = {64 6c 6c 5f 64 6f 77 6e 5f 65 78 65 63 2e 64 6c 6c 00 63 72 79 73 00 } //02 00 
		$a_01_15 = {6f 6d 67 2e 64 6c 6c 00 63 72 79 73 00 } //02 00 
		$a_01_16 = {64 61 66 61 6b 2e 64 6c 6c 00 63 72 79 73 00 } //02 00 
		$a_01_17 = {66 61 72 61 77 61 79 2e 64 6c 6c 00 63 72 79 73 00 } //02 00 
		$a_01_18 = {6c 6f 6f 61 6f 61 6f 61 6f 2e 64 6c 6c 00 63 72 79 73 00 } //02 00 
		$a_03_19 = {6e 74 64 6c 6c 2e 64 6c 6c 00 90 03 04 04 63 72 79 73 6b 72 6e 6c 00 90 00 } //02 00 
		$a_03_20 = {75 73 65 72 33 32 2e 64 6c 6c 00 90 03 04 04 63 72 79 73 6b 72 6e 6c 00 90 00 } //02 00 
		$a_03_21 = {6b 65 72 6e 65 6c 62 61 73 65 2e 64 6c 6c 00 90 03 04 04 63 72 79 73 6b 72 6e 6c 00 90 00 } //02 00 
		$a_03_22 = {77 69 6e 69 6e 65 74 2e 64 6c 6c 00 90 03 04 04 63 72 79 73 6b 72 6e 6c 00 90 00 } //02 00 
		$a_03_23 = {6f 6c 65 33 32 2e 64 6c 6c 00 90 03 04 04 63 72 79 73 6b 72 6e 6c 00 90 00 } //02 00 
		$a_03_24 = {6b 65 72 6e 65 6c 33 32 2e 64 6c 6c 00 90 03 04 04 63 72 79 73 6b 72 6e 6c 00 90 00 } //02 00 
		$a_01_25 = {66 77 66 77 65 2e 64 6c 6c 00 63 72 79 73 00 } //02 00 
		$a_03_26 = {73 78 72 68 64 2e 64 6c 6c 00 90 03 04 04 63 72 79 73 6b 72 6e 6c 00 90 00 } //02 00 
		$a_03_27 = {73 78 72 73 68 64 2e 64 6c 6c 00 90 03 04 04 63 72 79 73 6b 72 6e 6c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}