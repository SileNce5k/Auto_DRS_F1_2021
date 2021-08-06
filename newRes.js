const fs = require('fs')

if(process.argv.length < 2) process.exit()

let resolutions = process.argv.slice(2, process.argv.length)

let initialCode = "Loop \n{\n    if WinActive(\"ahk_exe F1_2021_dx12.exe\"){\n        PixelGetColor, drs, ?, ?\n        if (drs=\"0x00D300\"){\n            Send, {f down}\n            Sleep 10\n            Send, {f up}\n        }\n    }\n    Sleep 200\n}"

for(res in resolutions){
	let path = `AutoDRS_${resolutions[res]}.ahk`
	if(fs.existsSync(`./${path}`)) continue;
	fs.writeFileSync(path, initialCode);
}