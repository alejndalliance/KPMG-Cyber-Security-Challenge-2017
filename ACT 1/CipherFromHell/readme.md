This challenge we couldn't solve during the challenge, but managed to get the flag after that.

## Description :
```
Ms.GG found the message in text file which may link to E-Society hacker group but it was encrypted. She want you to help her to find a key.
```

## File :
[CipherFromHell.zip](CipherFromHell.zip)


## Solution :

Given the encrypted text 'cipher':

– šŽ›™áSÀW¡ß¢ÅÕ§×ÈÆžØékÃ²¹ñ™Ñ˜š Ú£ÀÞ­„ÀÅ”—ì¹µm¶áPâ›ÄWsÖš¶£ÙÑw‘ìá´...


enc.py:
```python
#!/usr/bin/env python2
m = open("message").read()
k = raw_input("key: ").strip()
def gg(m, k):
    z = ""
    for i, c in enumerate(m):
        z += chr((ord(c)+ord(k[i%len(k)]))%256)
    return z
f = open("cipher", "wb")
f.write(gg(m, k))
f.close()

```

Based on the code, it is just an encryption algorithm. Search the algo, get to this site : [Simple way to encode a string according to a password?](https://stackoverflow.com/a/16321853)

So basically it is a vigenere cipher. The problem right now is how to get the key?

Using the decode function that have been provided in the link given above, I assume that the flag starts with 'KPMG', so I try first with key 'KPMG{' and got this :

![no picture!](pic1.png)

The first 5 characters show "KPMG ", this is good. Then try to search any related description about KPMG and found this [wikipedia](https://en.wikipedia.org/wiki/KPMG). So try to brute the key based on the first sentence.

```
KPMG is a professional service company and one of the Big Four auditors, along with Deloitte, Ernst & Young (EY), and PricewaterhouseCoopers (PwC).
```

Got the flag! KPMG{0n3_71m3_p4d_W0w}

![No picture](pic2.png)
