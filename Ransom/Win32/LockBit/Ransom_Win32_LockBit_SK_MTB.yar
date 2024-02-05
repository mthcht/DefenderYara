
rule Ransom_Win32_LockBit_SK_MTB{
	meta:
		description = "Ransom:Win32/LockBit.SK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_02_0 = {66 33 c3 c7 45 90 01 05 66 89 45 90 01 01 0f b7 05 90 01 04 66 33 c3 c7 45 90 01 05 66 89 45 90 01 01 0f b7 05 90 01 04 66 33 c3 c7 45 90 01 05 66 89 45 90 01 01 0f b7 05 90 01 04 66 33 c3 c7 45 90 01 05 66 89 45 90 01 01 0f b7 05 90 00 } //02 00 
		$a_02_1 = {85 c0 74 0a 8d 8c 24 90 01 04 51 ff d0 8d 84 24 90 01 04 c7 84 24 90 01 04 3c 00 00 00 89 84 24 90 01 04 8d 44 24 90 01 01 89 84 24 90 01 04 8b 44 24 90 01 01 89 84 24 90 01 04 8d 84 24 90 01 04 50 c7 84 24 90 01 04 00 00 00 00 c7 84 24 90 01 04 00 00 00 00 c7 84 24 90 01 04 00 00 00 00 c7 84 24 90 01 04 00 00 00 00 c7 84 24 90 01 04 00 00 00 00 ff 15 90 01 04 68 e8 03 00 00 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}