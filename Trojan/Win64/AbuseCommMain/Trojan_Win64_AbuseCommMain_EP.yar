
rule Trojan_Win64_AbuseCommMain_EP{
	meta:
		description = "Trojan:Win64/AbuseCommMain.EP,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 38 00 44 00 35 00 34 00 35 00 46 00 46 00 34 00 33 00 34 00 43 00 36 00 42 00 39 00 39 00 30 00 30 00 35 00 34 00 43 00 36 00 31 00 38 00 31 00 42 00 46 00 42 00 34 00 30 00 39 00 43 00 42 00 45 00 33 00 39 00 34 00 41 00 36 00 39 00 37 00 45 00 42 00 37 00 30 00 33 00 38 00 37 00 37 00 34 00 39 00 39 00 46 00 39 00 37 00 41 00 44 00 34 00 34 00 36 00 32 00 41 00 38 00 31 00 31 00 } //01 00  tox:8D545FF434C6B990054C6181BFB409CBE394A697EB703877499F97AD4462A811
		$a_02_1 = {38 44 35 34 35 46 46 34 33 34 43 36 42 39 39 30 30 35 34 43 36 31 38 31 42 46 42 34 30 39 43 42 45 33 39 34 41 36 39 37 45 42 37 30 33 38 37 37 34 39 39 46 39 37 41 44 34 34 36 32 41 38 31 31 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {38 44 35 34 35 46 46 34 33 34 43 36 42 39 39 30 30 35 34 43 36 31 38 31 42 46 42 34 30 39 43 42 45 33 39 34 41 36 39 37 45 42 37 30 33 38 37 37 34 39 39 46 39 37 41 44 34 34 36 32 41 38 31 31 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 38 44 35 34 35 46 46 34 33 34 43 36 42 39 39 30 30 35 34 43 36 31 38 31 42 46 42 34 30 39 43 42 45 33 39 34 41 36 39 37 45 42 37 30 33 38 37 37 34 39 39 46 39 37 41 44 34 34 36 32 41 38 31 31 2e 68 73 74 72 } //00 00  \tox\8D545FF434C6B990054C6181BFB409CBE394A697EB703877499F97AD4462A811.hstr
	condition:
		any of ($a_*)
 
}