
rule Ransom_Win32_StopCrypt_RPV_MTB{
	meta:
		description = "Ransom:Win32/StopCrypt.RPV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 7d f0 8b c7 c1 e0 04 03 45 e0 89 45 f8 8b 45 f0 03 45 f4 89 45 0c ff 75 0c } //01 00 
		$a_03_1 = {ff 4d ec 8b 4d fc 0f 85 90 01 04 8b 45 08 89 78 04 5f 5e 89 08 5b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}