^1::
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
GREEN := format("{:d}","0x" . substr(color,5,2))
MsgBox color is %color% and green is %GREEN%