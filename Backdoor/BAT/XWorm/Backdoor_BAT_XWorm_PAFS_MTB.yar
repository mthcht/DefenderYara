
rule Backdoor_BAT_XWorm_PAFS_MTB{
	meta:
		description = "Backdoor:BAT/XWorm.PAFS!MTB,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 06 00 00 "
		
	strings :
		$a_01_0 = {4f 00 66 00 66 00 6c 00 69 00 6e 00 65 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //2 OfflineKeylogger
		$a_01_1 = {2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 66 00 20 00 2f 00 52 00 4c 00 20 00 48 00 49 00 47 00 48 00 45 00 53 00 54 00 20 00 2f 00 73 00 63 00 20 00 6d 00 69 00 6e 00 75 00 74 00 65 00 20 00 2f 00 6d 00 6f 00 20 00 31 00 20 00 2f 00 74 00 6e 00 } //1 /create /f /RL HIGHEST /sc minute /mo 1 /tn
		$a_01_2 = {57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 } //1 WScript.Shell
		$a_01_3 = {2f 00 73 00 65 00 6e 00 64 00 4d 00 65 00 73 00 73 00 61 00 67 00 65 00 3f 00 63 00 68 00 61 00 74 00 5f 00 69 00 64 00 3d 00 } //2 /sendMessage?chat_id=
		$a_01_4 = {57 00 69 00 7a 00 57 00 6f 00 72 00 6d 00 } //3 WizWorm
		$a_01_5 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 2e 00 65 00 78 00 65 00 20 00 2f 00 66 00 20 00 2f 00 73 00 20 00 2f 00 74 00 20 00 30 00 } //2 shutdown.exe /f /s /t 0
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2+(#a_01_4  & 1)*3+(#a_01_5  & 1)*2) >=11
 
}