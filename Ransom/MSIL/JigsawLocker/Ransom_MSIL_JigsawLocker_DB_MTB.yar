
rule Ransom_MSIL_JigsawLocker_DB_MTB{
	meta:
		description = "Ransom:MSIL/JigsawLocker.DB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_81_0 = {45 78 74 65 6e 73 69 6f 6e 73 54 6f 45 6e 63 72 79 70 74 } //01 00 
		$a_81_1 = {49 27 6d 20 72 75 6e 6e 69 6e 67 20 69 6e 20 44 65 62 75 67 20 6d 6f 64 65 } //01 00 
		$a_81_2 = {46 6f 72 6d 45 6e 63 72 79 70 74 65 64 46 69 6c 65 73 } //01 00 
		$a_81_3 = {63 61 74 73 } //00 00 
	condition:
		any of ($a_*)
 
}