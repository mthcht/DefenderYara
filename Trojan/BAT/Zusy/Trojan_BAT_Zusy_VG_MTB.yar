
rule Trojan_BAT_Zusy_VG_MTB{
	meta:
		description = "Trojan:BAT/Zusy.VG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 07 00 00 "
		
	strings :
		$a_00_0 = {39 00 31 00 33 00 30 00 33 00 2e 00 30 00 2e 00 34 00 76 00 5c 00 } //5 91303.0.4v\
		$a_00_1 = {6b 00 72 00 6f 00 77 00 65 00 6d 00 61 00 72 00 46 00 5c 00 54 00 45 00 4e 00 2e 00 74 00 66 00 6f 00 73 00 6f 00 72 00 63 00 69 00 4d 00 5c 00 73 00 77 00 6f 00 64 00 6e 00 69 00 57 00 5c 00 3a 00 43 00 } //8 krowemarF\TEN.tfosorciM\swodniW\:C
		$a_00_2 = {2f 00 2f 00 3a 00 70 00 74 00 74 00 68 00 } //8 //:ptth
		$a_00_3 = {2f 00 2f 00 3a 00 73 00 70 00 74 00 74 00 68 00 } //8 //:sptth
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_5 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //1 DownloadString
		$a_01_6 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
	condition:
		((#a_00_0  & 1)*5+(#a_00_1  & 1)*8+(#a_00_2  & 1)*8+(#a_00_3  & 1)*8+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=14
 
}