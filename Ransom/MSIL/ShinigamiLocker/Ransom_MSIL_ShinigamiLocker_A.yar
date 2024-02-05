
rule Ransom_MSIL_ShinigamiLocker_A{
	meta:
		description = "Ransom:MSIL/ShinigamiLocker.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 00 6e 00 79 00 20 00 61 00 74 00 74 00 65 00 6d 00 74 00 20 00 6f 00 6e 00 20 00 63 00 6c 00 6f 00 73 00 69 00 6e 00 67 00 20 00 6f 00 72 00 20 00 64 00 65 00 6c 00 69 00 74 00 69 00 6e 00 67 00 20 00 74 00 68 00 69 00 73 00 20 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 20 00 77 00 69 00 6c 00 6c 00 20 00 64 00 61 00 6d 00 61 00 67 00 65 00 20 00 79 00 6f 00 75 00 72 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 21 00 } //01 00 
		$a_01_1 = {42 00 54 00 43 00 20 00 42 00 49 00 54 00 43 00 4f 00 49 00 4e 00 20 00 57 00 41 00 4c 00 4c 00 45 00 54 00 20 00 46 00 4f 00 52 00 20 00 50 00 41 00 59 00 4d 00 45 00 4e 00 54 00 20 00 31 00 4d 00 42 00 50 00 53 00 72 00 6e 00 34 00 36 00 65 00 45 00 56 00 42 00 48 00 6f 00 79 00 70 00 79 00 6a 00 67 00 66 00 64 00 43 00 43 00 66 00 35 00 44 00 51 00 78 00 51 00 73 00 78 00 33 00 66 00 } //01 00 
		$a_01_2 = {30 37 65 36 39 39 62 39 2d 31 37 31 37 2d 34 31 62 35 2d 61 66 33 63 2d 37 32 31 30 64 34 66 62 64 30 38 30 } //01 00 
		$a_01_3 = {5c 72 41 4e 53 4f 4d 5c 72 41 4e 53 4f 4d 5c 6f 62 6a 5c 53 61 6e 79 61 73 74 65 61 6b 6c 65 72 5c 72 41 4e 53 4f 4d 2e 70 64 62 } //00 00 
	condition:
		any of ($a_*)
 
}