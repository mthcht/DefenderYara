
rule Trojan_Win64_AbuseCommMain_AW{
	meta:
		description = "Trojan:Win64/AbuseCommMain.AW,SIGNATURE_TYPE_PEHSTR,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 00 6f 00 78 00 3a 00 41 00 35 00 38 00 35 00 32 00 41 00 33 00 30 00 30 00 45 00 34 00 30 00 32 00 41 00 44 00 38 00 41 00 41 00 39 00 37 00 33 00 45 00 31 00 31 00 34 00 37 00 44 00 30 00 32 00 34 00 46 00 46 00 45 00 37 00 44 00 43 00 46 00 33 00 34 00 42 00 43 00 43 00 32 00 30 00 33 00 43 00 37 00 42 00 39 00 44 00 46 00 42 00 38 00 35 00 36 00 30 00 41 00 33 00 42 00 31 00 30 00 33 00 36 00 31 00 } //01 00 
		$a_01_1 = {41 35 38 35 32 41 33 30 30 45 34 30 32 41 44 38 41 41 39 37 33 45 31 31 34 37 44 30 32 34 46 46 45 37 44 43 46 33 34 42 43 43 32 30 33 43 37 42 39 44 46 42 38 35 36 30 41 33 42 31 30 33 36 31 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {41 35 38 35 32 41 33 30 30 45 34 30 32 41 44 38 41 41 39 37 33 45 31 31 34 37 44 30 32 34 46 46 45 37 44 43 46 33 34 42 43 43 32 30 33 43 37 42 39 44 46 42 38 35 36 30 41 33 42 31 30 33 36 31 90 01 0c 4c 00 00 00 } //01 00 
		$a_01_3 = {5c 74 6f 78 5c 41 35 38 35 32 41 33 30 30 45 34 30 32 41 44 38 41 41 39 37 33 45 31 31 34 37 44 30 32 34 46 46 45 37 44 43 46 33 34 42 43 43 32 30 33 43 37 42 39 44 46 42 38 35 36 30 41 33 42 31 30 33 36 31 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}