
rule Trojan_Win64_CobaltStrike_ACR_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.ACR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {c6 85 f4 06 00 00 63 c6 85 f5 06 00 00 6f c6 85 f6 06 00 00 6c c6 85 f7 06 00 00 6c c6 85 f8 06 00 00 41 c6 85 f9 06 00 00 6c c6 85 fa 06 00 00 61 c6 85 fb 06 00 00 75 c6 85 fc 06 00 00 74 c6 85 fd 06 00 00 72 c6 85 fe 06 00 00 69 c6 85 ff 06 00 00 56 } //1
		$a_01_1 = {c6 85 01 07 00 00 73 c6 85 02 07 00 00 73 c6 85 03 07 00 00 65 c6 85 04 07 00 00 72 c6 85 05 07 00 00 64 c6 85 06 07 00 00 64 c6 85 07 07 00 00 41 c6 85 08 07 00 00 63 c6 85 09 07 00 00 6f c6 85 0a 07 00 00 72 c6 85 0b 07 00 00 50 c6 85 0c 07 00 00 74 c6 85 0d 07 00 00 65 c6 85 0e 07 00 00 47 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}