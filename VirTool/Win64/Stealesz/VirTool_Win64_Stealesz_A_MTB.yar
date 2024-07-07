
rule VirTool_Win64_Stealesz_A_MTB{
	meta:
		description = "VirTool:Win64/Stealesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {40 55 57 48 81 ec 08 02 00 00 90 02 10 b9 4a 00 00 00 b8 90 01 04 f3 ab 48 8b 05 11 11 01 00 48 33 c5 48 89 85 d8 01 00 00 90 02 12 b9 90 01 09 48 89 45 08 90 01 05 48 89 45 28 48 83 7d 28 00 90 00 } //1
		$a_03_1 = {48 8b 4d 28 90 01 05 8b d0 48 8b 4d 28 90 01 05 48 89 45 48 48 83 7d 48 00 90 01 02 4c 8b 45 48 90 02 19 48 89 45 68 48 83 7d 68 00 90 01 02 48 8b 55 68 90 02 12 48 8b 4d 48 90 00 } //1
		$a_03_2 = {b9 e8 03 00 00 90 01 03 b0 01 90 01 07 32 c0 48 8b f8 90 02 16 48 8b c7 48 8b 8d 78 02 00 00 48 33 cd 90 00 } //1
		$a_03_3 = {48 89 45 08 48 83 7d 08 00 90 01 06 c6 85 28 01 90 01 03 c6 85 29 01 90 01 03 c6 85 2a 01 90 01 03 c6 85 2b 01 90 01 03 c6 85 2c 01 90 01 03 c6 85 2d 01 90 01 03 c6 85 2e 01 90 01 03 c6 85 2f 01 90 01 03 c6 85 30 01 90 01 03 c6 85 31 01 90 01 03 c6 85 32 01 90 01 03 c6 85 33 01 90 01 03 c6 85 34 01 90 01 03 c6 85 35 01 90 01 03 c6 85 36 01 90 01 03 c6 85 37 01 90 01 03 c6 85 38 01 90 01 03 c6 85 39 01 90 01 03 c6 85 3a 01 90 01 03 c6 85 3b 01 90 01 03 c6 85 3c 01 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}