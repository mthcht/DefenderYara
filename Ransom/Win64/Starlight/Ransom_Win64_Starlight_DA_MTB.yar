
rule Ransom_Win64_Starlight_DA_MTB{
	meta:
		description = "Ransom:Win64/Starlight.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,37 00 37 00 08 00 00 "
		
	strings :
		$a_81_0 = {73 72 63 2f 62 69 6e 2f 72 61 6e 73 6f 6d 77 61 72 65 2e 72 73 } //50 src/bin/ransomware.rs
		$a_81_1 = {73 72 63 5c 62 69 6e 5c 72 61 6e 73 6f 6d 77 61 72 65 2e 72 73 } //50 src\bin\ransomware.rs
		$a_03_2 = {43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 20 00 50 00 61 00 6e 00 65 00 6c 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 [0-0f] 54 00 69 00 6c 00 65 00 57 00 61 00 6c 00 6c 00 70 00 61 00 70 00 65 00 72 00 [0-0f] 57 00 61 00 6c 00 6c 00 70 00 61 00 70 00 65 00 72 00 53 00 74 00 79 00 6c 00 65 00 } //1
		$a_03_3 = {43 6f 6e 74 72 6f 6c 20 50 61 6e 65 6c 5c 44 65 73 6b 74 6f 70 [0-0f] 54 69 6c 65 57 61 6c 6c 70 61 70 65 72 [0-0f] 57 61 6c 6c 70 61 70 65 72 53 74 79 6c 65 } //1
		$a_81_4 = {63 68 61 63 68 61 32 30 70 6f 6c 79 } //1 chacha20poly
		$a_81_5 = {57 61 6b 65 42 79 41 64 64 72 65 73 73 41 6c 6c } //1 WakeByAddressAll
		$a_81_6 = {44 65 6c 65 74 65 46 69 6c 65 57 } //1 DeleteFileW
		$a_81_7 = {47 65 74 53 79 73 74 65 6d 54 69 6d 65 41 73 46 69 6c 65 54 69 6d 65 } //1 GetSystemTimeAsFileTime
	condition:
		((#a_81_0  & 1)*50+(#a_81_1  & 1)*50+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=55
 
}