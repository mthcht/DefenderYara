
rule Trojan_BAT_DarkCloud_AAZV_MTB{
	meta:
		description = "Trojan:BAT/DarkCloud.AAZV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {02 50 11 00 11 02 59 17 59 11 04 9c } //02 00 
		$a_01_1 = {02 50 11 02 02 50 11 00 11 02 59 17 59 91 9c } //00 00 
	condition:
		any of ($a_*)
 
}