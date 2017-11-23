## File :
[Noahs_Ark.jpg](Noahs_Ark.jpg)

## Solution :

we are given with a jpg file as per below

<img src="Noahs_Ark.jpg" width="500px">

running it through `binwalk` show us that there is a 7-zip archive data embedded at the 38067<sup>th</sup> offset

```zsh
# mkhdznfq @ ubuntu in ~/Desktop/Noahs Ark [15:03:21] 
$ binwalk Noahs_Ark.jpg 

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             JPEG image data, JFIF standard 1.01
38067         0x94B3          7-zip archive data, version 0.4
``` 

we can extract the archive data to obtain a pcap file

```zsh
# mkhdznfq @ ubuntu in ~/Desktop/Noahs Ark [15:03:26] 
$ 7z x Noahs_Ark.jpg 
<-- snip --->

# mkhdznfq @ ubuntu in ~/Desktop/Noahs Ark [15:03:46] 
$ ls
luke-host.pcap  Noahs_Ark.jpg
```

running it through `strings` will unearth some repeated base64 strings, which when decoded will give us the flag

```zsh
# mkhdznfq @ ubuntu in ~/Desktop/Noahs Ark [18:07:37] 
$ strings luke-host.pcap
.
.
snip
.
.
e0tQTUdfRDEyVWcwdjMxMkREMCRlfQ==
host2
ctf	dnsserver
k)DeF
host2
ctf	dnsserver
serveradmin
e0tQTUdfRDEyVWcwdjMxMkREMCRlfQ==

# mkhdznfq @ ubuntu in ~/Desktop/Noahs Ark [15:07:16] 
$ echo -n "e0tQTUdfRDEyVWcwdjMxMkREMCRlfQ==" | base64 -d
{KPMG_D12Ug0v312DD0$e}
```