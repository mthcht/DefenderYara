
rule Trojan_Win32_DisableRemoteReg_A{
	meta:
		description = "Trojan:Win32/DisableRemoteReg.A,SIGNATURE_TYPE_CMDHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_02_0 = {72 00 65 00 67 00 [0-08] 20 00 61 00 64 00 64 00 20 00 } //5
		$a_02_1 = {68 00 6b 00 6c 00 6d 00 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 70 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 6e 00 74 00 5c 00 74 00 65 00 72 00 6d 00 69 00 6e 00 61 00 6c 00 20 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 [0-02] 20 00 2f 00 76 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 73 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 73 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 } //1
		$a_02_2 = {68 00 6b 00 6c 00 6d 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 5c 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 63 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 73 00 65 00 74 00 5c 00 63 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5c 00 74 00 65 00 72 00 6d 00 69 00 6e 00 61 00 6c 00 20 00 73 00 65 00 72 00 76 00 65 00 72 00 5c 00 77 00 69 00 6e 00 73 00 74 00 61 00 74 00 69 00 6f 00 6e 00 73 00 5c 00 72 00 64 00 70 00 2d 00 74 00 63 00 70 00 [0-02] 20 00 2f 00 76 00 20 00 75 00 73 00 65 00 72 00 61 00 75 00 74 00 68 00 65 00 6e 00 74 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //1
	condition:
		((#a_02_0  & 1)*5+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=6
 
}