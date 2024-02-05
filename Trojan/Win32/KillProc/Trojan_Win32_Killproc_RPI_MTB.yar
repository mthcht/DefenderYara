
rule Trojan_Win32_Killproc_RPI_MTB{
	meta:
		description = "Trojan:Win32/Killproc.RPI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2f 00 66 00 20 00 2f 00 74 00 20 00 2f 00 69 00 6d 00 20 00 63 00 6f 00 6e 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {72 00 61 00 6d 00 75 00 6b 00 61 00 6b 00 61 00 2e 00 72 00 75 00 6e 00 20 00 } //01 00 
		$a_01_2 = {52 00 45 00 47 00 20 00 41 00 64 00 64 00 20 00 48 00 4b 00 43 00 55 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 20 00 2f 00 76 00 20 00 } //01 00 
		$a_01_3 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 63 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 78 00 65 00 20 00 } //01 00 
		$a_01_4 = {5c 00 73 00 73 00 65 00 63 00 75 00 72 00 65 00 2e 00 76 00 62 00 73 00 } //01 00 
		$a_01_5 = {7c 00 43 00 20 00 6f 00 6d 00 20 00 6f 00 20 00 64 00 20 00 6f 00 } //01 00 
		$a_01_6 = {7c 00 4b 00 61 00 20 00 73 00 20 00 70 00 20 00 65 00 20 00 72 00 20 00 53 00 20 00 6b 00 20 00 79 00 } //01 00 
		$a_01_7 = {7c 00 51 00 75 00 69 00 63 00 6b 00 2d 00 48 00 65 00 61 00 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}