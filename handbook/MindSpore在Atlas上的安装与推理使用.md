本文档写于2021年7月17日，很幸运`MindSpore 1.3.0`发布，并提供了`Ascend 310`版本二进制安装包。故事就此开始。

## 拿到板子之后

升级软件

```shell
su
apt update && apt upgrade -y
```

## 需求

本文档介绍如何在Ascend 310环境的Linux系统上，使用二进制包方式快速安装`MindSpore`，Ascend 310版本仅支持推理。

## 确认系统环境信息

- 确认安装64位操作系统，[glibc](https://www.gnu.org/software/libc/)>=2.17，其中Ubuntu 18.04/CentOS 7.6/EulerOS 2.8是经过验证的。

- 确认安装[GCC 7.3.0版本](http://ftp.gnu.org/gnu/gcc/gcc-7.3.0/gcc-7.3.0.tar.gz)。

- 确认安装[gmp 6.1.2版本](https://gmplib.org/download/gmp/gmp-6.1.2.tar.xz)。

- 确认安装[CMake 3.18.3及以上版本](https://cmake.org/download/)。

  - 安装完成后将`CMake`所在路径添加到系统环境变量。

- 确认安装Python 3.7.5版本。

  - 如果未安装或者已安装其他版本的Python，可从[官网](https://www.python.org/ftp/python/3.7.5/Python-3.7.5.tgz)或者[华为云](https://mirrors.huaweicloud.com/python/3.7.5/Python-3.7.5.tgz)下载Python 3.7.5版本 64位，进行安装。

- 确认安装Ascend 310 AI处理器配套软件包

  - 安装Ascend 310 AI处理器配套软件包提供的whl包，whl包随配套软件包发布，升级配套软件包之后需要重新安装。

  ```bash
  pip install /usr/local/Ascend/ascend-toolkit/latest/fwkacllib/lib64/topi-{version}-py3-none-any.whl
  pip install /usr/local/Ascend/ascend-toolkit/latest/fwkacllib/lib64/te-{version}-py3-none-any.whl
  ```

## 下载软件包

```shell
wget https://gmplib.org/download/gmp/gmp-6.1.2.tar.xz
```



## 安装`MindSpore`

如果按照[./Atlas 200 DK 安装部署技术手册.md](./Atlas 200 DK 安装部署技术手册.md)执行，此时开发版中已安装了`Python 3.7.5`版本，并且`python3`就是这个版本；如果想使用`apt`安装的`python`，请使用`python3.6`命令。

### 编译安装`gmp`

从上面的链接中下载`gmp 6.1.2`，解压

```shell
tar -xvJf ~/gmp-6.1.2.tar.xz
# 编译
cd gmp-6.1.2
su
./configure --enable-cxx
make -j8 && make check && make install
```

### 安装`cmake`

前往https://cmake.org/download下载`aarch64`架构的`shell`脚本

```shell
su
mkdir -p /opt/cmake
cp cmake-3.21.0-linux-aarch64.sh /opt/cmake
cd /opt/cmake
./cmake-3.21.0-linux-aarch64.sh
```

然后设置`PATH`。

### 安装`MindSpore`

```
https://ms-release.obs.cn-north-4.myhuaweicloud.com/1.3.0/MindSpore/ascend/aarch64/mindspore_ascend-1.3.0-linux_aarch64.tar.gz --no-check-certificate
tar -zxf mindspore_ascend-1.3.0-linux_aarch64.tar.gz
```

## 异常处理

```
undefined symbol _Z14DlogErrorInneriPK
```

`MindSpore 1.3.0`动态链接了`libopt_feature.so`，这个文件只在`CANN 5.0.2.alpha005`中有，请按照[本文说明](./Atlas 200 DK 安装部署技术手册.md#更新软件)更新软件一节进行操作。

