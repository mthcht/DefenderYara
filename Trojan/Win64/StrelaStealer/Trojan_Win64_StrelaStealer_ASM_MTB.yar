
rule Trojan_Win64_StrelaStealer_ASM_MTB{
	meta:
		description = "Trojan:Win64/StrelaStealer.ASM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {ff 03 00 00 42 0f b6 ?? ?? 04 42 32 ?? ?? 04 04 00 00 34 0c 42 88 84 ?? 04 04 00 00 48 83 ?? 01 84 ?? 75 } //4
		$a_03_1 = {ff 03 00 00 42 0f b6 ?? ?? 04 42 32 ?? ?? 04 04 00 00 34 0c 42 88 84 ?? 04 04 00 00 48 83 c3 01 45 84 ?? 75 } //4
		$a_03_2 = {ff 03 00 00 [0-01] 0f b6 4c 39 04 [0-01] 32 8c 38 04 04 00 00 80 f1 0c [0-01] 88 8c 38 04 04 00 00 8d 48 01 81 e1 ff 03 00 00 [0-01] 0f b6 4c 39 04 [0-01] 32 8c 38 05 04 00 00 80 f1 0c [0-01] 88 8c 38 05 04 00 00 48 83 c0 02 49 39 [0-01] 75 } //4
		$a_03_3 = {ff 03 00 00 42 0f b6 ?? ?? 04 42 32 ?? ?? 04 04 00 00 80 ?? 0c 42 88 ?? ?? 04 04 00 00 48 83 c5 01 84 ?? 75 } //4
		$a_01_4 = {65 6e 74 72 79 } //1 entry
	condition:
		((#a_03_0  & 1)*4+(#a_03_1  & 1)*4+(#a_03_2  & 1)*4+(#a_03_3  & 1)*4+(#a_01_4  & 1)*1) >=5
 
}