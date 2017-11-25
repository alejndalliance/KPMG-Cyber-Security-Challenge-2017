## Description :
```
Ms. GG Found Interesting Page Which Might Involve To E-Society Group.

File: http://192.168.1.222:12812/a3e37687894eaea80ea48138cd870e9b/TravelAroundTheWorld.zip

Flag format for this challenge is : KPMG{xxxxxxxxxx}
```

## File :
[TravelAroundTheWorld.zip](TravelAroundTheWorld.zip)


## Solution :
inside a zip file is an index file with image as a blog with `<!-- I use this blog to send the secret message-->` in comment, because there is nothing abnormal in all its image and index file so lets find the original country of the place and take the first character of every contry to construct a flag.

the easiest way is to upload it on google image and find the country, after some googling here come up the list of country

- zebra.jpg - Kenya
- church.jpg - Poland
- daylight.jpg - Mexico
- bridge.jpg - German
- curry1.jpg - curry1
- sunset.jpg - hongkong
- portal.jpg - oman
- orthodox.jpg - lithuania
- adventure.jpg - iceland
- architechture.jpg - denmark
- people.jpg - afghanistan
- lizard.jpg - yemen chameleon
- curry2.jpg - curry2

because the flag format has `{}` so we can assume `curry1` is `{` and `curry2` is `}`

Flag: `KPMG{holiday}` or `KPMG{HOLIDAY}`
