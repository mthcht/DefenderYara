
rule Trojan_Win32_Zuepan_A{
	meta:
		description = "Trojan:Win32/Zuepan.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0c 00 00 01 00 "
		
	strings :
		$a_03_0 = {74 18 0f b6 04 1f 33 c1 c1 e9 08 0f b6 c0 33 0c 85 90 01 04 47 3b fa 72 e8 f7 d1 90 00 } //01 00 
		$a_03_1 = {73 26 8b 04 f5 90 01 04 8a 0c f5 90 01 04 0f b7 d3 f6 d1 32 0c 10 32 cb 43 88 0c 3a 90 00 } //01 00 
		$a_03_2 = {73 37 8b 04 f5 90 01 04 0f b7 d7 66 0f be 0c 10 0f b6 04 f5 90 01 04 66 f7 d0 66 33 c8 b8 ff 00 00 00 66 33 cf 66 23 c8 47 66 89 0c 53 90 00 } //02 00 
		$a_01_3 = {eb 22 c6 06 5c eb 1c c6 06 22 eb 17 c6 06 72 eb 12 c6 06 66 eb 0d c6 06 6e eb 08 c6 06 74 eb 03 c6 06 62 } //02 00 
		$a_03_4 = {6a 3b 68 84 2f 03 c6 ba 39 01 00 00 b9 90 01 04 e8 90 01 02 ff ff ff d0 90 00 } //02 00 
		$a_03_5 = {68 01 00 00 80 6a 40 68 c9 d6 01 a0 b9 90 01 04 e8 90 01 02 ff ff ff d0 90 00 } //01 00 
		$a_80_6 = {00 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 68 74 6d 6c 2b 78 6d 6c 00 } //  01 00 
		$a_80_7 = {00 25 73 25 30 38 78 2e 25 73 00 } //  01 00 
		$a_80_8 = {00 2f 63 20 73 74 61 72 74 20 22 22 20 22 25 73 22 00 } //  02 00 
		$a_80_9 = {00 38 38 43 33 44 31 37 33 37 31 35 34 30 35 39 34 33 44 46 39 41 41 30 44 41 30 43 39 38 39 33 42 00 } //  02 00 
		$a_80_10 = {00 42 44 37 35 34 37 36 46 45 38 42 37 34 46 39 46 32 45 46 37 33 45 39 31 32 38 46 39 34 36 46 35 00 } //  01 00 
		$a_01_11 = {98 2f 8a 42 91 44 37 71 cf fb c0 b5 a5 db b5 e9 5b c2 56 39 f1 11 f1 59 a4 82 3f 92 d5 5e 1c ab 98 aa 07 d8 01 5b 83 12 be 85 31 24 c3 7d 0c 55 } //00 00 
	condition:
		any of ($a_*)
 
}