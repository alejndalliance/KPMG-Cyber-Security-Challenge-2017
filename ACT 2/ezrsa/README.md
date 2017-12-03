## Description
```
Ms. GG is looking for a way to decrypt the file. Assist her......
```

## File :
[EzRSA](EzRSA)

## Solution :

in this this challenge, we are provided with the modulus(`n`) and the exponent(`e`) of an rsa key. we are needed to decrypt the ciphertext(`c`) using the provided values. first we need to recover `d`, this can be easily done using [RsaCtfTool](https://github.com/Ganapati/RsaCtfTool)

```zsh
# mkhdznfq @ ubuntu in ~/Desktop [19:23:15] 
$ python ~/arsenal/RsaCtfTool/RsaCtfTool.py --createpub --n 833810193564967701912362955539789451139872863794534923259743419423089229206473091408403560311191545764221310666338878019 --e 65537 > pub.key

# mkhdznfq @ ubuntu in ~/Desktop [19:36:34] 
$ python ~/arsenal/RsaCtfTool/RsaCtfTool.py --publickey pub.key --private > priv.key                                                                                                                    

# mkhdznfq @ ubuntu in ~/Desktop/kpmg [19:36:43] 
$ python ~/arsenal/RsaCtfTool/RsaCtfTool.py --dumpkey --key priv.key                                                                                                                                    
[*] n: 833810193564967701912362955539789451139872863794534923259743419423089229206473091408403560311191545764221310666338878019
[*] e: 65537
[*] d: 521250646663056391768764366517618655312275374668692430321064634566533568373969990465313092928455546989832961905578375473
[*] p: 863653476616376575308866344984576466644942572246900013156919
[*] q: 965445304326998194798282228842484732438457170595999523426901
```

then we can decrypt the ciphertext(`c`) using simple calculation: **c<sup>d</sup> mod n**

```zsh
# mkhdznfq @ ubuntu in ~/Desktop [19:07:39] 
$ python
Python 2.7.12 (default, Nov 20 2017, 18:23:56) 
[GCC 5.4.0 20160609] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> n = 833810193564967701912362955539789451139872863794534923259743419423089229206473091408403560311191545764221310666338878019
>>> d = 521250646663056391768764366517618655312275374668692430321064634566533568373969990465313092928455546989832961905578375473
>>> c = 719911373739943794169110256184427274780002420784828288043551534766265241511891144747667423221650182797123129618696232548
>>> dec = pow(c, d, n)
>>> hex(dec)[2:-1].decode("hex")
'{KPMG_W34K_R54_K3Y}'

```
