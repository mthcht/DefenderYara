
rule VirTool_Win32_SuspRemoteCmdCommand_J{
	meta:
		description = "VirTool:Win32/SuspRemoteCmdCommand.J,SIGNATURE_TYPE_CMDHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_1 = {2f 00 51 00 20 00 2f 00 63 00 } //1 /Q /c
		$a_00_2 = {31 00 3e 00 20 00 43 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 74 00 65 00 6d 00 70 00 } //1 1> C:\windows\temp
		$a_00_3 = {32 00 3e 00 26 00 31 00 20 00 26 00 26 00 20 00 63 00 65 00 72 00 74 00 75 00 74 00 69 00 6c 00 20 00 2d 00 65 00 6e 00 63 00 6f 00 64 00 65 00 68 00 65 00 78 00 20 00 2d 00 66 00 } //1 2>&1 && certutil -encodehex -f
		$a_00_4 = {64 00 6f 00 20 00 72 00 65 00 67 00 20 00 61 00 64 00 64 00 20 00 48 00 4b 00 4c 00 4d 00 5c 00 } //1 do reg add HKLM\
		$a_00_5 = {26 00 26 00 20 00 64 00 65 00 6c 00 } //1 && del
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}