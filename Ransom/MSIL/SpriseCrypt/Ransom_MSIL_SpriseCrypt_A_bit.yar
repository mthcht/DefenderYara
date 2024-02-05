
rule Ransom_MSIL_SpriseCrypt_A_bit{
	meta:
		description = "Ransom:MSIL/SpriseCrypt.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 00 66 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 69 00 73 00 20 00 69 00 6d 00 70 00 6f 00 72 00 74 00 61 00 6e 00 74 00 20 00 6a 00 75 00 73 00 74 00 20 00 65 00 6d 00 61 00 69 00 6c 00 20 00 75 00 73 00 20 00 74 00 6f 00 20 00 64 00 69 00 73 00 63 00 75 00 73 00 73 00 20 00 74 00 68 00 65 00 20 00 70 00 72 00 69 00 63 00 65 00 20 00 61 00 6e 00 64 00 20 00 68 00 6f 00 77 00 20 00 74 00 6f 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 } //01 00 
		$a_01_1 = {57 00 65 00 20 00 61 00 63 00 63 00 65 00 70 00 74 00 20 00 6a 00 75 00 73 00 74 00 20 00 42 00 49 00 54 00 43 00 4f 00 49 00 4e 00 20 00 69 00 66 00 20 00 79 00 6f 00 75 00 20 00 64 00 6f 00 6e 00 74 00 20 00 6b 00 6e 00 6f 00 77 00 20 00 77 00 68 00 61 00 74 00 20 00 69 00 74 00 20 00 69 00 73 00 20 00 6a 00 75 00 73 00 74 00 20 00 67 00 6f 00 6f 00 67 00 6c 00 65 00 20 00 69 00 74 00 } //01 00 
		$a_01_2 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 44 00 65 00 6c 00 65 00 74 00 65 00 20 00 53 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 41 00 6c 00 6c 00 20 00 2f 00 51 00 75 00 69 00 65 00 74 00 } //01 00 
		$a_01_3 = {5c 00 45 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 5f 00 46 00 69 00 6c 00 65 00 73 00 2e 00 4e 00 6f 00 74 00 65 00 70 00 61 00 64 00 } //01 00 
		$a_03_4 = {2a 00 24 00 2a 00 90 02 04 2a 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2a 00 90 00 } //01 00 
		$a_03_5 = {2e 00 70 00 68 00 70 00 90 01 02 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 90 01 02 70 00 63 00 6e 00 61 00 6d 00 65 00 90 01 02 50 00 4f 00 53 00 54 00 90 01 02 61 00 65 00 73 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 90 00 } //00 00 
		$a_00_6 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}