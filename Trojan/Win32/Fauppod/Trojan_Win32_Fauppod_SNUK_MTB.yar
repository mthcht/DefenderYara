
rule Trojan_Win32_Fauppod_SNUK_MTB{
	meta:
		description = "Trojan:Win32/Fauppod.SNUK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a 4d 08 88 c2 02 15 ?? ?? ?? ?? 88 15 ?? ?? ?? ?? 88 0d ?? ?? ?? ?? a2 ?? ?? ?? ?? 30 c8 c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 8b 35 ?? ?? ?? ?? 81 c6 ?? ?? ?? ?? 89 35 ?? ?? ?? ?? 0f b6 c0 5e } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}