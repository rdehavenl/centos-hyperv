.SILENT:

win-test:
	vagrant up

packer-validate:
	echo "===Validating Template==="
	packer validate -machine-readable centos-hyperv.json
	echo "=== [PASS] ===" && echo.

win-build:
    echo "===Packer Building==="
	packer-validate
	packer build -machine-readable -color=false centos-hyperv.json
	echo "=== [DONE] ==="

win-build-test: packer-validate
	echo "===Packer Building==="
	packer build -machine-readable -color=false -on-error=ask centos-hyperv.json
	echo "=== [DONE] ==="

help:
	echo "This is help file"

.DEFAULT: help