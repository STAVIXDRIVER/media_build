#!/bin/bash
echo "V4L drivers building..."
make -j4

echo "V4L drivers installing..."
sudo rm -r -f /lib/modules/$(uname -r)/kernel/drivers/media
sudo make install

echo "V4L drivers installation done"
echo "You need to reboot..."
