## Description :
```
One of your team members came across an executable called "calc.exe" that was located in the Startup Folder on your machine.

With suspicion that you might be compromised, you proceed to conduct an analysis on the executable.
```

## File :
[Calc.zip](Calc.zip)

## Solution :

after extracting the pe binary from the archive, we had identified that it was packed using py2exe

```zsh
# mkhdznfq @ ubuntu in ~/Desktop/Calc [12:43:28] 
$ unzip Calc.zip 
Archive:  Calc.zip
  inflating: Calc.exe                

# mkhdznfq @ ubuntu in ~/Desktop/Calc [12:43:49] 
$ ls
Calc.exe  Calc.zip

# mkhdznfq @ ubuntu in ~/Desktop/Calc [12:44:11] C:130
$ strings Calc.exe | grep py2exe
py2exe failed to activate the activation context before loading a DLL
py2exe failed to de-activate the activation context
C:\Python27(x86)\lib\site-packages\py2exe\boot_common.pyR
C:\Python27(x86)\lib\site-packages\py2exe\boot_common.pyR
C:\Python27(x86)\lib\site-packages\py2exe\boot_common.pyR
C:\Python27(x86)\lib\site-packages\py2exe\boot_common.pyR
C:\Python27(x86)\lib\site-packages\py2exe\boot_common.pyR
C:\Python27(x86)\lib\site-packages\py2exe\boot_common.pyR
C:\Python27(x86)\lib\site-packages\py2exe\boot_common.pyt
C:\Python27(x86)\lib\site-packages\py2exe\boot_common.pyt
This file and also _memimporter.pyd is part of the py2exe package.
```

now we can make use of [unpy2exe](https://github.com/matiasb/unpy2exe) to extract the python bytecode from the executable binary. and from that we can run it through [uncompyle6](https://github.com/rocky/python-uncompyle6) to retrieve the python source code

```zsh
# mkhdznfq @ ubuntu in ~/Desktop/Calc [12:44:25] 
$ unpy2exe Calc.exe   

# mkhdznfq @ ubuntu in ~/Desktop/Calc [12:48:41] 
$ ls
Calc.exe  CalcPy2.7.py.pyc  Calc.zip

# mkhdznfq @ ubuntu in ~/Desktop/Calc [12:48:43] 
$ uncompyle6 -o . CalcPy2.7.py.pyc

# Successfully decompiled file

# mkhdznfq @ ubuntu in ~/Desktop/Calc [12:52:18] 
$ ls
Calc.exe  CalcPy2.7.py.py  CalcPy2.7.py.pyc  Calc.zip
```

going through the source code, we can see that it was lightly obfuscated. the challenge creator was also funny enough to include a dummy flag inside 

```python
 print 'KPNG{1$Th1sY0urF1ag}'
 ```

 basically, the script will log your keystrokes, mouse positions and random generated ips to 3 different files

```
C:\ProgramData\GMPK\sys32.dll
C:\ProgramData\GMPK\svchost.dll
C:\ProgramData\GMPK\CryptSvc.dll
```

but there's a little more to it, we can see in `wcyipoa()` function that the script will include additional character to the log on every 30<sup>th</sup> keystroke. we can extract all the characters by modifying the function a little bit (you can take a peek at my source code [HERE](extract.py))

```zsh
# mkhdznfq @ ubuntu in ~/Desktop/Calc [13:20:01] 
$ python extract.py
074078073069050082051051074089089087071077050078077070087072079089076083071078054081061061061061
```

that looks a helluva lot like ascii values! now using some python-fu, we can split the string by 3 digits and convert them into appropriate characters

```zsh
# mkhdznfq @ ubuntu in ~/Desktop/Calc [13:26:13] 
$ python
Python 2.7.12 (default, Nov 19 2016, 06:48:10) 
[GCC 5.4.0 20160609] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import re
>>> a = "074078073069050082051051074089089087071077050078077070087072079089076083071078054081061061061061"
>>> "".join(map(lambda x: chr(int(x)), re.findall('...', a)))
'JNIE2R33JYYWGM2NMFWHOYLSGN6Q===='
```

as obvious as it gets, it was a ~~base64~~ base32 encoded. decypt it to obtain the flag

```zsh
# mkhdznfq @ ubuntu in ~/Desktop/Calc [13:30:24] C:1
$ echo -n "JNIE2R33JYYWGM2NMFWHOYLSGN6Q====" | base32 -d
KPMG{N1c3Malwar3}
```