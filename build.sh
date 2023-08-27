#!/bin/sh

mkdir -p fip
mkdir -p out

cp ../tf-a/deploy/fwconfig/stm32mp135d-atk-fw-config-optee.dtb fip/
cp ../optee/deploy/tee-* fip/
cp ../uboot/deploy/u-boot-* fip/

cd fip
../fiptool create \
--nt-fw u-boot-nodtb-stm32mp13.bin \
--hw-config u-boot-stm32mp135d-atk-trusted.dtb \
--fw-config stm32mp135d-atk-fw-config-optee.dtb \
--tos-fw tee-header_v2-stm32mp135d-atk.bin \
--tos-fw-extra1 tee-pager_v2-stm32mp135d-atk.bin \
--tos-fw-extra2 tee-pageable_v2-stm32mp135d-atk.bin \
../out/fip-stm32mp135d-atk-optee.bin
