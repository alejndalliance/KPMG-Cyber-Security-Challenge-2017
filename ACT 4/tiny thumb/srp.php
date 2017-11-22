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
	$r$r$g$r$j$r$r$g$r$r$r$s$r$g$r$r$r$z$r$o$r$r$ab$r$r$r$r$q$rsro
--M-{--M---0-M---@-1--l----
--------3---_-------c@----c--
-P----1--_-----ch------_-1---
K--G-t----t---3---n-----M---}
KPMG{t1M3_t0_M3ch@n1c@l_M1c3}
	rnotepad

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
print r+e+r*4+o+r*2+rr+r*5+t+w+r*6+rr+r+o+r*3sbo.py

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
puts b+r*2+h+r+l+r*4+l+r*3+q+r*3+aa+r*5+g+r*3+ksco.rbrnotepad

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
echo $r.$r.$r.$r.$r.$r.$r.$r.$q.$r.$r.$r.$rr.$r.$r.$r.$r.$r.$r.$r.$t.$z.$r.$r.$r.$r.$t.$r.$r;?>