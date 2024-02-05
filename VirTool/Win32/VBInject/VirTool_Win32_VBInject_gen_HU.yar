
rule VirTool_Win32_VBInject_gen_HU{
	meta:
		description = "VirTool:Win32/VBInject.gen!HU,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {57 00 72 00 69 00 74 00 65 00 50 00 72 00 6f 00 00 00 00 00 14 00 00 00 63 00 65 00 73 00 73 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 00 00 } //01 00 
		$a_01_1 = {33 00 39 00 38 00 34 00 33 00 32 00 6e 00 35 00 6a 00 6d 00 33 00 34 00 6e 00 20 00 35 00 6d 00 33 00 34 00 35 00 6b 00 33 00 34 00 6a 00 36 00 33 00 34 00 38 00 20 00 20 00 20 00 69 00 33 00 34 00 35 00 33 00 34 00 35 00 36 00 38 00 } //01 00 
		$a_01_2 = {6a 00 34 00 35 00 36 00 35 00 35 00 36 00 37 00 00 00 } //01 00 
		$a_01_3 = {75 00 69 00 33 00 34 00 35 00 33 00 34 00 20 00 35 00 36 00 20 00 34 00 35 00 36 00 20 00 34 00 35 00 36 00 34 00 35 00 36 00 20 00 34 00 35 00 37 00 20 00 } //01 00 
		$a_01_4 = {6e 00 35 00 6d 00 37 00 6e 00 36 00 36 00 37 00 38 00 37 00 36 00 38 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}