## Description :
```
A fairly simple challenge!!

File: http://192.168.1.222:12812/3cd491c4a005a35145310f0deffca081/encoded

Flag format: {KPMG_xxxxxxxxxxx}
```

## File :
[encoded](encoded)


## Solution :

the `encoded` file contains and multi-layer encoded data which are encoded in the following order

```
rot13 -> base64 -> binary
```

some python-fu to decode it & retrieve the flag

```zsh
# mkhdznfq @ ubuntu in ~/Desktop/kpmg on git:master o [14:24:57] 
$ python
Python 2.7.12 (default, Nov 19 2016, 06:48:10) 
[GCC 5.4.0 20160609] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import base64
>>> a = "01100101001100010110100001000100010101110110110001010010011001100101001101000110001110010100011001011000001100100110010001010110010011010011000100111001010100000100110101111010010101100100100001100110010100010011110100111101"
>>> base64.b64decode(('%x' % int(a, 2)).decode("hex")).encode("rot13")
'{KPMG_U_R_tH3_B35T}'
>>> 
```