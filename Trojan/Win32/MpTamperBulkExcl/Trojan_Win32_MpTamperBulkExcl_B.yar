
rule Trojan_Win32_MpTamperBulkExcl_B{
	meta:
		description = "Trojan:Win32/MpTamperBulkExcl.B,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 10 00 00 01 00 "
		
	strings :
		$a_02_0 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 70 00 61 00 74 00 68 00 73 00 90 02 50 20 00 2f 00 76 00 20 00 63 00 3a 00 20 00 90 00 } //01 00 
		$a_02_1 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 61 00 6e 00 74 00 69 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 70 00 61 00 74 00 68 00 73 00 90 02 50 20 00 2f 00 76 00 20 00 63 00 3a 00 20 00 90 00 } //01 00 
		$a_02_2 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 70 00 61 00 74 00 68 00 73 00 90 02 50 20 00 2f 00 76 00 20 00 63 00 3a 00 5c 00 20 00 90 00 } //01 00 
		$a_02_3 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 61 00 6e 00 74 00 69 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 70 00 61 00 74 00 68 00 73 00 90 02 50 20 00 2f 00 76 00 20 00 63 00 3a 00 5c 00 20 00 90 00 } //01 00 
		$a_02_4 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 61 00 6e 00 74 00 69 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 90 02 0b 20 00 2f 00 76 00 20 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_5 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 90 02 0b 20 00 2f 00 76 00 20 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_6 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 61 00 6e 00 74 00 69 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 90 02 0b 20 00 2f 00 76 00 20 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_7 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 90 02 0b 20 00 2f 00 76 00 20 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_8 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 61 00 6e 00 74 00 69 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 90 02 0b 20 00 2f 00 76 00 20 00 64 00 6c 00 6c 00 90 00 } //01 00 
		$a_02_9 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 90 02 0b 20 00 2f 00 76 00 20 00 64 00 6c 00 6c 00 90 00 } //01 00 
		$a_02_10 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 61 00 6e 00 74 00 69 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 90 02 0b 20 00 2f 00 76 00 20 00 2e 00 64 00 6c 00 6c 00 90 00 } //01 00 
		$a_02_11 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 90 02 0b 20 00 2f 00 76 00 20 00 2e 00 64 00 6c 00 6c 00 90 00 } //01 00 
		$a_02_12 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 61 00 6e 00 74 00 69 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 90 02 0b 20 00 2f 00 76 00 20 00 62 00 61 00 74 00 90 00 } //01 00 
		$a_02_13 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 90 02 0b 20 00 2f 00 76 00 20 00 62 00 61 00 74 00 90 00 } //01 00 
		$a_02_14 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 61 00 6e 00 74 00 69 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 90 02 0b 20 00 2f 00 76 00 20 00 2e 00 62 00 61 00 74 00 90 00 } //01 00 
		$a_02_15 = {72 00 65 00 67 00 90 02 10 61 00 64 00 64 00 20 00 68 00 90 02 50 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 90 02 28 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5c 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 90 02 0b 20 00 2f 00 76 00 20 00 2e 00 62 00 61 00 74 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}