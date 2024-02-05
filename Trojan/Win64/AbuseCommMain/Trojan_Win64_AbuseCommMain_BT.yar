
rule Trojan_Win64_AbuseCommMain_BT{
	meta:
		description = "Trojan:Win64/AbuseCommMain.BT,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 33 00 43 00 39 00 44 00 34 00 39 00 42 00 39 00 32 00 38 00 46 00 44 00 43 00 33 00 43 00 31 00 35 00 46 00 30 00 33 00 31 00 34 00 32 00 31 00 37 00 36 00 32 00 33 00 41 00 37 00 31 00 42 00 38 00 36 00 35 00 39 00 30 00 39 00 42 00 33 00 30 00 38 00 35 00 37 00 36 00 42 00 34 00 42 00 30 00 44 00 31 00 30 00 41 00 45 00 41 00 36 00 32 00 43 00 39 00 38 00 36 00 37 00 37 00 42 00 } //01 00 
		$a_02_1 = {33 43 39 44 34 39 42 39 32 38 46 44 43 33 43 31 35 46 30 33 31 34 32 31 37 36 32 33 41 37 31 42 38 36 35 39 30 39 42 33 30 38 35 37 36 42 34 42 30 44 31 30 41 45 41 36 32 43 39 38 36 37 37 42 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {33 43 39 44 34 39 42 39 32 38 46 44 43 33 43 31 35 46 30 33 31 34 32 31 37 36 32 33 41 37 31 42 38 36 35 39 30 39 42 33 30 38 35 37 36 42 34 42 30 44 31 30 41 45 41 36 32 43 39 38 36 37 37 42 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 33 43 39 44 34 39 42 39 32 38 46 44 43 33 43 31 35 46 30 33 31 34 32 31 37 36 32 33 41 37 31 42 38 36 35 39 30 39 42 33 30 38 35 37 36 42 34 42 30 44 31 30 41 45 41 36 32 43 39 38 36 37 37 42 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}