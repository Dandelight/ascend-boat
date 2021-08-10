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