
rule Trojan_Win32_ClickFix_DA_MTB{
	meta:
		description = "Trojan:Win32/ClickFix.DA!MTB,SIGNATURE_TYPE_CMDHSTR_EXT,17 00 17 00 05 00 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //1 powershell
		$a_00_1 = {48 00 69 00 64 00 64 00 65 00 6e 00 } //1 Hidden
		$a_00_2 = {2d 00 65 00 43 00 } //10 -eC
		$a_00_3 = {61 00 51 00 42 00 6c 00 41 00 48 00 67 00 41 00 49 00 41 00 41 00 6f 00 41 00 47 00 6b 00 41 00 64 00 77 00 42 00 79 00 41 00 43 00 41 00 41 00 61 00 41 00 42 00 30 00 41 00 48 00 51 00 41 00 63 00 41 00 42 00 7a 00 41 00 44 00 6f 00 41 00 4c 00 77 00 41 00 76 00 41 00 } //10 aQBlAHgAIAAoAGkAdwByACAAaAB0AHQAcABzADoALwAvA
		$a_00_4 = {5c 00 31 00 } //1 \1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*1) >=23
 
}