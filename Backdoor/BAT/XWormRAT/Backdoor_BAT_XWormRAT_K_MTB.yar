
rule Backdoor_BAT_XWormRAT_K_MTB{
	meta:
		description = "Backdoor:BAT/XWormRAT.K!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {28 00 2a 00 2e 00 68 00 74 00 61 00 29 00 7c 00 2a 00 2e 00 68 00 74 00 61 00 } //02 00  (*.hta)|*.hta
		$a_01_1 = {5c 00 73 00 2a 00 5b 00 5c 00 77 00 5c 00 2e 00 5c 00 28 00 5c 00 29 00 5d 00 2b 00 5c 00 73 00 2a 00 28 00 } //02 00  \s*[\w\.\(\)]+\s*(
		$a_01_2 = {2f 00 74 00 61 00 72 00 67 00 65 00 74 00 3a 00 77 00 69 00 6e 00 65 00 78 00 65 00 20 00 2f 00 70 00 6c 00 61 00 74 00 66 00 6f 00 72 00 6d 00 3a 00 61 00 6e 00 79 00 63 00 70 00 75 00 20 00 2f 00 6f 00 70 00 74 00 69 00 6d 00 69 00 7a 00 65 00 } //02 00  /target:winexe /platform:anycpu /optimize
		$a_01_3 = {2f 00 63 00 20 00 63 00 6d 00 64 00 6b 00 65 00 79 00 20 00 2f 00 67 00 65 00 6e 00 65 00 72 00 69 00 63 00 } //02 00  /c cmdkey /generic
		$a_01_4 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 58 00 57 00 6f 00 72 00 6d 00 } //00 00  HKEY_CURRENT_USER\SOFTWARE\XWorm
	condition:
		any of ($a_*)
 
}