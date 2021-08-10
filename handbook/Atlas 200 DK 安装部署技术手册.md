# `Atlas 200 DK` 安装配置技术手册

## 技术概况

`ARM`芯片，运行`Ubuntu 18.04 Server`操作系统。

## 外部接线

见官网

## 软硬件要求

硬件：大于32G的TF卡一张

## 配置开发环境

`MindStudio`，`MindSpore`，`CANN toolkit`

### 基本配置

#### 刷卡

##### 官方方法

https://support.huaweicloud.com/environment-deployment-Atlas200DK1010/atlased_04_0001.html**（同时也是最新的文档）**

注意刷出的卡的根目录很小，家目录很大~~，提示我们有什么乱七八糟的全往家目录里堆。~~

记住，通过读卡器或`USB`连接修改`/etc/netplan`，将有线方式`DHCP`置为`no`，[^dhcp]，然后执行`sudo netplan apply`或重启.

##### 民间方法

1. 合设环境[^2]镜像获取即刷写

   1. 合设环境的获取见昇腾论坛，地址：TODO
   2. 获取之后，下载安装[Balena Ether]()，将大于32G的TF卡插入读卡器，将下载的镜像（不必解压）刷进SD卡**刷入前请double check不要把其他U盘什么的刷了**
   3. 在Ubuntu下进入TF卡的目录（有三个分区，根目录挂载的分区），修改`/etc/netplan`，将有线方式`DHCP`置为`no`，[^dhcp]
   4. 在Ubuntu下打开`gparted`（也叫`disks`），找到TF卡，发现磁盘最后有一块灰色；调整最后一个分区的大小，扩充至整个磁盘大小；`Windows`用户可以使用`Disk Genius`完成同样操作。
   5. 将卡解除挂载弹出装入Atlas 200 DK

2. 首次启动Atlas[^严格地说不算首次启动]

   1. 建议[打开上盖](TODO)，观察板子右上角的四个黄色长方形LED灯，会看到四灯[^启动四灯]从左到右依次点亮，全亮后表示启动正常，

   2. 确保刷写的TF卡已插入，使用网线将Atlas 200 DK与电脑接入同一局域网（电脑有线无线均可）。插入电源。

   3. 打开路由器设置页，查看其IP地址（为了方便以下均==**假定**==为`192.168.0.104`，请根据实际情况替换）

   4. 使用`ssh`登录开发板

      ```shell
      ssh HwHiAiUser@192.168.0.104
      ```

      板子上有两个用户，一个`root`一个普通用户`HwHiAiUser`，我们一般使用`HwHiAiUser`进行开发。**二者的默认密码均为`Mind@123`**

      对于`ssh`的关于安全性的询问一概回答`yes`。

   5. 如果成功进入，基本的配置已经完成。

## 初次上手

### 更新软件

#### `Linux`系统软件

因为镜像中的软件并不是最新的，会出奇怪的问题[^软件不升级]，所以建议依次执行

```shell
su -
apt update && apt upgrade -y
reboot
```

