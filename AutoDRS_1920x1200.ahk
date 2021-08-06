Loop 
{
    if WinActive("ahk_exe F1_2021_dx12.exe"){
        PixelGetColor, drs, 950, 990
        if (drs="0x00D300"){
            Send, {f down}
            Sleep 10
            Send, {f up}
        }
    }
    Sleep 200
}