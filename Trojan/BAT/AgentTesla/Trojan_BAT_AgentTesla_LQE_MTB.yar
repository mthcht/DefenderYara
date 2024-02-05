
rule Trojan_BAT_AgentTesla_LQE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LQE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 00 } //01 00 
		$a_01_1 = {7b 00 7e 00 a6 00 77 00 5f 00 5f 00 71 00 5f 00 5f 00 5f 00 5f 00 65 } //01 00 
		$a_01_2 = {5f 00 45 00 45 00 52 00 5f 00 5f 00 70 00 97 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 77 00 5f 00 5f 00 5f 00 5f } //01 00 
		$a_01_3 = {4c 00 96 00 ac 00 97 00 4c 00 5f 00 aa 00 5f 00 a2 00 73 00 6b 00 90 00 97 00 61 00 7b 00 71 00 47 00 99 00 7e 00 68 00 99 00 a5 } //01 00 
		$a_01_4 = {61 00 77 00 78 00 77 00 5f 00 5f 00 7b 00 5f 00 65 00 64 00 5f 00 68 00 49 00 6e 00 9f 00 80 00 65 00 5f } //01 00 
		$a_01_5 = {46 72 6f 6d 42 61 73 65 36 34 } //00 00 
	condition:
		any of ($a_*)
 
}