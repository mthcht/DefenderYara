
rule Trojan_Win64_Zusy_ASH_MTB{
	meta:
		description = "Trojan:Win64/Zusy.ASH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {33 c9 ff 15 ?? ?? 00 00 48 8b c8 ff 15 ?? ?? 00 00 48 8d 05 ?? ?? 00 00 48 89 44 24 48 48 c7 44 24 60 87 69 00 00 c6 44 24 40 00 48 c7 44 24 58 00 04 00 00 b9 02 02 00 00 48 8d 94 24 10 01 00 00 ff 15 ?? ?? 00 00 48 8b 4c 24 48 ff 15 ?? ?? 00 00 48 8b d8 48 85 c0 75 } //2
		$a_03_1 = {44 8d 47 0f ff 15 ?? ?? 00 00 49 8b 4e 08 48 8b d8 66 89 7c 24 40 48 89 44 24 38 0f b7 09 ff 15 ?? ?? 00 00 49 8b 0e 66 89 44 24 42 48 8b 09 ff 15 ?? ?? 00 00 89 44 24 44 44 8d 47 0e 48 8d 54 24 40 48 8b cb 33 c0 48 89 44 24 48 ff 15 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}