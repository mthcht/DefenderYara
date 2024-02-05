
rule VirTool_Win32_Joiner_E{
	meta:
		description = "VirTool:Win32/Joiner.E,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {ba 00 00 00 00 bb 00 04 00 00 f7 f3 a3 90 01 02 40 00 89 15 90 01 02 40 00 90 00 } //01 00 
		$a_03_1 = {68 00 04 00 00 68 90 01 02 40 00 ff 35 90 01 02 40 00 e8 90 01 02 00 00 6a 00 68 90 01 02 40 00 68 00 04 00 00 68 90 01 02 40 00 ff 35 90 01 02 40 00 e8 90 00 } //01 00 
		$a_01_2 = {57 72 69 74 65 46 69 6c 65 00 b5 02 6c 73 74 72 63 61 74 41 00 00 6b 65 72 6e 65 6c 33 32 2e 64 6c 6c 00 00 06 01 53 68 65 6c 6c 45 78 65 63 75 74 65 41 00 53 48 45 4c 4c 33 32 2e 64 6c 6c } //00 00 
	condition:
		any of ($a_*)
 
}