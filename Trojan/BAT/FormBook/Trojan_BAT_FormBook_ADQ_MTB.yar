
rule Trojan_BAT_FormBook_ADQ_MTB{
	meta:
		description = "Trojan:BAT/FormBook.ADQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {0b 16 0c 2b 49 00 16 0d 2b 31 00 07 08 09 28 } //01 00 
		$a_01_1 = {44 00 43 00 50 00 55 00 56 00 4d 00 } //01 00 
		$a_01_2 = {55 59 52 30 30 31 30 34 35 33 } //00 00 
	condition:
		any of ($a_*)
 
}