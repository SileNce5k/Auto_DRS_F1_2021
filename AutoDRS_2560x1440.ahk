Loop 
{
    if WinActive("ahk_exe F1_2021_dx12.exe"){
        PixelGetColor, drs, 1264, 1187
        if (drs="0x00DF00"){
            Send, {f down}
            Sleep 10
            Send, {f up}
        }
    }
    Sleep 200
}