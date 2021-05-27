ls
ls
su
ls
su root
sudo vi /etc/netplan/01-netcfg.yaml
sudo netplan apply
sudo wget -O /etc/apt/sources.list https://repo.huaweicloud.com/repository/conf/Ubuntu-Ports-bionic.list
sudo apt-get update
mkdir $HOME/.pip/
vi $HOME/.pip/pip.conf
sudo apt-get install -y gcc g++ make cmake zlib1g zlib1g-dev libsqlite3-dev openssl libssl-dev libffi-dev unzip pciutils net-tools libblas-dev gfortran libblas3 libopenblas-dev
wget https://www.python.org/ftp/python/3.7.5/Python-3.7.5.tgz
tar -zxvf Python-3.7.5.tgz
cd Python-3.7.5
./configure --prefix=/usr/local/python3.7.5 --enable-shared
make -j8
sudo make install
sudo cp /usr/local/python3.7.5/lib/libpython3.7m.so.1.0 /usr/lib
sudo ln -s /usr/local/python3.7.5/bin/python3 /usr/bin/python3.7
sudo ln -s /usr/local/python3.7.5/bin/pip3 /usr/bin/pip3.7
sudo ln -s /usr/local/python3.7.5/bin/python3 /usr/bin/python3.7.5
sudo ln -s /usr/local/python3.7.5/bin/pip3 /usr/bin/pip3.7.5
pip3.7.5 install attrs psutil decorator numpy protobuf==3.11.3 scipy sympy cffi grpcio grpcio-tools requests --user
ls
exit 
ls
exit 
ks
ls
su
sudo cd /usr/lib/aarch64-linux-gnu
su
ls
pip3.7.5 install attrs psutil decorator numpy protobuf==3.11.3 scipy sympy cffi grpcio grpcio-tools requests --user
ls
chmod 755 *.run
./Ascend-cann-toolkit_20.1.rc1_linux-aarch64.run --install
./Ascend-cann-toolkit_20.1.rc1_linux-x86_64.run --install
ls
cp A200dk-npu-driver-20.1.0-ubuntu18.04-aarch64-minirc.tar.gz Ascend
cd Ascend
ls
tar -zxvf A200dk-npu-driver-20.1.0-ubuntu18.04-aarch64-minirc.tar.gz
cd 
ls
rm A200dk-npu-driver-20.1.0-ubuntu18.04-aarch64-minirc.tar.gz 
rm Ascend-cann-toolkit_20.1.rc1_linux-*
ls
sudo apt-get install build-essential libgtk2.0-dev libavcodec-dev libavformat-dev libjpeg-dev libtiff5-dev git cmake libswscale-dev pkg-config -y
sudo mv /var/lib/dpkg/info/ /var/lib/dpkg/info_old/
sudo mkdir /var/lib/dpkg/info/
sudo apt-get update
sudo apt-get -f install
sudo mv /var/lib/dpkg/info/* /var/lib/dpkg/info_old/
sudo rm -rf /var/lib/dpkg/info
sudo mv /var/lib/dpkg/info_old/ /var/lib/dpkg/info/
sudo apt-get install build-essential libgtk2.0-dev libavcodec-dev libavformat-dev libjpeg-dev libtiff5-dev git cmake libswscale-dev pkg-config -y
mkdir -p /home/HwHiAiUser/ascend_ddk/arm --no-check-certificate
ls
mkdir -p /home/HwHiAiUser/ascend_ddk/arm 
cd $HOME
wget http://www.ffmpeg.org/releases/ffmpeg-4.1.3.tar.gz
cd ffmpeg-4.1.3
./configure --enable-shared --enable-pic --enable-static --disable-x86asm --prefix=/home/HwHiAiUser/ascend_ddk/arm
make -j8
lsls
ls
su root
ls
cd ascend_
cd ascend_ddk/
ls
cd arm/
ls
cp /home/HwHiAiUser/ascend_ddk/arm/lib/pkgconfig/* /usr/share/pkgconfig
ls
ll
cd 
rm -rf ascend_ddk/
ls
rm -rf ffmpeg-4.1.3
rm -rf ffmpeg-4.1.3.tar.gz 
mkdir -p /home/HwHiAiUser/ascend_ddk/arm
wget http://www.ffmpeg.org/releases/ffmpeg-4.1.3.tar.gz --no-check-certificate
tar -zxvf ffmpeg-4.1.3.tar.gz
cd ffmpeg-4.1.3
./configure --enable-shared --enable-pic --enable-static --disable-x86asm --prefix=/home/HwHiAiUser/ascend_ddk/arm
make -j8
make install
su root
git clone -b 4.3.0 https://gitee.com/mirrors/opencv.git
git clone -b 4.3.0 https://gitee.com/mirrors/opencv_contrib.git
ls
cp opencv ~/
cp -r opencv ~/
ls
cp opencv_contrib/ ~/
cp -r  opencv_contrib/ ~/
ls
rm -r ffmpeg-4.1.3
rm ffmpeg-4.1.3.tar.gz 
rm -r opencv
rm -rf opencv
rm -rf opencv_contrib/
ls
rm -rf protobuf/
ls
rm Python-3.7.5.tgz 
ls
rm -rf samples/
git clone https://gitee.com/ascend/samples.git
cd samples/cplusplus/level2_simple_inference/6_other/colorization_video/
ls
cd scripts/
bash testcase_200dk.sh c75
d 
ls
cd samples/cplusplus/level2_simple_inference/6_other/colorization
cd scripts/
bash testcase_200dk.sh c75
cat /etc/sys_version.conf 
cd 
su
cd samples/python/level2_simple_inference/1_classification/googlenet_imagenet_picture/
cd scripts/
bash testcase_200dk.sh c75
cd ..
ls
cd 
cd samples/cplusplus/level2_simple_inference/1_classification/googlenet_imagenet_picture/
ls
cd scripts/
bash testcase_200dk.sh c75
python3
cd ..
ls
cd out/
ls
cd output/
ls
rm *
cd ..
ls
./main ../data/test1.jpg 
cd output/
ls
cd 
ls
rm -rf samples/
rm -rf models/
ls
cd samples/
ls
cd cplusplus/level2_simple_inference/6_other/colorization
ls
cd out/
ls
cd output/
ls
cd ..
cd output/
rm out_dog.png 
cd ../
./main ../data/dog.png 
cd
cd samples/python/level2_simple_inference/6_other/colorization_picture/
cd scripts/
bash testcase_200dk.sh c75
cd ..
ls
cd out/
ls
pwd
sudo apt-get install libtiff5-dev libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python-tk
ls
rm out_dog.png 
cd ../
ls
cd src/
python3.6 colorize.py ../data/dog.png 
cd ..
cd out/
ls
cd ..
ls
cd model/
ls
rm -rf *
cd .
cd ..
ls
cd scripts/
bash testcase_200dk.sh c75
cd ../model/
ls
python3
cd 
ls
cd Ascend
ls
cd ascend-toolkit/
ls
git clone https://gitee.com/ascend/samples.git
ls
cd samples/
ls
cd cplusplus/level2_simple_inference/6_other/colorization
ls
cd scripts/
bash testcase_200dk.sh c75
cd ../../colorization_video/
ls
cd scripts/
bash testcase_200dk.sh c75
cd ../
cd ../../../
cd level1_single_api/5_200dk_peripheral/ascendcamera/
ls
cd scripts/
bash testcase_200dk.sh c75
ls
cd ..
ls
cd out/
ls
cd output/
ls
cd ../../../../../../python/level2_simple_inference/1_classification/googlenet_imagenet_picture/
cd scripts/
bash testcase_200dk.sh c75
cd ..
ls
cd outputs/
ls
rm *
cd ..
ls
cd src/
ls
python3.6 classify.py ../data/
cd ../outputs/
ls
cd ..
rm -rf outputs/
rm -rf verify_image/
rm -rf data/*
ls
cd model/
ls
rm -rf *
cd ..
cd src/
cd ../scripts/
bash testcase_200dk.sh c75
cd ..
ls
cd 2_object_detection/face_detection_camera/
cd scripts/
bash testcase_200dk.sh c75
ls
cd ../
cd ..
ll
cd YOLOV3_mask_detection_video/
ls
cd scripts/
bash testcase_200dk.sh c75
LS
LSLS
ls
cd bash 
ls
cd samples/
cd python/level2_simple_inference/2_object_detection/YOLOV3_mask_detection_video/
ks
ls
ps -ef|grep presenter
kill -9 3035
cd model/
ls
rm -rf *
cd ..
ls
cd data/
ls
rmmod 
rm mask-true.mp4 
ls
cd ../scripts/
bash testcase_200dk.sh c75
ind@123
cd .
;s
ls
cd ascend_ddk/
ls
cd arm/lib/
ls
ll
cd 
ls
cd Ascend/
ls
cd 
cd ascend_ddk/arm/
ll
cd lib/
ll
ls
cd ascend_ddk/
ls
cd arm/lib/
ls
cd 
ls
git clone https://gitee.com/ascend/samples.git
export DDK_PATH=$HOME/Ascend/ascend-toolkit/latest/arm64-linux
cd $HOME/samples/cplusplus/common/atlasutil/
make
make install
ls
cd 
cd samples/cplusplus/level2_simple_inference/6_other/colorization
ls
cd scripts/
ls
bash testcase_200dk.sh c75
cd ../../
cd ..
ls
cd 2_object_detection/YOLOV3_coco_detection_video/
ls
cd scripts/
bash testcase_200dk.sh c75
cd 
cd samples/python/level2_simple_inference/2_object_detection/
ls
cd YOLOV3_mask_detection_video/ 
ls
cd scripts/
bash testcase_200dk.sh c75
cd 
ls
rm -rf cmake-3.18.0.tar.gz 
vim ~/.bashrc 
source ~/.bashrc 
cd samples/
cd 
cd models/
ls
cd ../samples/
cd cplusplus/level2_simple_inference/
cd 6_other/colorization
ls
cd out/
ls
cd samples/cplusplus/level2_simple_inference/6_other/colorization
ls
rm -rf build/
cd out/
ls
rm -rf main 
cd ..
ls
cd model/
ls
rm colorization.om 
export install_path=$HOME/Ascend/ascend-toolkit/latest
export LD_LIBRARY_PATH=${install_path}/atc/lib64
atc --input_shape="data_l:1,1,224,224" --weight="./colorization.caffemodel" --input_format=NCHW --output="colorization" --soc_version=Ascend310 --framework=0 --model="./colorization.prototxt"
mkdir -p build/intermediates/host
rm -rf build/
cd ..
mkdir -p build/intermediates/host
cd build/intermediates/host/
make clean
cmake ../../../src -DCMAKE_CXX_COMPILER=aarch64-linux-gnu-g++ -DCMAKE_SKIP_RPATH=TRUE
make 
cd ../../../
cd out/
ls
cd output/
ls
rm out_dog.png 
cd ../
./main ../data/
export LD_LIBRARY_PATH=
source ~/.bashrc
./main ../data/
cd ..
./main ../data/
cd out/
ls
cd output/
ls
cd ..
./main ../data/
cd ..
ls
cd model/
ls
rm -rf colorization.om 
cp ~/models/cplusplus_colorization/colorization.om .
cd ../out/
./main ../data/
cd /var/log/npu/slog/host-0/
ls
rm -rf *
cd 
cd samples/cplusplus/level2_simple_inference/6_other/colorization
ls
cd model/
atc --input_shape="data_l:1,1,224,224" --weight="./colorization.caffemodel" --input_format=NCHW --output="colorization" --soc_version=Ascend310 --framework=0 --model="./colorization.prototxt"
ls
export install_path=$HOME/Ascend/ascend-toolkit/latest
export LD_LIBRARY_PATH=${install_path}/atc/lib64
atc --input_shape="data_l:1,1,224,224" --weight="./colorization.caffemodel" --input_format=NCHW --output="colorization" --soc_version=Ascend310 --framework=0 --model="./colorization.prototxt"
cd ..
mkdir -p build/intermediates/host
cd build/intermediates/host/
make clean
cmake ../../../src -DCMAKE_CXX_COMPILER=aarch64-linux-gnu-g++ -DCMAKE_SKIP_RPATH=TRUE
make
cd ../../..
ls
cd out/
ls
mkdir output
export LD_LIBRARY_PATH=
source ~/.bashrc
./main ../data/
cd output/
ls
rm -rf out_dog.png 
cd ..
./main ../data/
cd output/
rm -rf out_dog.png 
cd ..
export LD_LIBRARY_PATH=
source ~/.bashrc
./main ../data/
cd 
ls
rm -rf models/
rm -rf samples/
ls
rm -rf PyAV/
sudo rm -rf Python-3.7.5/
ls
ls
cd samples/cplusplus/level2_simple_inference/6_other/colorization
ls
cd model/
ls
cd 
cd `
cd ~/samples/cplusplus/level2_simple_inference/6_other/colorization
ls
cd out/
ls
rm -rf *
cd ..
rm -rf build/
cd model/
ls
rm -rf colorization.om 
cd ..
cd scripts/
bash testcase_200dk.sh c75
cd ../
ls
rm -rf build/
cd out/
rm -rf *
ls
cd ../model/
ls
rm -rf colorization.om 
cd 
vim ~/.bashrc 
source ~/.bashrc 
ls
ls
cd Ascend/
ls
rm A200dk-npu-driver-20.1.0-ubuntu18.04-aarch64-minirc.tar.gz 
ls
cd 
cd Ascend
ls
cd 
ls
rm -rf cmake-3.18.0/
ls
chmod +x *.run
ls
./Ascend-cann-toolkit_20.2.alpha001_linux-aarch64.run --upgrade
./Ascend-cann-toolkit_20.2.alpha001_linux-x86_64.run --upgrade
cd 
ls
rm Ascend-cann-toolkit_20.2.alpha001_linux-*
ls
cp A200dk-npu-driver-20.2.0-ubuntu18.04-aarch64-minirc.tar.gz Ascend/
cd Ascend
ls
rm -rf driver/
tar -zxvf A200dk-npu-driver-20.2.0-ubuntu18.04-aarch64-minirc.tar.gz 
ls
rm A200dk-npu-driver-20.2.0-ubuntu18.04-aarch64-minirc.tar.gz 
cd ascend-toolkit/
ls
cd 20.2.alpha001/
;s
ls
cd pyACL/
ls
cd ../../..
ls
rm -rf pyACL/
sudo rm -rf pyACL/
ls
cd 
ls
mkdir upgrade
mv Ascend-cann-nnrt_20.2.alpha001_linux-aarch64.run upgrade/
mv update_200dk_20.2.sh upgrade/
cd upgrade/
ls
chmod 777 Ascend-cann-nnrt_20.2.alpha001_linux-aarch64.run 
ls
su - root
ls
cd samples/cplusplus/level2_simple_inference/6_other/colorization
ls
rm -rf build/
cd out/
ls
rm -rf *
cd ..
cd ../d
cd data/
ls
wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/colorization/dog.png
cd ..
ls
mkdir -p build/intermediates/host
cd build/intermediates/host/
make clean
cmake ../../../src -DCMAKE_CXX_COMPILER=aarch64-linux-gnu-g++ -DCMAKE_SKIP_RPATH=TRUE
make 
cd ../../../
ls
cd out/
mkdir output
./main ../data/
cd output/
ls
history | tee official_config.sh
