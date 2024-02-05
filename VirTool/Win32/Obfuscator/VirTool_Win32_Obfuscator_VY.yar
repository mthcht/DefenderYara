
rule VirTool_Win32_Obfuscator_VY{
	meta:
		description = "VirTool:Win32/Obfuscator.VY,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 04 00 00 0a 00 "
		
	strings :
		$a_13_0 = {e8 03 00 00 90 17 03 06 06 06 87 ff 87 ff 87 ff 8b d2 8b d2 8b d2 8a c0 8a c0 8a c0 90 00 01 } //00 09 
		$a_c0_1 = {02 8b d2 8b d2 8b d2 01 00 09 11 c0 c0 02 8b c0 8b } //c0 8b 
		$a_01_2 = {00 09 11 c0 c0 02 8a d2 8a d2 8a d2 00 00 5d 04 00 00 ef 99 02 80 5c 20 00 00 f0 99 02 80 00 00 01 00 28 00 0a 00 dd 41 42 61 6e 6b 65 72 2e 4b 00 00 01 40 05 82 61 00 04 00 29 71 00 00 00 02 01 ff ff ff ff 66 00 00 00 70 72 6f 78 79 66 6f 72 75 72 6c 28 75 72 6c 2c 68 6f 73 74 29 7b 69 66 28 73 68 65 78 70 6d 61 74 63 68 28 68 6f 73 74 2c 22 77 77 77 2e 62 72 61 64 65 73 63 6f 2e 63 6f 6d 2e 62 72 22 29 29 7b 72 65 74 75 72 6e 90 08 f0 02 69 66 28 73 68 65 78 70 6d 61 74 63 68 28 68 6f 73 74 2c 22 62 61 6e 63 6f 90 00 5d 04 00 00 f0 99 02 80 5c 22 00 00 f1 99 02 80 00 } //00 01 
	condition:
		any of ($a_*)
 
}