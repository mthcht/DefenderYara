
rule Trojan_Win64_AbuseCommBack_BG{
	meta:
		description = "Trojan:Win64/AbuseCommBack.BG,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 45 00 39 00 43 00 44 00 36 00 35 00 36 00 38 00 37 00 34 00 36 00 33 00 46 00 36 00 37 00 46 00 36 00 34 00 39 00 33 00 37 00 45 00 39 00 36 00 31 00 44 00 44 00 37 00 32 00 33 00 44 00 43 00 38 00 32 00 43 00 37 00 39 00 43 00 42 00 35 00 34 00 38 00 33 00 37 00 35 00 41 00 41 00 45 00 38 00 41 00 41 00 34 00 41 00 30 00 36 00 39 00 38 00 44 00 33 00 35 00 36 00 43 00 35 00 45 00 3c 00 2f 00 70 00 3e 00 } //01 00 
		$a_01_1 = {45 39 43 44 36 35 36 38 37 34 36 33 46 36 37 46 36 34 39 33 37 45 39 36 31 44 44 37 32 33 44 43 38 32 43 37 39 43 42 35 34 38 33 37 35 41 41 45 38 41 41 34 41 30 36 39 38 44 33 35 36 43 35 45 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 45 39 43 44 36 35 36 38 37 34 36 33 46 36 37 46 36 34 39 33 37 45 39 36 31 44 44 37 32 33 44 43 38 32 43 37 39 43 42 35 34 38 33 37 35 41 41 45 38 41 41 34 41 30 36 39 38 44 33 35 36 43 35 45 69 64 } //01 00 
	condition:
		any of ($a_*)
 
}