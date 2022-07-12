include config.mk
include releng/deps.mk
releng_path=`dirname $0`

all: 
	@echo "------------------1-----------------------"
	./releng/setup-env.sh
	@echo "-----------------2------------------------"

	@echo ""
	@echo -e "\\033[0;32mSuccess"'!'"\\033[0;39m Here's your toolchain: \\033[1m$<\\033[0m"
	@echo ""
	@if [ $$host_os_arch = $$build_os_arch ]; then \
		echo "It will be picked up automatically if you now proceed to build Frida."; \
		echo ""; \
	fi
