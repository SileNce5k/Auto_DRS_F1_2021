AHK_FILES = *.ahk
AHK2EXE = ahk2exe
OUTPUT = "build"

build:
	@mkdir ${OUTPUT}
	@for file in $(AHK_FILES); do \
		${AHK2EXE} /in "$$file" /out .\\${OUTPUT}\\; \
		echo "Compiling $$file"; \
	done
clean:
	@rm -rf ${OUTPUT}
