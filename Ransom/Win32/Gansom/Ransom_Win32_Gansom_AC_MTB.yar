
rule Ransom_Win32_Gansom_AC_MTB{
	meta:
		description = "Ransom:Win32/Gansom.AC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 20 00 61 00 72 00 65 00 20 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //01 00 
		$a_01_1 = {59 00 6f 00 75 00 72 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 69 00 73 00 20 00 74 00 65 00 6d 00 70 00 6f 00 72 00 61 00 72 00 69 00 6c 00 79 00 20 00 62 00 6c 00 6f 00 63 00 6b 00 65 00 64 00 20 00 6f 00 6e 00 20 00 73 00 65 00 76 00 65 00 72 00 61 00 6c 00 20 00 6c 00 65 00 76 00 65 00 6c 00 73 00 } //01 00 
		$a_01_2 = {41 00 70 00 70 00 6c 00 79 00 69 00 6e 00 67 00 20 00 73 00 74 00 72 00 6f 00 6e 00 67 00 20 00 6d 00 69 00 6c 00 69 00 74 00 61 00 72 00 79 00 20 00 73 00 65 00 63 00 72 00 65 00 74 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 20 00 61 00 6c 00 67 00 6f 00 72 00 69 00 74 00 68 00 6d 00 } //01 00 
		$a_01_3 = {44 00 6f 00 6e 00 61 00 74 00 69 00 6f 00 6e 00 73 00 20 00 74 00 6f 00 20 00 74 00 68 00 65 00 20 00 55 00 53 00 20 00 70 00 72 00 65 00 73 00 69 00 64 00 65 00 6e 00 74 00 69 00 61 00 6c 00 20 00 65 00 6c 00 65 00 63 00 74 00 69 00 6f 00 6e 00 73 00 20 00 61 00 72 00 65 00 20 00 61 00 63 00 63 00 65 00 70 00 74 00 65 00 64 00 20 00 61 00 72 00 6f 00 75 00 6e 00 64 00 20 00 74 00 68 00 65 00 20 00 63 00 6c 00 6f 00 63 00 6b 00 } //01 00 
		$a_01_4 = {44 00 65 00 73 00 69 00 6e 00 65 00 20 00 73 00 70 00 65 00 72 00 61 00 72 00 65 00 20 00 71 00 75 00 69 00 20 00 68 00 69 00 63 00 20 00 69 00 6e 00 74 00 72 00 61 00 73 00 21 00 } //00 00 
	condition:
		any of ($a_*)
 
}