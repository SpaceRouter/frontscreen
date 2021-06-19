# Setup TFT Screen
cp /boot/config.txt /boot/config.txt.bak
cp ./config.txt /boot/config.txt
cp /boot/cmdline.txt /boot/cmdline.txt.bak
cp ./cmdline.txt /boot/cmdline.txt

cp ./tft35a-overlay.dtb /boot/overlays/
cp ./tft35a-overlay.dtb /boot/overlays/tft35a.dtbo

echo "spi-bcm2835" > /etc/modules

