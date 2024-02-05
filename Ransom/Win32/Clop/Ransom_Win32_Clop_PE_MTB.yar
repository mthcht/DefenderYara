
rule Ransom_Win32_Clop_PE_MTB{
	meta:
		description = "Ransom:Win32/Clop.PE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 06 00 00 0a 00 "
		
	strings :
		$a_00_0 = {2e 00 43 00 49 00 49 00 70 00 } //0a 00 
		$a_00_1 = {2e 00 43 00 49 00 30 00 70 00 } //01 00 
		$a_01_2 = {42 45 47 49 4e 20 50 55 42 4c 49 43 20 4b 45 59 } //01 00 
		$a_00_3 = {5c 00 52 00 45 00 41 00 44 00 4d 00 45 00 5f 00 52 00 45 00 41 00 44 00 4d 00 45 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_00_4 = {25 00 73 00 20 00 72 00 75 00 6e 00 72 00 75 00 6e 00 } //01 00 
		$a_03_5 = {2e 00 4f 00 c7 90 02 06 43 00 58 00 90 02 1a c7 90 02 06 2e 00 63 00 c7 90 02 06 68 00 6d 00 90 02 1a c7 90 02 06 2e 00 43 00 c7 90 02 06 49 00 30 00 66 89 90 02 2a c7 90 02 06 2e 00 6d 00 c7 90 02 06 73 00 69 00 90 02 1a c7 90 02 06 2e 00 44 00 c7 90 02 06 4c 00 4c 00 90 02 1a c7 90 02 06 2e 00 45 00 c7 90 02 06 58 00 45 00 90 02 1a c7 90 02 06 2e 00 69 00 c7 90 02 06 63 00 6f 00 90 00 } //00 00 
		$a_00_6 = {5d 04 00 } //00 ea 
	condition:
		any of ($a_*)
 
}