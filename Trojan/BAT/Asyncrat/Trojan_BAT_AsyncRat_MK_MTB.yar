
rule Trojan_BAT_AsyncRat_MK_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.MK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 01 00 "
		
	strings :
		$a_80_0 = {53 65 74 20 66 73 6f 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //Set fso = CreateObject("Scripting.FileSystemObject")  02 00 
		$a_02_1 = {47 00 65 00 74 00 53 00 70 00 65 00 63 00 69 00 61 00 6c 00 46 00 6f 00 6c 00 64 00 65 00 72 00 90 02 05 20 00 26 00 20 00 22 00 5c 00 90 02 05 2e 00 78 00 6d 00 6c 00 22 00 90 00 } //02 00 
		$a_02_2 = {47 65 74 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 90 02 05 20 26 20 22 5c 90 02 05 2e 78 6d 6c 22 90 00 } //02 00 
		$a_80_3 = {53 65 74 20 6f 62 6a 65 63 74 5f 53 68 65 6c 6c 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 68 65 6c 6c 2e 41 70 70 6c 69 63 61 74 69 6f 6e 22 29 } //Set object_Shell = CreateObject("Shell.Application")  02 00 
		$a_02_4 = {6f 00 62 00 6a 00 65 00 63 00 74 00 5f 00 53 00 68 00 65 00 6c 00 6c 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 45 00 78 00 65 00 63 00 75 00 74 00 65 00 20 00 22 00 43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4e 00 45 00 54 00 5c 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 5c 00 76 00 34 00 2e 00 30 00 2e 00 33 00 30 00 33 00 31 00 39 00 5c 00 4d 00 53 00 42 00 75 00 69 00 6c 00 64 00 2e 00 65 00 78 00 65 00 22 00 2c 00 20 00 90 02 10 2c 00 20 00 22 00 22 00 2c 00 20 00 22 00 22 00 2c 00 90 00 } //02 00 
		$a_02_5 = {6f 62 6a 65 63 74 5f 53 68 65 6c 6c 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 22 43 3a 5c 57 69 6e 64 6f 77 73 5c 4d 69 63 72 6f 73 6f 66 74 2e 4e 45 54 5c 46 72 61 6d 65 77 6f 72 6b 5c 76 34 2e 30 2e 33 30 33 31 39 5c 4d 53 42 75 69 6c 64 2e 65 78 65 22 2c 20 90 02 10 2c 20 22 22 2c 20 22 22 2c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}