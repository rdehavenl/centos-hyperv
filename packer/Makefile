.SILENT:

win-test:
	vagrant up

packer-validate:
	echo "===Validating Template==="
	packer validate -machine-readable centos-hyperv.json
	echo.

win-dev: packer-validate
	echo "===Packer Building (Ask on Clean-up)==="
	packer build -machine-readable -color=false centos-hyperv.json
	echo "=== [DONE] ==="

win-build: packer-validate
    echo "===Packer Building==="
	packer build -machine-readable -color=false centos-hyperv.json
	echo "=== [DONE] ==="

help:
	echo "This is help file"

.DEFAULT: help