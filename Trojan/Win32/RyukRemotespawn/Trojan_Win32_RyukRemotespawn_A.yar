
rule Trojan_Win32_RyukRemotespawn_A{
	meta:
		description = "Trojan:Win32/RyukRemotespawn.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {77 00 6d 00 69 00 63 00 2e 00 65 00 78 00 65 00 90 02 20 6e 00 6f 00 64 00 65 00 90 02 20 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 90 02 20 20 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 90 02 f0 72 00 75 00 6e 00 64 00 6c 00 6c 00 90 00 } //1
		$a_02_1 = {77 00 6d 00 69 00 63 00 90 02 20 6e 00 6f 00 64 00 65 00 90 02 20 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 90 02 20 20 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 90 02 f0 72 00 75 00 6e 00 64 00 6c 00 6c 00 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=1
 
}