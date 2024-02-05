
rule Trojan_PowerShell_Sacepos_B{
	meta:
		description = "Trojan:PowerShell/Sacepos.B,SIGNATURE_TYPE_CMDHSTR_EXT,15 00 15 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {64 00 6c 00 2e 00 64 00 72 00 6f 00 70 00 62 00 6f 00 78 00 75 00 73 00 65 00 72 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 } //01 00 
		$a_00_1 = {64 00 72 00 6f 00 70 00 62 00 6f 00 78 00 2e 00 63 00 6f 00 6d 00 2f 00 } //0a 00 
		$a_00_2 = {2e 00 70 00 73 00 31 00 3f 00 64 00 6c 00 3d 00 } //0a 00 
		$a_02_3 = {69 00 65 00 78 00 20 00 90 02 03 28 00 6e 00 65 00 77 00 2d 00 6f 00 62 00 6a 00 65 00 63 00 74 00 20 00 6e 00 65 00 74 00 2e 00 77 00 65 00 62 00 63 00 6c 00 69 00 65 00 6e 00 74 00 29 00 2e 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}