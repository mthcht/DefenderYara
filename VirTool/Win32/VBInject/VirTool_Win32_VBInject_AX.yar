
rule VirTool_Win32_VBInject_AX{
	meta:
		description = "VirTool:Win32/VBInject.AX,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 6f 64 4d 61 69 6e 00 4d 6f 64 52 75 6e 74 69 6d 65 00 00 4d 6f 64 44 65 63 6f 64 65 00 } //01 00 
		$a_00_1 = {20 00 00 00 43 00 3a 00 5c 00 61 00 6e 00 61 00 6c 00 79 00 7a 00 65 00 72 00 5c 00 73 00 63 00 61 00 6e 00 00 00 } //01 00 
		$a_00_2 = {6e 00 74 00 64 00 6c 00 6c 00 2e 00 64 00 6c 00 6c 00 00 00 28 00 00 00 5a 00 77 00 55 00 6e 00 6d 00 61 00 70 00 56 00 69 00 65 00 77 00 4f 00 66 00 53 00 65 00 63 00 74 00 69 00 6f 00 6e 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}