# Automatic DRS for F1 2021 using AutoHotKey

__Right now it only works if your brightness is 136__ (unfortunately this isn't easy to change, or idk how to yet)  

The easiest way for you to use this script if your brightness isn't that value, is to download testColor.ahk, screenshot when you are in the DRS zone. You have to screenshot it uncompressed, or it _most likely_ not work.  
To screenshot uncompressed images with Steam, go to Settings -> In-Game -> Check "Save an uncompressed copy". Choose a screenshot folder as well. Open paint (GIMP works too), [keep your mouse above this area](image), and ctrl+1.  
You should get a message box popup with the correct color. Replace the value in GREEN (1st line) with this value in AutoDRS.ahk.

---

## If you have [AutoHotKey](https://www.autohotkey.com/) installed

To use the script click [AutoDRS.ahk](https://github.com/SileNce5k/Auto_DRS_F1_2021/raw/branch/master/AutoDRS.ahk), save with right click -> save page as (or just ctrl+s)  
To execute, just double click. It should appear in your system tray.  
To exit the script, you can either right click it in system tray and hit exit, or you can do "ctrl+shift+j".

## If you don't want to install AutoHotKey

Download the latest AutoDRS.exe from releases tab, place it in whatever directory you want.  
Execution is the same as above.

To set the script to start up when you login, open the run window (WindowsKey+R) and enter shell:startup.  
Put the script in this directory.

---

## Supported resolutions

* *x1440
* *x1200
* *x1080
* *x1050
* *x1200
* *x1024
* *x900
* *x864
* *x768
* *x720

\* can be anything  

Once I figure out how to use resolution higher than my monitor, I will add resolutions higher than 1440p.  
If the resolution you use isn't listed above, create an issue or send a PR.

---

## Keybindings

```text
ctrl+shift+j = Exit (will also play a beep) 
```
