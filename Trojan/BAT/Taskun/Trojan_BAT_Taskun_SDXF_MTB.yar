
rule Trojan_BAT_Taskun_SDXF_MTB{
	meta:
		description = "Trojan:BAT/Taskun.SDXF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {07 11 05 91 11 07 61 13 08 11 05 17 58 08 5d 13 09 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}