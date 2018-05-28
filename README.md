# centos-hyperv

## Description
I needed to have a local development environment to work with that was 
CentOS Based. The Cloud SIG Image was not working in Vagrant so I decided
to build my own box. 

Along the way, I discovered the **bento/centos** vagrant boxes, and some of my
kickstart file has been influenced by that.

The box is installed and boots with NIST 140-2 compliant FIPS mode enabled.

## Pre-requisites
This repo created built on a Windows 10 (1803) platform.
  - Packer (1.2.3)
  - Vagrant (Version 2.1.1)
  - Visual Studio 2017 - nMake (From Build Tools package of VS2017)
  - Hyper-V (Windows 10 1803)
  - Centos7 Install media in a folder
    - Update centos7.iso symlink to your media
    - Update md5sum in packer/centos-hyperv.json file
    - In my environment I was using DVD media instead of minimal.

## Usage
Coming from a unix background, I'm a huge fan of doing sudo-automation with
Makefiles.  Therefore the usage is pretty simple: 
```
cd packer
nmake win-build
```

If Packer builds are failing and you need more output during the build, you can
use the `nmake win-dev` command to run packer with more logging

## Known Issues
  - Packer failing to upload scripts during build:
    - This can happen if the `packer/scripts/*.sh` files have the 'CRLF' line
      endings that are not unix compliant, adjust the *.sh files to use 'LF'
      line-endings
