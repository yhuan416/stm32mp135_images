#!/bin/sh

mkdir -p bootfs
cd bootfs

rm stm32mp135d-atk* uImage 5.15.24/ -rf
cp ../../linux/tmp/stm32mp135d-atk* ../../linux/tmp/uImage ./
tar -axvf ../../linux/tmp/modules.tar.bz2
