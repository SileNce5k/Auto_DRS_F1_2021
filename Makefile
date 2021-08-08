AHK_FILES = *.ahk
AHK2EXE = "C:/Program Files/AutoHotkey/Compiler/Ahk2Exe.exe"
OUTPUT = "build"

build: clean
	@mkdir ${OUTPUT}
	@for file in $(AHK_FILES); do \
		${AHK2EXE} /in "$$file" /out .\\${OUTPUT}\\; \
		echo "Compiling $$file"; \
	done
clean:
	@rm -rf ${OUTPUT}
