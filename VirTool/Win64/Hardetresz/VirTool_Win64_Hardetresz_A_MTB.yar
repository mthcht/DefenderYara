
rule VirTool_Win64_Hardetresz_A_MTB{
	meta:
		description = "VirTool:Win64/Hardetresz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {48 89 c1 48 ?? ?? ?? ?? ?? ?? ?? ?? 48 89 85 d8 0f 00 00 48 83 bd d8 0f 00 00 00 ?? ?? b8 00 00 00 00 ?? ?? ?? ?? ?? 48 8b 95 00 10 00 00 48 8b 85 d8 0f 00 00 48 c7 44 24 28 00 00 00 00 c7 44 24 20 00 24 00 00 41 b9 00 00 00 00 41 b8 00 00 00 00 48 89 c1 ?? ?? ?? ?? ?? ?? ?? ?? ?? 48 89 85 d0 0f 00 00 48 83 bd d0 0f 00 00 00 } //1
		$a_03_1 = {55 48 89 e5 48 81 ec a0 00 00 00 ?? ?? ?? ?? ?? 48 89 45 d8 c7 45 ec d0 07 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 48 89 c1 ?? ?? ?? ?? ?? ?? ?? ?? ?? 48 89 c1 } //1
		$a_03_2 = {55 57 56 53 48 81 ec 38 01 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 48 89 8d e0 00 00 00 48 89 95 e8 00 00 00 4c 89 85 f0 00 00 00 44 89 8d f8 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? 48 89 c1 [0-12] 48 89 85 a8 00 00 00 ?? ?? ?? ?? 48 8b 85 a8 00 00 00 48 89 c1 } //1
		$a_03_3 = {49 89 f1 48 89 c1 ?? ?? 48 8b 1d f7 85 0e 00 ?? ?? ?? ?? 48 89 c1 ?? ?? ?? ?? ?? 48 89 c2 48 8b 85 ?? 00 00 00 41 b9 00 00 00 00 41 b8 20 00 00 00 48 89 c1 ?? ?? 48 8b 85 ?? 00 00 00 48 89 45 78 ?? ?? ?? ?? ?? ?? ?? 48 8b 95 98 00 00 00 48 8b 45 78 41 b8 00 00 00 00 48 89 c1 } //1
		$a_03_4 = {89 c0 48 89 45 f0 ba 00 00 00 00 b9 00 00 00 00 [0-16] 48 89 c1 [0-18] 89 c0 48 89 45 f0 ba 00 00 00 00 b9 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? 48 98 48 89 45 f0 b9 00 00 00 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}