## Description :
```
E-Society knows Ms.GG is very tired, so they provided her an easy game to relax.

File: http://192.168.1.222:12812/e660fb85a0ecd26735e48d76877ebc92/ClicksGame.apk

Flag format: KPMG{xxxxxxxxxx}
```

## File :
[ClicksGame.apk](ClicksGame.apk)


## Solution :

after executing the app in an android emulator, we are presented with the following activity

<img src=main.png height=400px>

so now we need to click on the button 5000 times in order to obtain the flag. using an autoclicker won't do because the button will "jump around" after the 2000<sup>th</sup> click (unless you patch it). but here's a simple trick, we can press the `Enter` key on our keyboard and android emulator will register it as a click on the button, no matter where it is. therefore, put something heavy on your `Enter` key and go grab a cup of ~~coffee~~ teh tarik. after a short while, you can come back to the flag:

<img src=flag.png height=400px>