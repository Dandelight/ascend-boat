su root
sudo vi /etc/netplan/01-netcfg.yaml
netplan apply
sudo netplan apply
sudo vi /etc/apt/sources.list
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo wget -O /etc/apt/sources.list https://repo.huaweicloud.com/repository/conf/Ubuntu-Ports-bionic.list --no-check-certificate
sudo apt-get update
vim ~/.bashrc
source ~/.bashrc
sudo apt-get install build-essential libgtk2.0-dev libavcodec-dev libavformat-dev libjpeg-dev libtiff5-dev git cmake libswscale-dev pkg-config -y
mkdir -p /home/HwHiAiUser/ascend_ddk/arm
cd $HOME
wget http://www.ffmpeg.org/releases/ffmpeg-4.1.3.tar.gz --no-check-certificate
tar -zxvf ffmpeg-4.1.3.tar.gz
cd ffmpeg-4.1.3
./configure --enable-shared --enable-pic --enable-static --disable-x86asm --prefix=/home/HwHiAiUser/ascend_ddk/arm
make -j8
make install
su root
cd $HOME
git clone -b 4.3.0 https://gitee.com/mirrors/opencv.git
git clone -b 4.3.0 https://gitee.com/mirrors/opencv_contrib.git
cd opencv
mkdir build
cd build
cmake -D BUILD_SHARED_LIBS=ON  -D BUILD_TESTS=OFF -D CMAKE_BUILD_TYPE=RELEASE -D  CMAKE_INSTALL_PREFIX=/home/HwHiAiUser/ascend_ddk/arm -D WITH_LIBV4L=ON -D OPENCV_EXTRA_MODULES=../../opencv_contrib/modules ..
make -j8
make install
sudo apt-get install python3-pip
sudo apt-get install libtiff5-dev libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python-tk
python3.6 -m pip install --upgrade pip --user -i https://mirrors.huaweicloud.com/repository/pypi/simple
python3.6 -m pip install Cython numpy pillow tornado==5.1.0 protobuf --user -i https://mirrors.huaweicloud.com/repository/pypi/simple
sudo apt-get install python3-opencv
cd ~
ls
rm ffmpeg-4.1.3.tar.gz 
rm -r ffmpeg-4.1.3/
rm -r opencv
rm -r opencv_contrib/
ls
exit
ls
./Ascend-cann-nnrt_3.3.0.alpha001_linux-aarch64.run  --noexec --extract=/home/HwHiAiUser/software
vim /etc/apt/sources.list
su root
ls
su root
ls
cd software/run_package/
ls
./Ascend-acllib-1.77.t21.0.b210-linux.aarch64.run --upgrade
./Ascend-pyACL-20.2.rc1-linux.aarch64.run --upgrade
tar -zxvf Ascend310-aicpu_kernels-1.77.t12.0.b120-minirc.tar.gz 
cd aicpu_kernels_device/
ls
cd scripts/
ls
./install.sh --run
su root
ls
history
history >> official_script.sh
