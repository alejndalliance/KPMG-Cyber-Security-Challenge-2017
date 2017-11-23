## Description :
```
While The Syndicate's network was compromised by E-Society via vulnerable device using scripting language, the operator was able to capture traffic but unable to analyze.
Ms. GG has request your team to analyze the traffic.

File: http://192.168.1.222:12812/7d9b96ebd860f16a6fb8e7819e3c6a00/TinyThumb.zip

Flag format: KPMG{xxxxxxxxxx}
```

## File :
[TinyThumb.zip](TinyThumb.zip)


## Solution :
Extract the zip we get `TinyThumb.pcap`. It looks like usb keyboard packet.

Using @mokhdzanifaeq script, we need to extract the usb data only first

```bash
tshark -r TinyThumb.pcap -Y "usb.capdata && frame.len == 35 && !(usb.capdata contains 00:00:00:00:00:00)" -T fields -e usb.capdata > data.txt
```

and run script
```php
<?php 
error_reporting(0);
$map = [
    4 => ['a', 'A'],
    5 => ['b', 'B'],
    6 => ['c', 'C'],
    7 => ['d', 'D'],
    8 => ['e', 'E'],
    9 => ['f', 'F'],
    10 => ['g', 'G'],
    11 => ['h', 'H'],
    12 => ['i', 'I'],
    13 => ['j', 'J'],
    14 => ['k', 'K'],
    15 => ['l', 'L'],
    16 => ['m', 'M'],
    17 => ['n', 'N'],
    18 => ['o', 'O'],
    19 => ['p', 'P'],
    20 => ['q', 'Q'],
    21 => ['r', 'R'],
    22 => ['s', 'S'],
    23 => ['t', 'T'],
    24 => ['u', 'U'],
    25 => ['v', 'V'],
    26 => ['w', 'W'],
    27 => ['x', 'X'],
    28 => ['y', 'Y'],
    29 => ['z', 'Z'],
    30 => ['1', '!'],
    31 => ['2', '@'],
    32 => ['3', '#'],
    33 => ['4', '$'],
    34 => ['5', '%'],
    35 => ['6', '^'],
    36 => ['7', '&'],
    37 => ['8', '*'],
    38 => ['9', '('],
    39 => ['0', ')'],
    44 => [' '],
    45 => ['-', '_'],
    46 => ['=', '+'],
    47 => ['[', '{'],
    48 => [']', '}'],
    49 => ['\\', '|'],
    50 => ['`', '~'],
    51 => [';', ':'],
    52 => ['\'', ''],
    53 => ['`', '~'],
    54 => [',', '<'],
    55 => ['.', '>'],
    56 => ['/', '?']
 ];

$data = file("data.txt", FILE_IGNORE_NEW_LINES);
foreach ($data as $i => $line) {
	$split = explode(":", $line);
	echo $map[hexdec($split[2])][$split[0] == "02"? 1 : 0];
}

 ?>
```

we can get source code which is consist or 4 different source code

sro.ps1
```powershell
[byte[]]$hex=(0x50,0x0F,0x10,0x0A,0x23,0x30,0x93,0x7D,0x41,0x8B,0x67,0x19,0x5C,0x26,0x38,0x95,0x76,0x49,0x82,0x6C)
$r=[char][byte]($hex[13] -bxor 11);
$f=[byte][char]'Q'
for($i=$f;$i -le 84;$i++){
	$f=$f-1
	}
$g=[char][byte][int]$f
$i=130;
while($i -gt 123){
	$i=$i-1};
	$j=[char][byte]$i
	$s=[char][byte](-bnot -49);
	$x=31 -band 30;
	$y=43 -band 54;
	$z=[char][byte]($x+$y)
	$m=[convert]::tostring(52,2);
	$n=$m -replace '100','001'
	$o=[char][byte][convert]::toint32($n,2);
	$ab=[char][byte]$hex[19]
	$p='5fsggas1' -replace 'fsggas','';
	$q=[char][byte]$pecho 
	$r$r$g$r$j$r$r$g$r$r$r$s$r$g$r$r$r$z$r$o$r$r$ab$r$r$r$r$q$r
```
sbo.py
```python
import binascii
hex=(0x50,0x0F,0x10,0x0A,0x23,0x30,0x93,0x7D,0x41,0x8B,0x67,0x19,0x5C,0x26,0x38,0x95,0x76,0x49,0x82,0x6C)
r=chr(hex[13]^11)
c=hex[0];
d=int(c);
e=chr(d)
m=str(bin(52)[2:]);
n=m.replace('100','001')
o=binascii.unhexlify('%x'%int('0b'+n,2))
rr=chr(hex[12]^3);
t=chr(hex[10]&115)
v=(4%3)+(8%5);
w=chr(hex[19]-v)
print r+e+r*4+o+r*2+rr+r*5+t+w+r*6+rr+r+o+r*3
```
sco.rb
```ruby
hex=[0x50,0x0F,0x10,0x0A,0x23,0x30,0x93,0x7D,0x41,0x8B,0x67,0x19,0x5C,0x26,0x38,0x95,0x76,0x49,0x82,0x6C]
r=(hex[13]^11).chr
a=hex[17]+2;
b=a.chr
h=hex[4]*2;
h=(h+1).chr
l=Integer('0b1110100').chr
p='5fsggas1'.gsub! 'fsggas','';
q=p.to_i.chr
aa=(hex[19]+2).chr
f='Q'.ord;
for i in f..84 do;
f-=1;
end;
g=f.to_i.chr
k=125.chr
puts b+r*2+h+r+l+r*4+l+r*3+q+r*3+aa+r*5+g+r*3+k
```
srp.php
```php
<?php
//v7
$hex=array(0x50,0x0F,0x10,0x0A,0x23,0x30,0x93,0x7D,0x41,0x8B,0x67,0x19,0x5C,0x26,0x38,0x95,0x76,0x49,0x82,0x6C);
$r=chr($hex[13]^11);
$p=str_replace('fsggas','','5fsggas1');
$q=chr($p);
$rr=chr($hex[12]^3);
$t=chr($hex[10]&115);
$x=31&30;
$y=43&54;
$z=chr($x+$y);
echo $r.$r.$r.$r.$r.$r.$r.$r.$q.$r.$r.$r.$rr.$r.$r.$r.$r.$r.$r.$r.$t.$z.$r.$r.$r.$r.$t.$r.$r;
?>
```

running all this code will present
```
--M-{--M---0-M---@-1--l----
--------3---_-------c@----c--
-P----1--_-----ch------_-1---
K--G-t----t---3---n-----M---}
```
when we combine them will produce `KPMG{t1M3_t0_M3ch@n1c@l_M1c-}`

the last char need to guess which make `e` or `E` or `3` to makes sense

Flag:`KPMG{t1M3_t0_M3ch@n1c@l_M1c3}`
