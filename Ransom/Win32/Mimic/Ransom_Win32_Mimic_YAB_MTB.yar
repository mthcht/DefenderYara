
rule Ransom_Win32_Mimic_YAB_MTB{
	meta:
		description = "Ransom:Win32/Mimic.YAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 "
		
	strings :
		$a_01_0 = {2d 00 45 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 6c 00 69 00 63 00 79 00 20 00 42 00 79 00 70 00 61 00 73 00 73 00 20 00 22 00 47 00 65 00 74 00 2d 00 56 00 4d 00 20 00 7c 00 20 00 53 00 74 00 6f 00 70 00 2d 00 56 00 4d 00 } //1 -ExecutionPolicy Bypass "Get-VM | Stop-VM
		$a_01_1 = {45 00 76 00 65 00 72 00 79 00 74 00 68 00 69 00 6e 00 67 00 2e 00 65 00 78 00 65 00 } //1 Everything.exe
		$a_01_2 = {44 00 65 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 71 00 20 00 2f 00 61 00 20 00 2a 00 2e 00 65 00 78 00 65 00 20 00 2a 00 2e 00 69 00 6e 00 69 00 20 00 2a 00 2e 00 64 00 6c 00 6c 00 20 00 2a 00 2e 00 62 00 61 00 74 00 20 00 2a 00 2e 00 64 00 62 00 } //5 Del /f /q /a *.exe *.ini *.dll *.bat *.db
		$a_01_3 = {62 00 63 00 64 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 20 00 2f 00 73 00 65 00 74 00 20 00 7b 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 7d 00 20 00 72 00 65 00 63 00 6f 00 76 00 65 00 72 00 79 00 65 00 6e 00 61 00 62 00 6c 00 65 00 64 00 20 00 6e 00 6f 00 } //5 bcdedit.exe /set {default} recoveryenabled no
		$a_01_4 = {78 00 64 00 65 00 6c 00 2e 00 65 00 78 00 65 00 22 00 20 00 2d 00 61 00 63 00 63 00 65 00 70 00 74 00 65 00 75 00 6c 00 61 00 20 00 2d 00 70 00 20 00 31 00 20 00 2d 00 63 00 } //1 xdel.exe" -accepteula -p 1 -c
		$a_01_5 = {2d 00 64 00 69 00 72 00 } //1 -dir
		$a_01_6 = {2d 00 70 00 72 00 6f 00 74 00 } //1 -prot
		$a_01_7 = {2d 00 74 00 61 00 69 00 6c 00 } //1 -tail
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=16
 
}