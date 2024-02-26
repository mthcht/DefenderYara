
rule Trojan_Win64_AbuseCommBack_DI{
	meta:
		description = "Trojan:Win64/AbuseCommBack.DI,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 46 00 31 00 44 00 30 00 46 00 34 00 35 00 44 00 42 00 43 00 33 00 46 00 34 00 43 00 41 00 37 00 38 00 34 00 44 00 35 00 44 00 30 00 44 00 30 00 44 00 44 00 38 00 41 00 44 00 43 00 44 00 33 00 31 00 41 00 42 00 35 00 36 00 34 00 35 00 42 00 45 00 30 00 30 00 32 00 39 00 33 00 46 00 45 00 36 00 33 00 30 00 32 00 43 00 44 00 30 00 33 00 38 00 31 00 46 00 36 00 35 00 32 00 37 00 41 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>F1D0F45DBC3F4CA784D5D0D0DD8ADCD31AB5645BE00293FE6302CD0381F6527A</p>
		$a_01_1 = {46 31 44 30 46 34 35 44 42 43 33 46 34 43 41 37 38 34 44 35 44 30 44 30 44 44 38 41 44 43 44 33 31 41 42 35 36 34 35 42 45 30 30 32 39 33 46 45 36 33 30 32 43 44 30 33 38 31 46 36 35 32 37 41 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 46 31 44 30 46 34 35 44 42 43 33 46 34 43 41 37 38 34 44 35 44 30 44 30 44 44 38 41 44 43 44 33 31 41 42 35 36 34 35 42 45 30 30 32 39 33 46 45 36 33 30 32 43 44 30 33 38 31 46 36 35 32 37 41 69 64 } //01 00  tableidF1D0F45DBC3F4CA784D5D0D0DD8ADCD31AB5645BE00293FE6302CD0381F6527Aid
	condition:
		any of ($a_*)
 
}