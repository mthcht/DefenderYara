
rule VirTool_Win32_Shadeloadesz_A_MTB{
	meta:
		description = "VirTool:Win32/Shadeloadesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {50 ff b5 f4 fb ff ff 56 53 ?? ?? ?? ?? ?? ?? 85 c0 ?? ?? ?? ?? ?? ?? 8b 85 b0 fb ff ff 33 c9 8b 00 03 85 f0 fb ff ff 0f 92 c1 f7 d9 0b c8 51 57 ?? ?? ?? ?? ?? ?? 8b c8 83 c4 08 85 c9 ?? ?? 8b 85 b0 fb ff ff 8b f9 ff b5 f0 fb ff ff 56 8b 00 03 c1 50 } //1
		$a_03_1 = {6a 00 6a 00 6a 00 ?? ?? ?? ?? ?? ?? 50 ?? ?? ?? ?? ?? 6a 00 [0-17] 32 c0 8b 4d f4 64 89 0d 00 00 00 00 59 8b 4d f0 33 cd } //1
		$a_03_2 = {56 51 8b 0d 14 51 40 00 [0-10] 83 c4 04 8b c8 ?? ?? ?? ?? ?? ?? 8b c8 ?? ?? ?? ?? ?? ?? 8b c8 ?? ?? ?? ?? ?? ?? 6a 00 57 53 56 ff 75 a0 [0-16] 85 c0 } //1
		$a_03_3 = {83 c4 04 8b c8 ?? ?? ?? ?? ?? ?? f3 0f 7e 05 d0 53 40 00 33 c9 a1 d8 53 40 00 66 0f d6 44 24 14 89 44 24 1c 85 ff ?? ?? bb 0b 00 00 00 ?? ?? ?? 8b c1 33 d2 f7 f3 8a 44 14 14 30 04 0e 41 3b cf } //1
		$a_03_4 = {6a 00 ff 15 ?? ?? ?? ?? ?? ?? ?? ?? ?? 51 8b 0d 14 51 40 00 [0-10] 83 c4 04 8b c8 [0-10] c7 44 24 10 00 00 00 00 ?? ?? ?? ?? ?? 8b f0 85 f6 ?? ?? ?? ?? ?? ?? 8b 7c 24 10 85 ff [0-11] 57 51 8b 0d 14 51 40 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}