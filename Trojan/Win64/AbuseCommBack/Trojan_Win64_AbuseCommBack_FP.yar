
rule Trojan_Win64_AbuseCommBack_FP{
	meta:
		description = "Trojan:Win64/AbuseCommBack.FP,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 41 00 37 00 41 00 38 00 36 00 41 00 36 00 43 00 39 00 32 00 43 00 43 00 30 00 33 00 34 00 45 00 36 00 32 00 31 00 42 00 35 00 38 00 43 00 34 00 44 00 44 00 44 00 44 00 33 00 35 00 34 00 32 00 39 00 35 00 37 00 43 00 38 00 30 00 31 00 39 00 41 00 31 00 34 00 31 00 43 00 36 00 46 00 34 00 44 00 31 00 33 00 38 00 44 00 38 00 34 00 35 00 31 00 38 00 38 00 32 00 36 00 35 00 34 00 41 00 3c 00 2f 00 70 00 3e 00 } //1 <p>A7A86A6C92CC034E621B58C4DDDD3542957C8019A141C6F4D138D8451882654A</p>
		$a_01_1 = {41 37 41 38 36 41 36 43 39 32 43 43 30 33 34 45 36 32 31 42 35 38 43 34 44 44 44 44 33 35 34 32 39 35 37 43 38 30 31 39 41 31 34 31 43 36 46 34 44 31 33 38 44 38 34 35 31 38 38 32 36 35 34 41 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 41 37 41 38 36 41 36 43 39 32 43 43 30 33 34 45 36 32 31 42 35 38 43 34 44 44 44 44 33 35 34 32 39 35 37 43 38 30 31 39 41 31 34 31 43 36 46 34 44 31 33 38 44 38 34 35 31 38 38 32 36 35 34 41 69 64 } //1 tableidA7A86A6C92CC034E621B58C4DDDD3542957C8019A141C6F4D138D8451882654Aid
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}