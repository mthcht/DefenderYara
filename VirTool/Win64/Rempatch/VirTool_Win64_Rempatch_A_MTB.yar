
rule VirTool_Win64_Rempatch_A_MTB{
	meta:
		description = "VirTool:Win64/Rempatch.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {48 8b 0d 03 19 00 00 ?? ?? ?? ?? ?? 40 84 ff [0-19] 48 8b c8 [0-13] 48 8b d8 c7 45 1f ?? ?? ?? ?? c7 45 23 ?? ?? ?? ?? c7 45 27 ?? ?? ?? ?? c6 45 2b ?? 89 75 e7 48 c7 45 f7 ?? ?? ?? ?? 48 89 45 df } //1
		$a_03_1 = {80 7d d8 00 [0-13] 48 8b c8 [0-13] 48 8b d8 66 c7 45 e7 ?? ?? c6 45 e9 ?? 89 75 df 48 c7 45 f7 ?? ?? ?? ?? 48 89 45 1f ?? ?? ?? ?? 48 89 44 24 20 41 b9 04 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 49 8b cf ?? ?? ?? ?? ?? 48 89 74 24 20 41 b9 03 00 00 00 } //1
		$a_03_2 = {80 7d ef 00 [0-19] 48 8b c8 [0-13] 48 8b d8 c6 45 ef ?? 89 75 e7 48 c7 45 df ?? ?? ?? ?? 48 89 45 f7 ?? ?? ?? ?? 48 89 44 24 20 41 b9 04 00 00 00 } //1
		$a_03_3 = {48 8b d8 c7 44 24 28 ?? ?? ?? ?? c7 44 24 20 ?? ?? ?? ?? ?? ?? ?? ?? 45 33 c0 ?? ?? ?? ?? 49 8b cf ?? ?? ?? ?? ?? 48 89 74 24 20 [0-11] 48 8b 55 df 49 8b cf } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}