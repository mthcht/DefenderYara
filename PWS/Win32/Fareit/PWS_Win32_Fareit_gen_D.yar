
rule PWS_Win32_Fareit_gen_D{
	meta:
		description = "PWS:Win32/Fareit.gen!D,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 4b 44 46 49 4c 45 30 43 52 59 50 54 45 44 } //01 00 
		$a_01_1 = {46 61 72 5c 50 6c 75 67 69 6e 73 5c 46 54 50 5c 48 6f 73 74 73 } //02 00 
		$a_01_2 = {00 43 6c 69 65 6e 74 20 48 61 73 68 00 53 54 41 54 55 53 2d 49 4d 50 4f 52 54 2d 4f 4b 00 } //02 00 
		$a_01_3 = {00 5c 45 73 74 73 6f 66 74 5c 41 4c 46 54 50 00 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 00 57 69 6e 69 6e 65 74 43 61 63 68 65 43 72 65 64 65 6e 74 69 61 6c 73 00 4d 53 20 49 45 20 46 54 50 20 50 61 73 73 77 6f 72 64 73 00 } //02 00 
		$a_01_4 = {00 5c 49 70 73 77 69 74 63 68 5c 57 53 5f 46 54 50 00 5c 77 69 6e 2e 69 6e 69 00 2e 69 6e 69 00 57 53 5f 46 54 50 00 44 49 52 00 78 44 45 46 44 49 52 00 43 55 54 45 46 54 50 00 51 43 48 69 73 74 6f 72 79 00 } //00 00 
	condition:
		any of ($a_*)
 
}