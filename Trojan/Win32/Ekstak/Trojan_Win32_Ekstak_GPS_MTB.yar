
rule Trojan_Win32_Ekstak_GPS_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.GPS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 "
		
	strings :
		$a_03_0 = {72 44 6c 50 74 53 cd e6 d7 7b 0b 2a 01 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 00 da 0a 00 60 e5 45 2c } //4
	condition:
		((#a_03_0  & 1)*4) >=4
 
}