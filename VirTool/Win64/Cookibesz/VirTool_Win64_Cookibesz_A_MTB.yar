
rule VirTool_Win64_Cookibesz_A_MTB{
	meta:
		description = "VirTool:Win64/Cookibesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {41 b9 00 01 00 00 [0-16] 48 8b 4c 24 30 ?? ?? ?? ?? ?? 85 c0 [0-10] 48 89 44 24 20 ?? ?? ?? ?? ?? ?? ?? ?? 44 8b 84 24 b8 00 00 00 ?? ?? ?? ?? ?? ?? ?? 33 c9 ?? ?? ?? ?? ?? ?? ?? 44 8b 84 24 b8 00 00 00 } //1
		$a_03_1 = {c6 44 24 30 01 48 8b 05 4a 66 1c 00 48 89 84 24 a8 00 00 00 ?? ?? ?? ?? ?? ?? ?? 48 8b 4c 24 68 ?? ?? ?? ?? ?? ?? ?? 85 c0 ?? ?? ?? ?? ?? ?? ?? ?? ?? 33 c9 [0-12] 48 89 84 24 98 00 00 00 } //1
		$a_03_2 = {48 89 44 24 28 8b 44 24 48 89 44 24 20 4c 8b 4c 24 78 41 b8 08 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 48 8b 4c 24 38 ?? ?? ?? ?? ?? 85 c0 ?? ?? ?? ?? ?? ?? ?? ?? ?? b9 0d 00 00 00 ?? ?? ?? ?? ?? 48 8b 05 31 8c 1c 00 48 89 84 24 d0 00 00 00 48 8b 4c 24 38 [0-12] 4c 8b 44 24 50 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}