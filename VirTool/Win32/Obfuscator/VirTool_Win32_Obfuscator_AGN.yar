
rule VirTool_Win32_Obfuscator_AGN{
	meta:
		description = "VirTool:Win32/Obfuscator.AGN,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 c4 04 c7 45 90 01 02 00 00 00 e8 90 01 02 ff ff c7 45 90 01 03 00 00 e8 90 01 02 ff ff c7 45 90 01 03 00 00 e8 90 01 02 ff ff c7 45 90 01 03 00 00 68 90 01 03 00 6a 00 6a 00 68 90 01 02 40 00 6a 00 6a 00 ff 15 90 01 02 40 00 90 00 } //01 00 
		$a_03_1 = {50 6a 00 6a 00 68 90 01 02 40 00 6a 00 6a 00 ff 15 90 01 02 40 00 89 45 90 01 01 6a ff 90 00 } //01 00 
		$a_03_2 = {33 c9 3d e9 00 00 00 0f 94 c1 88 90 01 03 40 00 c7 90 01 03 00 00 00 33 d2 8a 90 01 03 40 00 83 fa 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}