
rule TrojanDownloader_Win32_Zlob_gen_CH{
	meta:
		description = "TrojanDownloader:Win32/Zlob.gen!CH,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 05 00 00 01 00 "
		
	strings :
		$a_05_0 = {72 65 61 6c 2e 64 6c 6c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 } //01 00 
		$a_05_1 = {04 00 53 00 45 00 47 00 48 00 04 00 53 00 52 00 54 00 47 00 } //01 00 
		$a_05_2 = {68 6c 65 6f 2e 64 6c 6c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 00 } //01 00 
		$a_07_3 = {04 00 52 00 45 00 46 00 53 00 00 00 00 90 01 03 28 90 00 } //01 00 
		$a_07_4 = {6d 67 72 74 2e 64 6c 6c 00 90 09 04 00 01 00 02 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}