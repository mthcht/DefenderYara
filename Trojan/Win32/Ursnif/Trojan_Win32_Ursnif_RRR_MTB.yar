
rule Trojan_Win32_Ursnif_RRR_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.RRR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_02_0 = {0f af ca 69 c9 e6 3d 00 00 89 0d 90 01 04 8b 0d 90 01 04 05 a4 10 51 01 a3 90 01 04 89 84 39 c3 f2 ff ff 90 00 } //01 00 
		$a_02_1 = {81 c7 24 1c 12 01 89 3d 90 01 04 89 bc 19 68 fc ff ff 8b 15 90 01 04 8b 35 90 01 04 8d 0c 42 8d 84 08 46 c8 ff ff 8b 0d 90 01 04 03 ce 89 4c 24 10 81 f9 06 01 00 00 75 90 00 } //01 00 
		$a_02_2 = {81 c6 a0 37 d0 01 89 35 90 01 04 89 b4 3a 09 e4 ff ff a1 90 01 04 8b 15 90 01 04 6b c0 a6 03 d0 90 00 } //01 00 
		$a_02_3 = {81 c1 c4 93 e1 01 89 0d 90 01 04 89 8c 3a 2b f8 ff ff 8b 1d 90 01 04 0f b7 f6 0f b7 d6 b9 4e 00 00 00 2b ca 2b cb 83 c7 04 03 c1 81 ff ad 08 00 00 0f 82 90 00 } //01 00 
		$a_02_4 = {8b 54 24 1c 05 4c e0 25 01 8b 1d 90 01 04 89 44 24 24 a3 90 01 04 89 84 13 f4 f0 ff ff 8d 56 f9 8b 5c 24 20 8d 14 57 0f b7 c6 66 89 15 90 01 04 39 05 90 01 04 77 90 00 } //01 00 
		$a_02_5 = {69 ff 7a 3a 00 00 03 fb 0f b7 c7 89 44 24 20 03 c1 8d 84 00 dc 70 00 00 89 44 24 14 83 44 24 18 04 69 db 7a 3a 00 00 03 5c 24 24 81 7c 24 18 e2 22 00 00 66 89 3d 90 01 04 0f 82 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}