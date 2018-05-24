.SILENT:

win-test:
	vagrant up

win-build:
    echo "===Validating Template==="
	packer validate -machine-readable centos-hyperv.json
	echo "=== [PASS] ===" && echo.
	echo "===Packer Building==="
	packer build -machine-readable -color=false centos-hyperv.json
	echo "=== [DONE] ==="

help:
	echo "This is help file"

.DEFAULT: help