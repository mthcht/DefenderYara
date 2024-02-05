
rule TrojanSpy_Win32_Boft_A{
	meta:
		description = "TrojanSpy:Win32/Boft.A,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 04 00 00 05 00 "
		
	strings :
		$a_01_0 = {33 00 42 00 45 00 33 00 30 00 34 00 32 00 43 00 43 00 44 00 36 00 33 00 38 00 44 00 42 00 38 00 35 00 38 00 45 00 37 00 31 00 31 00 43 00 42 00 37 00 43 00 39 00 46 00 35 00 33 00 } //02 00 
		$a_01_1 = {38 00 32 00 38 00 43 00 42 00 41 00 37 00 39 00 41 00 44 00 35 00 44 00 38 00 33 00 41 00 31 00 42 00 44 00 30 00 37 00 32 00 35 00 43 00 33 00 37 00 44 00 44 00 31 00 36 00 46 00 39 00 37 00 35 00 33 00 46 00 43 00 36 00 39 00 } //02 00 
		$a_01_2 = {30 00 37 00 31 00 33 00 33 00 35 00 43 00 45 00 37 00 45 00 41 00 43 00 38 00 44 00 39 00 32 00 34 00 37 00 38 00 41 00 39 00 37 00 42 00 36 00 37 00 35 00 46 00 41 00 31 00 38 00 43 00 33 00 42 00 36 00 34 00 33 00 45 00 38 00 36 00 46 00 43 00 37 00 } //01 00 
		$a_01_3 = {38 00 38 00 42 00 35 00 35 00 31 00 39 00 31 00 34 00 32 00 45 00 38 00 31 00 39 00 31 00 35 00 } //00 00 
	condition:
		any of ($a_*)
 
}