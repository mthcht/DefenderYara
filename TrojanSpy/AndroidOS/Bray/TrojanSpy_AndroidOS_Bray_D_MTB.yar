
rule TrojanSpy_AndroidOS_Bray_D_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Bray.D!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {21 00 0c 02 1a 03 00 2f 6e 20 90 01 02 23 00 0a 02 b7 c2 38 02 90 01 02 54 02 ae 3e 6e 10 90 01 02 02 00 0c 02 28 07 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}