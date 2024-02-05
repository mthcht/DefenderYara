
rule TrojanDownloader_Win32_Qulkonwi_A{
	meta:
		description = "TrojanDownloader:Win32/Qulkonwi.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 0c 00 00 02 00 "
		
	strings :
		$a_01_0 = {59 00 55 00 51 00 4c 00 32 00 33 00 4b 00 4c 00 32 00 33 00 44 00 46 00 39 00 30 00 57 00 49 00 35 00 45 00 31 00 4a 00 41 00 53 00 34 00 36 00 37 00 4e 00 4d 00 43 00 58 00 58 00 4c 00 36 00 4a 00 41 00 4f 00 41 00 55 00 } //01 00 
		$a_01_1 = {44 00 30 00 31 00 31 00 32 00 46 00 43 00 43 00 34 00 43 00 34 00 43 00 34 00 39 00 45 00 35 00 31 00 32 00 34 00 35 00 } //01 00 
		$a_01_2 = {46 00 46 00 32 00 45 00 43 00 32 00 36 00 30 00 44 00 46 00 32 00 30 00 37 00 44 00 41 00 39 00 36 00 45 00 45 00 31 00 } //01 00 
		$a_01_3 = {46 00 38 00 33 00 38 00 46 00 39 00 33 00 46 00 45 00 33 00 32 00 43 00 36 00 38 00 44 00 43 00 30 00 43 00 34 00 39 00 38 00 38 00 41 00 39 00 35 00 38 00 46 00 45 00 35 00 32 00 45 00 34 00 31 00 41 00 42 00 42 00 36 00 30 00 46 00 46 00 33 00 39 00 32 00 36 00 43 00 36 00 30 00 44 00 34 00 32 00 34 00 37 00 45 00 37 00 31 00 37 00 30 00 35 00 } //01 00 
		$a_01_4 = {43 00 38 00 36 00 38 00 38 00 39 00 41 00 43 00 35 00 31 00 42 00 39 00 44 00 42 00 34 00 30 00 33 00 45 00 35 00 43 00 42 00 46 00 41 00 39 00 41 00 34 00 45 00 35 00 32 00 34 00 30 00 32 00 37 00 31 00 39 00 31 00 46 00 41 00 31 00 43 00 31 00 42 00 30 00 41 00 36 00 41 00 46 00 39 00 35 00 45 00 45 00 33 00 30 00 38 00 43 00 46 00 37 00 38 00 } //01 00 
		$a_01_5 = {39 00 33 00 35 00 46 00 39 00 31 00 41 00 39 00 35 00 31 00 46 00 35 00 35 00 42 00 43 00 35 00 42 00 42 00 } //01 00 
		$a_01_6 = {42 00 44 00 34 00 38 00 39 00 34 00 35 00 39 00 43 00 42 00 30 00 33 00 34 00 38 00 45 00 36 00 } //01 00 
		$a_01_7 = {33 00 33 00 43 00 32 00 36 00 32 00 38 00 37 00 42 00 42 00 43 00 37 00 43 00 35 00 42 00 46 00 37 00 38 00 45 00 46 00 36 00 44 00 39 00 35 00 34 00 43 00 46 00 38 00 36 00 44 00 38 00 42 00 46 00 35 00 31 00 31 00 33 00 31 00 39 00 31 00 42 00 34 00 41 00 32 00 34 00 32 00 38 00 35 00 43 00 44 00 30 00 41 00 37 00 35 00 45 00 39 00 32 00 37 00 } //01 00 
		$a_01_8 = {41 00 35 00 34 00 34 00 46 00 38 00 33 00 36 00 32 00 35 00 36 00 35 00 41 00 30 00 34 00 44 00 38 00 39 00 44 00 43 00 } //01 00 
		$a_01_9 = {38 00 34 00 42 00 35 00 37 00 46 00 41 00 32 00 35 00 46 00 41 00 42 00 45 00 39 00 35 00 32 00 46 00 46 00 35 00 35 00 46 00 42 00 32 00 44 00 44 00 34 00 30 00 31 00 35 00 32 00 39 00 37 00 34 00 38 00 39 00 45 00 34 00 35 00 34 00 32 00 45 00 46 00 31 00 45 00 44 00 38 00 33 00 33 00 41 00 33 00 32 00 31 00 31 00 45 00 43 00 31 00 36 00 34 00 } //01 00 
		$a_01_10 = {41 00 39 00 37 00 38 00 42 00 34 00 37 00 32 00 45 00 39 00 32 00 45 00 36 00 46 00 39 00 46 00 35 00 34 00 38 00 42 00 } //01 00 
		$a_01_11 = {43 00 41 00 36 00 41 00 38 00 42 00 35 00 31 00 38 00 44 00 46 00 35 00 31 00 36 00 30 00 45 00 33 00 37 00 41 00 45 00 32 00 35 00 44 00 45 00 31 00 34 00 42 00 31 00 32 00 33 00 43 00 34 00 36 00 33 00 45 00 30 00 30 00 37 00 30 00 34 00 32 00 44 00 44 00 44 00 31 00 38 00 37 00 33 00 45 00 41 00 36 00 45 00 39 00 46 00 34 00 31 00 46 00 35 00 } //00 00 
		$a_00_12 = {7e } //15 00 
	condition:
		any of ($a_*)
 
}