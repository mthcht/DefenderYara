
rule Trojan_Linux_Test_Sig_Infected_ELF{
	meta:
		description = "Trojan:Linux/Test_Sig_Infected_ELF,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {66 38 66 32 66 31 65 64 2d 37 32 62 61 2d 34 35 38 65 2d 38 34 35 33 2d 61 31 66 39 37 31 33 62 31 31 39 35 } //1 f8f2f1ed-72ba-458e-8453-a1f9713b1195
		$a_01_1 = {37 31 66 63 32 38 38 34 2d 39 35 61 32 2d 34 64 37 37 2d 38 39 35 31 2d 39 32 34 64 35 63 35 38 64 34 66 33 } //1 71fc2884-95a2-4d77-8951-924d5c58d4f3
		$a_01_2 = {34 38 64 63 38 64 32 39 2d 30 66 36 31 2d 34 39 66 33 2d 62 31 38 63 2d 31 34 38 38 65 63 65 38 61 65 66 33 } //1 48dc8d29-0f61-49f3-b18c-1488ece8aef3
		$a_01_3 = {35 64 36 66 32 39 31 39 2d 30 62 32 62 2d 34 30 33 66 2d 39 37 36 64 2d 63 30 36 31 64 63 62 34 63 36 33 34 } //1 5d6f2919-0b2b-403f-976d-c061dcb4c634
		$a_01_4 = {31 65 38 31 61 30 62 35 2d 64 66 34 31 2d 34 63 66 35 2d 62 36 35 61 2d 37 30 34 34 31 35 34 37 30 31 37 34 } //1 1e81a0b5-df41-4cf5-b65a-704415470174
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}