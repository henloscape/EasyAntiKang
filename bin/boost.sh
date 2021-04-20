#!/system/bin/sh

# (C) 2021 henloboi

BLOCKEL=AGNi
BLOCKROM=nad_lava

if [[ $(uname -a | grep $BLOCKEL) ]]; then 
    echo "Blocked kernel detected."
    echo "VM IS SHUTTING DOWN."
    reboot bootloader 
fi 

if [[ $(getprop ro.product.system.name | grep $BLOCKROM) ]]; then 
    echo "Blocked ROM detected."
    echo "VM IS SHUTTING DOWN."
    reboot bootloader
fi  
