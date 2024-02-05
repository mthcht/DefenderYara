
rule PWS_BAT_Stimilina_P_bit{
	meta:
		description = "PWS:BAT/Stimilina.P!bit,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0a 00 00 01 00 "
		
	strings :
		$a_03_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 90 02 10 45 00 6e 00 61 00 62 00 6c 00 65 00 4c 00 55 00 41 00 90 00 } //01 00 
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00 
		$a_01_2 = {48 00 4b 00 43 00 55 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 2f 00 76 00 20 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 } //01 00 
		$a_03_3 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 65 00 73 00 74 00 6f 00 72 00 65 00 90 02 10 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 53 00 52 00 90 00 } //01 00 
		$a_01_4 = {47 00 6f 00 6f 00 67 00 6c 00 65 00 5c 00 43 00 68 00 72 00 6f 00 6d 00 65 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 5c 00 4c 00 6f 00 67 00 69 00 6e 00 20 00 44 00 61 00 74 00 61 00 } //01 00 
		$a_01_5 = {59 00 61 00 6e 00 64 00 65 00 78 00 5c 00 59 00 61 00 6e 00 64 00 65 00 78 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 5c 00 4c 00 6f 00 67 00 69 00 6e 00 20 00 44 00 61 00 74 00 61 00 } //01 00 
		$a_03_6 = {6c 00 6f 00 67 00 69 00 6e 00 73 00 90 01 02 6f 00 72 00 69 00 67 00 69 00 6e 00 5f 00 75 00 72 00 6c 00 90 02 60 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 5f 00 76 00 61 00 6c 00 75 00 65 00 90 01 02 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 5f 00 76 00 61 00 6c 00 75 00 65 00 90 00 } //01 00 
		$a_01_7 = {53 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 20 00 2d 00 72 00 20 00 2d 00 74 00 } //01 00 
		$a_01_8 = {50 00 4b 00 31 00 31 00 53 00 44 00 52 00 5f 00 44 00 65 00 63 00 72 00 79 00 70 00 74 00 } //01 00 
		$a_01_9 = {65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}