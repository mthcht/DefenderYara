
rule Trojan_Linux_Gafgyt_A_xp{
	meta:
		description = "Trojan:Linux/Gafgyt.A!xp,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {1c 80 85 8f 64 83 99 8f 2c bf a5 24 09 f8 20 03 21 20 00 02 38 00 bc 8f 3a 00 40 10 21 30 20 02 00 85 99 8f 06 00 05 26 09 f8 20 03 21 20 00 02 38 00 bc 8f 21 20 00 02 1c 80 85 8f 5c 82 99 8f 34 bf a5 24 09 f8 20 03 21 30 00 02 38 00 bc 8f 21 20 00 02 1c 80 85 8f 44 85 99 8f 00 00 00 00 09 f8 20 03 d4 b9 a5 24 38 00 bc 8f 16 00 00 10 21 88 40 00 } //01 00 
		$a_00_1 = {78 32 46 2f 78 32 42 2f 78 33 32 2f 78 33 33 2f 78 33 44 2f 78 32 46 2f 78 33 43 2f 78 37 44 2f 78 37 30 2f 78 32 32 2f 78 33 46 2f 78 32 38 2f 78 32 37 2f 78 32 30 2f 78 32 45 2f 78 33 30 2f 78 37 34 2f 78 33 46 2f 78 37 34 2f 78 32 33 2f 78 37 32 2f 78 37 30 2f 78 33 35 2f 78 33 33 2f 78 33 36 2f 78 32 36 2f 78 37 34 2f 78 32 43 2f 78 33 31 2f 78 32 44 2f 78 37 35 2f 78 32 46 2f 78 32 42 2f 78 32 31 2f 78 37 44 2f 78 33 44 2f 78 32 42 2f 78 33 37 2f 78 33 33 2f 78 33 32 2f 78 37 30 2f 78 32 31 2f 78 33 36 2f 78 32 42 2f 78 33 32 2f 78 32 44 2f 78 33 46 2f } //01 00 
		$a_00_2 = {52 75 6e 6e 69 6e 67 20 50 72 6f 63 65 73 73 65 73 } //01 00 
		$a_00_3 = {46 75 63 6b 59 6f 75 72 43 32 } //01 00 
		$a_00_4 = {4d 41 53 53 4d 55 52 44 45 52 } //00 00 
		$a_00_5 = {5d 04 00 } //00 a9 
	condition:
		any of ($a_*)
 
}