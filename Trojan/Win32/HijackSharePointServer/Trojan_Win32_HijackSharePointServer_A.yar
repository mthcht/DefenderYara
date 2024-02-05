
rule Trojan_Win32_HijackSharePointServer_A{
	meta:
		description = "Trojan:Win32/HijackSharePointServer.A,SIGNATURE_TYPE_CMDHSTR_EXT,0a 00 0a 00 10 00 00 0a 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //0a 00 
		$a_00_1 = {6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 } //0a 00 
		$a_00_2 = {62 00 69 00 74 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 } //0a 00 
		$a_00_3 = {6d 00 73 00 70 00 61 00 69 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //0a 00 
		$a_00_4 = {20 00 2d 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 65 00 63 00 68 00 6f 00 20 00 } //0a 00 
		$a_00_5 = {70 00 69 00 6e 00 67 00 2e 00 65 00 78 00 65 00 } //0a 00 
		$a_00_6 = {63 00 61 00 6c 00 63 00 2e 00 65 00 78 00 65 00 } //ce ff 
		$a_00_7 = {64 00 73 00 72 00 65 00 67 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //ce ff 
		$a_00_8 = {73 00 6f 00 66 00 66 00 69 00 63 00 65 00 2e 00 65 00 78 00 65 00 } //ce ff 
		$a_00_9 = {63 00 65 00 72 00 74 00 75 00 74 00 69 00 6c 00 20 00 2d 00 68 00 61 00 73 00 68 00 66 00 69 00 6c 00 65 00 } //ce ff 
		$a_00_10 = {7a 00 61 00 62 00 62 00 69 00 78 00 20 00 61 00 67 00 65 00 6e 00 74 00 } //ce ff 
		$a_00_11 = {66 00 70 00 5f 00 6d 00 61 00 6e 00 61 00 67 00 65 00 72 00 65 00 73 00 65 00 72 00 76 00 61 00 74 00 69 00 6f 00 6e 00 } //ce ff 
		$a_00_12 = {6c 00 74 00 72 00 65 00 73 00 74 00 61 00 72 00 74 00 2e 00 62 00 61 00 74 00 } //ce ff 
		$a_00_13 = {73 00 68 00 61 00 72 00 65 00 64 00 6f 00 63 00 73 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 } //ce ff 
		$a_00_14 = {74 00 66 00 73 00 62 00 75 00 67 00 72 00 65 00 70 00 6f 00 72 00 74 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //ce ff 
		$a_00_15 = {61 00 6c 00 74 00 69 00 67 00 65 00 6e 00 20 00 63 00 6f 00 6d 00 6d 00 75 00 6e 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 73 00 2c 00 20 00 69 00 6e 00 63 00 } //00 00 
	condition:
		any of ($a_*)
 
}