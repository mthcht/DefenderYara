
rule VirTool_Win32_Vbcrypt_CO{
	meta:
		description = "VirTool:Win32/Vbcrypt.CO,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 4d 00 61 00 73 00 74 00 65 00 72 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 53 00 6c 00 69 00 70 00 6e 00 6f 00 72 00 62 00 5c 00 53 00 6c 00 69 00 70 00 6e 00 6f 00 72 00 62 00 2e 00 76 00 62 00 70 00 00 00 } //01 00 
		$a_01_1 = {53 00 6c 00 69 00 70 00 6e 00 6f 00 72 00 62 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 20 00 4c 00 54 00 44 00 41 00 2e 00 00 00 } //01 00 
		$a_01_2 = {46 53 6c 69 70 6e 6f 72 62 00 00 00 4d 53 6c 69 70 6e 6f 72 62 00 } //00 00 
	condition:
		any of ($a_*)
 
}