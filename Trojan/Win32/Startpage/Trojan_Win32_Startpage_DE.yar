
rule Trojan_Win32_Startpage_DE{
	meta:
		description = "Trojan:Win32/Startpage.DE,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 48 00 69 00 64 00 65 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 49 00 63 00 6f 00 6e 00 73 00 5c 00 43 00 6c 00 61 00 73 00 73 00 69 00 63 00 53 00 74 00 61 00 72 00 74 00 4d 00 65 00 6e 00 75 00 } //01 00 
		$a_00_1 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 4d 00 61 00 69 00 6e 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 50 00 61 00 67 00 65 00 } //01 00 
		$a_00_2 = {53 00 63 00 72 00 69 00 70 00 74 00 69 00 6e 00 67 00 2e 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //01 00 
		$a_00_3 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_00_4 = {33 00 36 00 30 00 74 00 72 00 61 00 79 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_02_5 = {40 00 52 00 45 00 47 00 20 00 41 00 44 00 44 00 20 00 48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 20 00 2f 00 76 00 20 00 90 02 20 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 53 00 5a 00 20 00 2f 00 64 00 20 00 90 02 20 20 00 2f 00 66 00 90 00 } //01 00 
		$a_02_6 = {61 00 74 00 74 00 72 00 69 00 62 00 20 00 2b 00 72 00 20 00 2b 00 73 00 20 00 2b 00 68 00 20 00 90 02 20 20 00 3e 00 6e 00 75 00 6c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}