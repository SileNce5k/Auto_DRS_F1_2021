AHK_FILES = *.ahk
AHK2EXE = "C:/Program Files/AutoHotkey/Compiler/Ahk2Exe.exe"

build: clean
	@for file in $(AHK_FILES); do ${AHK2EXE} /in "$$file"; done
clean:
	@rm -f AutoDRS*.exe
	@rm -f testColor.exe
