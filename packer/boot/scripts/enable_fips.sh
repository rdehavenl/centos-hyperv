#!/bin/sh
# Built with help from: http://www.dogtagpki.org/wiki/Enabling_FIPS_Mode_on_RHEL_7

# Get the Boot Drive location
BOOT_DRIVE=$(df /boot | grep /dev | awk '{ print $1 }')
BOOT_DRIVE_ID=$(blkid ${BOOT_DRIVE})

# Disable PRELINKING
cat /etc/sysconfig/prelink | grep PRELINKING
prelink -u -a

# Recreate Initramfs
dracut -f

fix_fips(){

}

fix_prelink(){
    
}

check_fips(){

}

check_prelink(){

}