对系统软件源全部更新。镜像中已配置好`apt`的[华为Ubuntu-Port软件源](https://mirrors/huaweicloud.com/)，下载速度应当十分可观。

#### 昇腾`CANN`及固件驱动

参考：https://support.huaweicloud.com/environment-deployment-Atlas200DK1010/atlased_04_0033.html#ZH-CN_TOPIC_0000001142102831__section18525173011118

由于上述镜像文件中CANN[^CANN]和固件驱动不是最新的，我们需要下载最新版安装包更新以使用新版本中的优秀功能

本文均采用写作时的最新版本，`CANN 5.0.2.alpha005`，固件驱动`1.0.10.alpha`**（注意两者必须配套）**

#### `CANN`

https://www.hiascend.com/software/cann/community

#### 固件与驱动

https://www.hiascend.com/hardware/firmware-drivers?tag=community

登录开发板

```shell
# 返回家目录
cd
# 下载两个包
wget https://ascend-repo.obs.cn-east-2.myhuaweicloud.com/CANN/5.0.2.alpha005/Ascend-cann-toolkit_5.0.2.alpha005_linux-aarch64.run
wget https://obs-9be7.obs.cn-east-2.myhuaweicloud.com/turing/resource/atlas200dk/1.0.10/A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz?response-content-type=application/octet-stream
mv A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz\?response-content-type\=application%2Foctet-stream A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz
chmod +x Ascend-cann-toolkit_5.0.2.alpha005_linux-aarch64.run
# 安装NPU固件
# 参考下文, 此处略
# https://support.huaweicloud.com/environment-deployment-Atlas200DK1010/atlased_04_0033.html#ZH-CN_TOPIC_0000001142102831__section18525173011118
# 安装CANN软件
./Ascend-cann-toolkit_5.0.2.alpha005_linux-aarch64.run --install
```

### 环境变量的修改

此处附上一份我的环境变量（虽然可能也不全）

```bash
export LD_LIBRARY_PATH=/usr/local/python3.7.5/lib:/home/HwHiAiUser/Ascend/acllib/lib64:/home/HwHiAiUser/ascend_ddk/arm/lib:$LD_LIBRARY_PATH
export PATH=/usr/local/python3.7.5/bin:/home/HwHiAiUser/Ascend/ascend-toolkit/latest/atc/ccec_compiler/bin:/home/HwHiAiUser/Ascend/ascend-toolkit/latest/atc/bin:$PATH
export PYTHONPATH=/home/HwHiAiUser/Ascend/ascend-toolkit/latest/pyACL/python/site-packages/acl:$PYTHONPATH
export ASCEND_AICPU_PATH=/home/HwHiAiUser/Ascend/ascend-toolkit/latest
export ASCEND_OPP_PATH=/home/HwHiAiUser/Ascend/ascend-toolkit/latest/opp
export DDK_PATH=$HOME/Ascend/ascend-toolkit/latest/arm64-linux

export NPU_HOST_LIB=$DDK_PATH/acllib/lib64/stub


export LD_LIBRARY_PATH=/home/HwHiAiUser/Ascend/acllib/lib64:$LD_LIBRARY_PATH
export PYTHONPATH=/home/HwHiAiUser/Ascend/pyACL/python/site-packages/acl:$PYTHONPATH
export LD_LIBRARY_PATH=/usr/lib64/aicpu_kernels/0/aicpu_kernels_device:$LD_LIBRARY_PATH

export DDK_PATH=$HOME/Ascend/ascend-toolkit/latest/arm64-linux

export PATH="/opt/cmake/cmake-3.21.0-linux-aarch64/bin:$PATH"

# export mindspore_path="/home/HwHiAiUser/mindspore/mindspore"

export NPU_HOST_LIB=$DDK_PATH/acllib/lib64/stub
# source /home/HwHiAiUser/Ascend/ascend-toolkit/5.0.2.alpha003/arm64-linux/opp/bin/setenv.bash
# source /home/HwHiAiUser/Ascend/ascend-toolkit/5.0.2.alpha003/arm64-linux/toolkit/bin/setenv.bash
source /home/HwHiAiUser/Ascend/ascend-toolkit/5.0.2.alpha005/arm64-linux/opp/bin/setenv.bash
source /home/HwHiAiUser/Ascend/ascend-toolkit/5.0.2.alpha005/arm64-linux/toolkit/bin/setenv.bash
######################
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64/aicpu_kernels/0/aicpu_kernels_device/sand_box 
export mindspore_path="/home/HwHiAiUser/mindspore_ascend-1.3.0-linux_aarch64"
export LD_LIBRARY_PATH=${mindspore_path}:${LD_LIBRARY_PATH}

export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/home/HwHiAiUser/ascend_ddk/arm/include/opencv4"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/home/HwHiAiUser/ascend_ddk/arm/include"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/home/HwHiAiUser/ascend_ddk/arm/include"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/home/HwHiAiUser/Ascend/ascend-toolkit/latest/acllib/include"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/home/HwHiAiUser/Ascend/driver"
export PATH="${PATH}:/home/HwHiAiUser/ascend_ddk/arm/bin"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/home/HwHiAiUser/ascend_ddk/arm/lib"

######################

# control log level. 0-DEBUG, 1-INFO, 2-WARNING, 3-ERROR, default level is WARNING.
export GLOG_v=3

# Conda environmental options
LOCAL_ASCEND=/home/HwHiAiUser/Ascend # the root directory of run package

# lib libraries that the run package depends on
export LD_LIBRARY_PATH=${LOCAL_ASCEND}/ascend-toolkit/latest/fwkacllib/lib64:${LOCAL_ASCEND}/driver/lib64:${LOCAL_ASCEND}/ascend-toolkit/latest/opp/op_impl/built-in/ai_core/tbe/op_tiling:${LD_LIBRARY_PATH}

# Environment variables that must be configured
export TBE_IMPL_PATH=${LOCAL_ASCEND}/ascend-toolkit/latest/opp/op_impl/built-in/ai_core/tbe            # TBE operator implementation tool path
export ASCEND_OPP_PATH=${LOCAL_ASCEND}/ascend-toolkit/latest/opp                                       # OPP path
export PATH=${LOCAL_ASCEND}/ascend-toolkit/latest/fwkacllib/ccec_compiler/bin/:${PATH}                 # TBE operator compilation tool path
export PYTHONPATH=${TBE_IMPL_PATH}:${PYTHONPATH}                                                       # Python library that TBE implementation depends on

# Set path to extracted MindSpore accordingly
export LD_LIBRARY_PATH=${mindspore_path}:${LD_LIBRARY_PATH}
export LD_LIBRARY_PATH=${mindspore_path}/lib:${LD_LIBRARY_PATH}
export PYTHONPATH=$HOME/samples/python/common/:$PYTHONPATH
```

## 样例运行

### 基础样例：确定开发环境是否完善



### 综合样例：确定可以正常运行模型

昇腾Atlas 200 DK的样例在https://gitee.com/Ascend/samples，下载其`0.3`版本

```shell
cd
wget TODO
cd samples
```

每一个

### 拓展

https://support.huaweicloud.com/peripheral_reference-Atlas200DK1010/atlaspd_07_0003.html

-------------------------------------------------

[^dhcp]: `dhcp`为动态分配IP地址，实测不动态分配会出现连不上的情况；至于动态分配的IP是多少，访问路由器的设置页，一般是`192.168.0.1`或`192.168.3.1`之类的
[^合设环境]: 指开发和推理共同设置于开发板的环境，包括推理工具和开发工具（`acl-toolkit`），这样就`Ubuntu`电脑的配置会轻松很多
[^严格地说不算首次启动]: 因为是烧写的镜像文件，镜像的制作者已经完成了首次启动是的初始化操作
[^启动四灯]: 四灯的定义见官网https://support.huaweicloud.com/productdesc-Atlas200DK1010/atlas200_DK_pdes_19_0025.html

[^软件不升级]: 比如`VS Code`的`ssh`连不上

[^CANN]: 华为的异构计算架构，可理解为`NVIDIA CUDA`的地位
[^]: 
[^]: 



## 附

### `Python 3.7.5`的编译部署

1. 获取源代码

   前往华为云开源镜像站的[`Python`镜像](https://repo.huaweicloud.com/python/3.7.5/)下载[Python-3.7.5.tar.xz](https://repo.huaweicloud.com/python/3.7.5/Python-3.7.5.tar.xz)到开发板
   
   ```shell
   wget https://repo.huaweicloud.com/python/3.7.5/Python-3.7.5.tar.xz
   ```
   
2. 解压压缩包

3. 安装依赖`sudo apt-get install -y gcc g++ make cmake unzip zlib1g zlib1g-dev libbz2-dev libsqlite3-dev openssl libssl-dev libxslt1-dev libffi-dev libncurses5-dev libncursesw5-dev gnome-keyring pciutils net-tools`

4. ```shell
   cd Python-3.7.5
   sudo mkdir /usr/local/python3.7.5
   ./configure --prefix=/usr/local/python3.7.5 --enable-loadable-sqlite-extensions --enable-shared
   make -j8
   sudo make install
   ```

5. ```shell
   sudo cp /usr/local/python3.7.5/lib/libpython3.7m.so.1.0 /usr/lib64
   # 若没有lib64文件夹，复制到lib文件夹
   sudo cp /usr/local/python3.7.5/lib/libpython3.7m.so.1.0 /usr/lib
   ```

【未完成】