
rule VirTool_Win32_VBInject_AFJ{
	meta:
		description = "VirTool:Win32/VBInject.AFJ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 54 1d 00 90 03 02 01 66 0f 0f 90 00 } //01 00 
		$a_01_1 = {31 c2 66 0f } //01 00 
		$a_03_2 = {89 54 1d 00 90 03 02 01 66 0f 0f 90 00 } //01 00 
		$a_03_3 = {43 83 c3 03 81 7c 1d fc 90 01 04 75 90 00 } //ff ff 
		$a_01_4 = {61 00 78 00 69 00 6c 00 37 00 33 00 35 00 39 00 2e 00 63 00 6f 00 6d 00 2f 00 } //00 00 
	condition:
		any of ($a_*)
 
}