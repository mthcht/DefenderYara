
rule Ransom_MSIL_JigsawLocker_A{
	meta:
		description = "Ransom:MSIL/JigsawLocker.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 72 00 79 00 20 00 61 00 6e 00 79 00 74 00 68 00 69 00 6e 00 67 00 20 00 66 00 75 00 6e 00 6e 00 79 00 20 00 61 00 6e 00 64 00 20 00 74 00 68 00 65 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 68 00 61 00 73 00 20 00 73 00 65 00 76 00 65 00 72 00 61 00 6c 00 20 00 73 00 61 00 66 00 65 00 74 00 79 00 20 00 6d 00 65 00 61 00 73 00 75 00 72 00 65 00 73 00 20 00 74 00 6f 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 2e 00 } //01 00 
		$a_01_1 = {57 00 69 00 74 00 68 00 69 00 6e 00 20 00 74 00 77 00 6f 00 20 00 6d 00 69 00 6e 00 75 00 74 00 65 00 73 00 20 00 6f 00 66 00 20 00 72 00 65 00 63 00 65 00 69 00 76 00 69 00 6e 00 67 00 20 00 79 00 6f 00 75 00 72 00 20 00 70 00 61 00 79 00 6d 00 65 00 6e 00 74 00 20 00 79 00 6f 00 75 00 72 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 77 00 69 00 6c 00 6c 00 20 00 72 00 65 00 63 00 65 00 69 00 76 00 65 00 20 00 74 00 68 00 65 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 20 00 6b 00 65 00 79 00 } //01 00 
		$a_01_2 = {45 00 76 00 65 00 72 00 79 00 20 00 68 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 77 00 69 00 6c 00 6c 00 20 00 62 00 65 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 64 00 2e 00 20 00 49 00 6e 00 63 00 72 00 65 00 61 00 73 00 69 00 6e 00 67 00 20 00 69 00 6e 00 20 00 61 00 6d 00 6f 00 75 00 6e 00 74 00 20 00 65 00 76 00 65 00 72 00 79 00 20 00 74 00 69 00 6d 00 65 00 2e 00 } //01 00 
		$a_01_3 = {59 00 6f 00 75 00 20 00 61 00 72 00 65 00 20 00 61 00 62 00 6f 00 75 00 74 00 20 00 74 00 6f 00 20 00 6d 00 61 00 6b 00 65 00 20 00 61 00 20 00 76 00 65 00 72 00 79 00 20 00 62 00 61 00 64 00 20 00 64 00 65 00 63 00 69 00 73 00 69 00 6f 00 6e 00 2e 00 20 00 41 00 72 00 65 00 20 00 79 00 6f 00 75 00 20 00 73 00 75 00 72 00 65 00 20 00 61 00 62 00 6f 00 75 00 74 00 20 00 69 00 74 00 } //01 00 
		$a_01_4 = {41 00 66 00 74 00 65 00 72 00 20 00 64 00 6f 00 6e 00 65 00 20 00 49 00 20 00 77 00 69 00 6c 00 6c 00 20 00 63 00 6c 00 6f 00 73 00 65 00 20 00 61 00 6e 00 64 00 20 00 63 00 6f 00 6d 00 70 00 6c 00 65 00 74 00 65 00 6c 00 79 00 20 00 72 00 65 00 6d 00 6f 00 76 00 65 00 20 00 6d 00 79 00 73 00 65 00 6c 00 66 00 20 00 66 00 72 00 6f 00 6d 00 20 00 79 00 6f 00 75 00 72 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 2e 00 } //01 00 
		$a_01_5 = {59 00 6f 00 75 00 20 00 64 00 69 00 64 00 20 00 6e 00 6f 00 74 00 20 00 73 00 65 00 6e 00 74 00 20 00 6d 00 65 00 20 00 65 00 6e 00 6f 00 75 00 67 00 68 00 21 00 20 00 54 00 72 00 79 00 20 00 61 00 67 00 61 00 69 00 6e 00 21 00 } //01 00 
		$a_01_6 = {45 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 46 00 69 00 6c 00 65 00 4c 00 69 00 73 00 74 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_7 = {52 61 6e 73 6f 6d 55 73 64 00 } //01 00 
		$a_01_8 = {42 6c 6f 63 6b 72 00 } //01 00 
		$a_01_9 = {67 65 74 5f 4a 69 67 73 61 77 00 } //00 00 
		$a_00_10 = {80 10 00 } //00 bb 
	condition:
		any of ($a_*)
 
}