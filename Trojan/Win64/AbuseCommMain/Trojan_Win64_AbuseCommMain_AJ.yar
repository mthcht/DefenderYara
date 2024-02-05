
rule Trojan_Win64_AbuseCommMain_AJ{
	meta:
		description = "Trojan:Win64/AbuseCommMain.AJ,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 30 00 34 00 37 00 43 00 34 00 38 00 35 00 45 00 46 00 38 00 36 00 38 00 44 00 35 00 35 00 36 00 36 00 32 00 37 00 44 00 37 00 31 00 45 00 38 00 39 00 31 00 43 00 32 00 44 00 31 00 31 00 32 00 42 00 44 00 32 00 35 00 39 00 34 00 39 00 31 00 32 00 42 00 31 00 44 00 46 00 45 00 31 00 43 00 31 00 41 00 45 00 30 00 45 00 31 00 34 00 30 00 35 00 44 00 38 00 41 00 33 00 33 00 36 00 34 00 } //01 00 
		$a_02_1 = {30 34 37 43 34 38 35 45 46 38 36 38 44 35 35 36 36 32 37 44 37 31 45 38 39 31 43 32 44 31 31 32 42 44 32 35 39 34 39 31 32 42 31 44 46 45 31 43 31 41 45 30 45 31 34 30 35 44 38 41 33 33 36 34 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {30 34 37 43 34 38 35 45 46 38 36 38 44 35 35 36 36 32 37 44 37 31 45 38 39 31 43 32 44 31 31 32 42 44 32 35 39 34 39 31 32 42 31 44 46 45 31 43 31 41 45 30 45 31 34 30 35 44 38 41 33 33 36 34 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 30 34 37 43 34 38 35 45 46 38 36 38 44 35 35 36 36 32 37 44 37 31 45 38 39 31 43 32 44 31 31 32 42 44 32 35 39 34 39 31 32 42 31 44 46 45 31 43 31 41 45 30 45 31 34 30 35 44 38 41 33 33 36 34 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}