# stm32mp135_images

stm32mp135 images

## 下载源码

``` sh
git clone git@github.com:yhuan416/stm32mp135_images.git images
```

# TF_A

## 生成tf_a

``` sh
./build_tfa.sh
```

生成的tf_a文件放在 arm-trusted-firmware 目录下

# FIP

## 生成fip

``` sh
./build_fip.sh
```

## 清空fip

``` sh
./clean_fip.sh
```

生成的fip文件放在 fip 目录下

# bootfs

``` sh

mkdir -p bootfs

# 挂载bootfs
sudo mount -o loop bootfs.ext4 bootfs

# 更新bootfs内的文件
cd bootfs
sudo rm stm32mp135d-atk* uImage 5.15.24/ -rf
sudo cp ../../linux/tmp/* ./
sudo tar -axvf modules.tar.bz2
sudo rm modules.tar.bz2

# 卸载bootfs
cd ..
sudo umount bootfs 

```
