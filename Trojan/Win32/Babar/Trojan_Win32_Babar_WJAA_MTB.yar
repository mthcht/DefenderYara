
rule Trojan_Win32_Babar_WJAA_MTB{
	meta:
		description = "Trojan:Win32/Babar.WJAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {55 8b ec 6a ff 68 ?? b4 65 00 68 ?? 52 65 00 64 a1 00 00 00 00 50 64 89 25 00 00 00 00 83 ec 58 53 56 57 89 65 e8 ff 15 ?? ?? 65 00 33 d2 8a d4 89 15 ?? 3c a6 00 8b c8 81 e1 ff 00 00 00 89 0d ?? 3c a6 00 c1 e1 08 03 ca 89 0d ?? 3c a6 00 c1 e8 10 a3 ?? 3c a6 00 6a 01 } //5
		$a_03_1 = {55 8b ec 6a ff 68 ?? c4 65 00 68 ?? 63 65 00 64 a1 00 00 00 00 50 64 89 25 00 00 00 00 83 ec 58 53 56 57 89 65 e8 ff 15 ?? ?? 65 00 33 d2 8a d4 89 15 ?? 4d a6 00 8b c8 81 e1 ff 00 00 00 89 0d ?? 4d a6 00 c1 e1 08 03 ca 89 0d ?? 4d a6 00 c1 e8 10 a3 ?? 4d a6 00 6a 01 } //5
		$a_03_2 = {55 8b ec 6a ff 68 ?? d8 65 00 68 ?? 6b 65 00 64 a1 00 00 00 00 50 64 89 25 00 00 00 00 83 ec 58 53 56 57 89 65 e8 ff 15 ?? ?? 65 00 33 d2 8a d4 89 15 ?? 6d a6 00 8b c8 81 e1 ff 00 00 00 89 0d ?? 6d a6 00 c1 e1 08 03 ca 89 0d ?? 6d a6 00 c1 e8 10 a3 ?? 6d a6 00 6a 01 } //5
		$a_03_3 = {55 8b ec 6a ff 68 ?? b4 65 00 68 ?? 52 65 00 64 a1 00 00 00 00 50 64 89 25 00 00 00 00 83 ec 58 53 56 57 89 65 e8 ff 15 ?? ?? 65 00 33 d2 8a d4 89 15 ?? 3d a6 00 8b c8 81 e1 ff 00 00 00 89 0d ?? 3c a6 00 c1 e1 08 03 ca 89 0d ?? 3c a6 00 c1 e8 10 a3 ?? 3c a6 00 6a 01 } //5
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_03_2  & 1)*5+(#a_03_3  & 1)*5) >=5
 
}