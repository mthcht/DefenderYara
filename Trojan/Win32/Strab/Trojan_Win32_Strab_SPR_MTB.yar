
rule Trojan_Win32_Strab_SPR_MTB{
	meta:
		description = "Trojan:Win32/Strab.SPR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 04 00 "
		
	strings :
		$a_03_0 = {8a 04 0f c0 c8 03 32 83 90 01 04 88 04 0f 8d 43 01 bb 90 01 04 99 f7 fb 41 8b da 3b ce 72 df 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}