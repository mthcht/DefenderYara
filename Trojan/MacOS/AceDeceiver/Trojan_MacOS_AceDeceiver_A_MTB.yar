
rule Trojan_MacOS_AceDeceiver_A_MTB{
	meta:
		description = "Trojan:MacOS/AceDeceiver.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {c2 79 ff 27 58 10 7d ab a6 8a ed 8a 31 97 c9 1d 44 6e a9 50 d7 e3 46 d5 7f a6 82 b0 81 c9 fc 53 65 c8 83 39 6f 13 aa 53 81 54 11 c5 91 bc a6 80 67 38 e8 b3 75 62 c0 b5 79 2a d2 42 } //1
		$a_01_1 = {54 cb aa ce 6a d9 c9 52 17 2d 00 22 4a 40 0f 7a 30 60 2e 15 7d ee 14 85 bd 42 c3 55 fe 89 77 df c9 1f 4d 4f 2e c6 5f 9d 9a 3e 47 ba } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}