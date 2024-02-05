
rule Trojan_BAT_AgentTesla_EPV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EPV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {07 06 08 91 6f 90 01 03 0a 00 00 08 25 17 59 0c 16 fe 02 0d 09 2d e8 90 00 } //01 00 
		$a_03_1 = {07 11 05 16 11 06 6f 90 01 03 0a 00 00 09 11 05 16 11 04 6f 90 01 03 0a 25 13 06 16 fe 03 13 07 11 07 2d db 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}