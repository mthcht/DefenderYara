
rule Trojan_Win32_Colorexe_B{
	meta:
		description = "Trojan:Win32/Colorexe.B,SIGNATURE_TYPE_CMDHSTR_EXT,0a 00 0a 00 02 00 00 0a 00 "
		
	strings :
		$a_02_0 = {5c 00 73 00 70 00 6f 00 6f 00 6c 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 63 00 6f 00 6c 00 6f 00 72 00 5c 00 90 02 ff 2e 00 65 00 78 00 65 00 90 00 } //0a 00 
		$a_02_1 = {5c 00 73 00 70 00 6f 00 6f 00 6c 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 63 00 6f 00 6c 00 6f 00 72 00 5c 00 90 02 ff 2e 00 64 00 6c 00 6c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}