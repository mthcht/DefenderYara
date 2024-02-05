
rule Ransom_Win32_Velar_PA_MTB{
	meta:
		description = "Ransom:Win32/Velar.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {61 00 20 00 6c 00 61 00 72 00 67 00 65 00 20 00 6e 00 75 00 6d 00 62 00 65 00 72 00 20 00 6f 00 66 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 68 00 61 00 73 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 75 00 73 00 69 00 6e 00 67 00 20 00 61 00 20 00 68 00 79 00 62 00 72 00 69 00 64 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 20 00 73 00 63 00 68 00 65 00 6d 00 65 00 } //01 00 
		$a_00_1 = {2e 00 56 00 65 00 6c 00 61 00 72 00 } //01 00 
		$a_00_2 = {73 00 75 00 62 00 6a 00 65 00 63 00 74 00 3a 00 20 00 49 00 44 00 2d 00 7b 00 4b 00 45 00 59 00 31 00 31 00 31 00 31 00 31 00 7d 00 } //01 00 
		$a_00_3 = {54 00 68 00 65 00 72 00 65 00 20 00 69 00 73 00 20 00 6e 00 6f 00 20 00 70 00 6f 00 73 00 73 00 69 00 62 00 69 00 6c 00 69 00 74 00 79 00 20 00 74 00 6f 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 20 00 74 00 68 00 65 00 73 00 65 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 77 00 69 00 74 00 68 00 6f 00 75 00 74 00 20 00 61 00 20 00 73 00 70 00 65 00 63 00 69 00 61 00 6c 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 20 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 } //01 00 
		$a_02_4 = {2e 00 73 00 63 00 72 00 90 02 04 2e 00 63 00 6d 00 64 00 90 02 04 2e 00 64 00 6c 00 6c 00 90 02 04 2e 00 62 00 61 00 74 00 90 02 04 2e 00 63 00 70 00 6c 00 90 02 04 2e 00 73 00 79 00 73 00 90 02 04 2e 00 6d 00 73 00 63 00 90 02 04 2e 00 63 00 6f 00 6d 00 90 02 04 2e 00 6c 00 6e 00 6b 00 90 02 04 2e 00 6d 00 73 00 70 00 90 02 04 2e 00 70 00 69 00 66 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}