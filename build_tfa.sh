#!/bin/sh

mkdir -p arm-trusted-firmware

cp ../tf-a/deploy/metadata.bin arm-trusted-firmware/
cp ../tf-a/deploy/tf-a-stm32mp135d-atk-emmc.stm32 arm-trusted-firmware/
cp ../tf-a/deploy/tf-a-stm32mp135d-atk-sdcard.stm32 arm-trusted-firmware/
cp ../tf-a/deploy/tf-a-stm32mp135d-atk-usb.stm32 arm-trusted-firmware/
