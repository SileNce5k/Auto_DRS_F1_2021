#NoEnv
SetBatchLines -1
ListLines Off

greenLowLimit := 151 ; green was always between 151 and 225 in testing, but there is no point in having an upper limit 

getResolution(){
	WinGetPos, , , Width, Height, F1 2021
	Switch Height{
	Case 2160:
		Height := 1781
	Case 1600:
		Height := 1319
	Case 1440:
		Height := 1187
	Case 1200:
		Height := 990
	Case 1080:
		Height := 890
	Case 1050:
		Height := 865
	Case 1024:
		Height := 844
	Case 900:
		Height := 742
	Case 864:
		Height := 712
	Case 768:
		Height := 633
	Case 720:
		Height := 593
	Default:
		Height := false
	}
	return [Round(Width / 2), Height]
}

activateDRS(){
	Send, {f down}
	Sleep 10
	Send, {f up}
}


Loop {
	if WinActive("ahk_exe F1_2021_dx12.exe"){
		resolution := getResolution()
		if(resolution[2])
			PixelGetColor, drs, resolution[1], resolution[2]
			GREEN := format("{:d}","0x" . substr(drs,5,2))
			if (GREEN > greenLowLimit){
				activateDRS()
			}
	}
	Sleep 10
}

^+j::
SoundBeep
ExitApp, 0
