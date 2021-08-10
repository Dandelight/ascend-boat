本文档写于2021年7月17日，很幸运`MindSpore 1.3.0`发布，并提供了`Ascend 310`版本二进制安装包。故事就此开始。

## 拿到板子之后

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

- 确认安装Ascend 310 AI处理器配套软件包（[Ascend Data Center Solution 21.0.2]）。

  - 软件包安装方式请参考[产品文档]。
  - 配套软件包包括[驱动和固件A300-3000]和[CANN 5.0.2]。
  - 确认当前用户有权限访问Ascend 310 AI处理器配套软件包的安装路径`/usr/local/Ascend`，若无权限，需要root用户将当前用户添加到`/usr/local/Ascend`所在的用户组。
  - 安装Ascend 310 AI处理器配套软件包提供的whl包，whl包随配套软件包发布，升级配套软件包之后需要重新安装。

  ```bash
  pip install /usr/local/Ascend/ascend-toolkit/latest/fwkacllib/lib64/topi-{version}-py3-none-any.whl
  pip install /usr/local/Ascend/ascend-toolkit/latest/fwkacllib/lib64/te-{version}-py3-none-any.whl
  ```

## 下载软件包



## 安装`MindSpore`

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

`MindSpore`

参考[版本列表](https://www.mindspore.cn/versions)先进行SHA-256完整性校验，校验一致后再执行如下命令安装MindSpore。

```
wget https://ms-release.obs.cn-north-4.myhuaweicloud.com/{version}/MindSpore/ascend/{arch}/mindspore_ascend-{version}-linux_{arch}.tar.gz --no-check-certificate
tar -zxf mindspore_ascend-{version}-linux_{arch}.tar.gz
```

其中：

- `{version}`表示MindSpore版本号，例如安装1.3.0版本MindSpore时，`{version}`应写为1.3.0。
- `{arch}`表示系统架构，例如使用的Linux系统是x86架构64位时，`{arch}`应写为`x86_64`。如果系统是ARM架构64位，则写为`aarch64`。

##

【mindspore】【import erro】 undefined symbol _Z14DlogErrorInneriPK

从当前报错信息上看，是环境上配套的软件包和MindSpore的版本不匹配，具体信息可以参考官网安装指导文档。

https://www.mindspore.cn/install

