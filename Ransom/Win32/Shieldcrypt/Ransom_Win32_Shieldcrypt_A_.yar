
rule Ransom_Win32_Shieldcrypt_A_{
	meta:
		description = "Ransom:Win32/Shieldcrypt.A!!Shieldcrypt.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,08 00 08 00 19 00 00 01 00 "
		
	strings :
		$a_01_0 = {6a 01 ff 75 f8 68 10 66 00 00 ff 75 f4 } //01 00 
		$a_01_1 = {50 68 11 00 00 08 6a 01 } //02 00 
		$a_03_2 = {8a 16 0f b6 c3 fe c3 0f b6 80 90 01 04 02 c2 02 f0 0f b6 ce 8d 76 01 0f b6 04 39 88 46 ff 0f b6 c3 88 14 39 33 c9 80 fb 90 01 01 0f 44 c1 ff 4d 08 8a d8 75 cc 90 00 } //01 00 
		$a_03_3 = {8b f0 83 fe 03 74 90 01 01 83 fe 02 74 90 01 01 83 fe 04 74 90 01 01 83 fe 06 0f 85 90 01 01 00 00 00 ff 74 24 10 90 00 } //01 00 
		$a_01_4 = {c1 c0 07 0f b7 c9 8d 52 02 33 c1 0f b7 0a 66 85 c9 75 ed } //01 00 
		$a_01_5 = {75 13 b8 d7 f0 3a ea } //02 00 
		$a_03_6 = {ff d7 8b 45 f0 85 c0 75 06 43 83 fb 1a 7c 90 01 01 8b 4d fc 5f 5e 33 cd 5b e8 90 00 } //01 00 
		$a_80_7 = {00 41 46 45 45 31 36 42 43 00 } //  01 00 
		$a_80_8 = {28 50 45 52 53 4f 4e 41 4c 20 49 44 45 4e 54 49 46 49 43 41 54 49 4f 4e 29 3a 20 25 30 38 58 25 30 38 58 } //(PERSONAL IDENTIFICATION): %08X%08X  01 00 
		$a_80_9 = {43 72 79 70 74 6f 53 68 69 65 6c 64 } //CryptoShield  01 00 
		$a_80_10 = {72 65 73 74 6f 72 69 6e 67 5f 73 75 70 40 } //restoring_sup@  01 00 
		$a_80_11 = {72 65 73 74 6f 72 69 6e 67 5f 72 65 73 65 72 76 65 40 } //restoring_reserve@  01 00 
		$a_80_12 = {34 35 2e 37 36 2e 38 31 2e 31 31 30 } //45.76.81.110  01 00 
		$a_80_13 = {6d 61 69 6c 73 75 70 6c 6f 61 64 2e 70 68 70 } //mailsupload.php  01 00 
		$a_80_14 = {2f 74 65 73 74 5f 73 69 74 65 5f 73 63 72 69 70 74 73 2f 6d 6f 64 75 6c 73 2f 63 6f 6e 6e 65 63 74 73 2f } ///test_site_scripts/moduls/connects/  01 00 
		$a_80_15 = {25 73 5c 4f 66 66 69 63 65 54 61 62 5c 46 61 76 6f 72 69 74 65 73 } //%s\OfficeTab\Favorites  01 00 
		$a_80_16 = {5c 45 78 63 65 6c 46 61 76 6f 72 69 74 65 2e 61 63 6c } //\ExcelFavorite.acl  01 00 
		$a_80_17 = {25 73 5c 4d 69 63 72 6f 53 6f 66 74 57 61 72 65 } //%s\MicroSoftWare  01 00 
		$a_80_18 = {25 73 5c 31 46 41 41 58 42 32 2e 74 6d 70 } //%s\1FAAXB2.tmp  01 00 
		$a_80_19 = {25 73 5c 25 73 2e 48 54 4d 4c } //%s\%s.HTML  01 00 
		$a_80_20 = {25 73 5c 25 73 2e 54 58 54 } //%s\%s.TXT  01 00 
		$a_80_21 = {25 73 5c 53 74 6f 70 20 52 61 6e 73 6f 6d 77 61 72 65 20 44 65 63 72 79 70 74 73 20 54 6f 6f 6c 73 2e 65 78 65 } //%s\Stop Ransomware Decrypts Tools.exe  01 00 
		$a_80_22 = {25 73 5c 4d 69 63 72 6f 53 6f 66 74 57 61 72 65 5c 53 6d 61 72 74 53 63 72 65 65 6e 5c 25 73 2e 65 78 65 } //%s\MicroSoftWare\SmartScreen\%s.exe  01 00 
		$a_80_23 = {6d 6f 6d 6f 72 79 20 63 6f 75 6c 64 20 6e 6f 74 20 62 65 20 72 65 61 64 2e } //momory could not be read.  01 00 
		$a_80_24 = {57 69 6e 64 6f 77 73 20 53 6d 61 72 74 53 63 72 65 65 6e 20 55 70 64 61 74 65 72 } //Windows SmartScreen Updater  00 00 
	condition:
		any of ($a_*)
 
}