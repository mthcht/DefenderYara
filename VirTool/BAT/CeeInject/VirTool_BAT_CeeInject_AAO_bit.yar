
rule VirTool_BAT_CeeInject_AAO_bit{
	meta:
		description = "VirTool:BAT/CeeInject.AAO!bit,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {48 3a 5c 53 53 44 5c 43 23 5c 57 6f 72 20 2d 31 20 2d 20 32 30 31 35 2d 30 35 2d 31 34 5c 4e 65 44 20 57 6f 72 6d 20 56 65 72 73 69 6f 6e 20 31 } //02 00 
		$a_01_1 = {44 6e 73 54 65 73 74 } //02 00 
		$a_01_2 = {47 65 74 4d 64 35 53 75 6d } //02 00 
		$a_01_3 = {42 61 73 65 36 34 45 6e 63 6f 64 65 } //01 00 
		$a_01_4 = {62 30 35 39 30 32 31 30 34 37 64 31 34 33 37 34 61 35 66 62 62 63 30 65 36 36 38 37 31 30 31 30 } //01 00 
		$a_01_5 = {38 31 63 39 33 66 35 30 34 64 37 63 34 34 63 35 38 36 62 61 33 37 61 37 33 32 32 61 34 61 64 62 } //01 00 
		$a_01_6 = {64 61 63 32 61 66 65 33 39 65 32 34 34 63 30 35 38 62 64 30 32 63 35 37 62 61 64 36 31 66 66 61 } //01 00 
		$a_01_7 = {35 33 36 31 38 65 34 31 39 31 61 39 34 61 35 32 62 38 32 32 61 65 34 38 35 37 38 34 38 35 32 66 } //00 00 
	condition:
		any of ($a_*)
 
}