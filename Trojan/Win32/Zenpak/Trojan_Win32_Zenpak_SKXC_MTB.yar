
rule Trojan_Win32_Zenpak_SKXC_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.SKXC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a 45 0c 8a 4d 08 88 c2 02 15 ?? ?? ?? ?? 88 15 ?? ?? ?? ?? 88 0d ?? ?? ?? ?? a2 ?? ?? ?? ?? 30 c8 8b 35 ?? ?? ?? ?? 81 c6 ?? ?? ?? ?? 89 35 ?? ?? ?? ?? 0f b6 c0 5e } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}