.SILENT:

win-test:
	vagrant up

packer-validate:
	echo "===Validating Template==="
	packer validate -machine-readable centos-hyperv.json
	echo.

vagrant-cleanup:
    echo "===Vagrant Cleanup==="
    vagrant destroy -f
	vagrant box remove rld-test-box -f
	echo.

win-dev: vagrant-cleanup packer-validate
	echo "===Packer Building (Dev)==="
	set PACKER_LOG=1
	packer build -machine-readable -color=false centos-hyperv.json
	echo "=== [DONE] ==="

win-build: vagrant-cleanup packer-validate
    echo "===Packer Building==="
	packer build -machine-readable -color=false centos-hyperv.json
	echo "=== [DONE] ==="

help:
	echo "This is help file"

.DEFAULT: help