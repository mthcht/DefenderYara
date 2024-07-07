
rule Trojan_Win32_RyukLocalspawn_A{
	meta:
		description = "Trojan:Win32/RyukLocalspawn.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_02_0 = {77 00 6d 00 69 00 63 00 2e 00 65 00 78 00 65 00 90 02 20 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 90 02 20 20 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 90 02 f0 72 00 75 00 6e 00 64 00 6c 00 6c 00 90 00 } //1
		$a_02_1 = {77 00 6d 00 69 00 63 00 90 02 20 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 90 02 20 20 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 90 02 f0 72 00 75 00 6e 00 64 00 6c 00 6c 00 90 00 } //1
		$a_00_2 = {6e 6f 64 65 3a } //65526 node:
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*65526) >=1
 
}