
rule Trojan_Win32_Xlaroc_B{
	meta:
		description = "Trojan:Win32/Xlaroc.B,SIGNATURE_TYPE_PEHSTR_EXT,34 00 33 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {84 c0 74 04 b3 01 eb 2b b2 01 a1 } //0a 00 
		$a_01_1 = {e8 da d8 f9 ff 8b 45 f8 e8 } //0a 00 
		$a_01_2 = {84 c0 74 0c 8b fb 8b c7 e8 90 71 fe ff 89 7e 44 } //0a 00 
		$a_01_3 = {43 6f 72 61 6c 45 78 70 6c 6f 72 65 72 5f 32 30 30 34 32 31 2e 65 78 65 00 } //0a 00 
		$a_01_4 = {46 75 6e 73 68 69 6f 6e 49 6e 73 74 61 6c 6c 2e 65 78 65 00 } //01 00 
		$a_01_5 = {7b 46 43 39 36 46 33 34 35 2d 44 32 44 46 2d 34 43 43 41 2d 39 42 38 38 2d 43 43 44 43 30 34 37 46 46 33 31 37 7d 00 } //01 00 
		$a_01_6 = {63 3a 5c 37 46 41 35 35 34 44 41 2e 6c 6f 67 00 } //00 00 
	condition:
		any of ($a_*)
 
}