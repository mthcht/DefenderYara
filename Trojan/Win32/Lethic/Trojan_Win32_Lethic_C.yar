
rule Trojan_Win32_Lethic_C{
	meta:
		description = "Trojan:Win32/Lethic.C,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 69 6c 69 6e 75 67 67 61 68 78 78 34 35 37 36 } //01 00 
		$a_00_1 = {70 6f 72 74 35 2e 61 6c 77 61 79 73 70 72 6f 78 79 2e 69 6e 66 6f } //01 00 
		$a_00_2 = {43 3a 5c 52 45 43 59 43 4c 45 52 5c 53 2d 31 2d 35 2d 32 31 2d 30 32 34 33 33 33 36 30 33 31 2d 34 30 35 32 31 31 36 33 37 39 2d 38 38 31 38 36 33 33 30 38 2d 30 38 35 30 } //01 00 
		$a_00_3 = {31 32 43 46 47 39 31 34 2d 4b 36 34 31 2d 32 36 53 46 2d 4e 33 31 50 } //04 00 
		$a_03_4 = {68 80 00 00 00 8b 45 90 01 01 83 c0 0c 50 ff 15 90 01 04 8b 4d 90 01 01 83 c1 0c 51 ff 15 90 01 04 c6 85 90 01 02 ff ff 00 68 90 01 04 8d 95 90 01 02 ff ff 52 ff 15 90 00 } //05 00 
		$a_03_5 = {68 af 04 00 00 8b 85 90 01 02 ff ff 8b 88 58 01 00 00 ff d1 66 89 85 90 01 02 ff ff 66 c7 85 90 01 02 ff ff 02 00 6a 10 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}