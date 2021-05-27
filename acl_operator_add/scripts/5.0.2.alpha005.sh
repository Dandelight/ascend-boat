# 5.0.2.alpha005, with opencv, mindspore, python3.7.5
# and their dependencies
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
cd $HOME
git clone https://gitee.com/ascend/samples.git
ls
cd samples/
ls
cd cplusplus/level2_simple_inference/1_classification/googlenet_imagenet_video/model/
ls
wget https://modelzoo-train-atc.obs.cn-north-4.myhuaweicloud.com/003_Atc_Models/AE/ATC%20Model/classification/googlenet.caffemodel
wget https://modelzoo-train-atc.obs.cn-north-4.myhuaweicloud.com/003_Atc_Models/AE/ATC%20Model/classification/googlenet.prototxt
export install_path=$HOME/Ascend/ascend-toolkit/latest
export LD_LIBRARY_PATH=${install_path}/atc/lib64
cd $HOME/samples/cplusplus/level2_simple_inference/1_classification/googlenet_imagenet_video/model/
wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/googlenet_imagenet_video/insert_op.cfg
atc --model=./googlenet.prototxt --weight=./googlenet.caffemodel --framework=0 --output=googlenet --soc_version=Ascend310 --insert_op_conf=./insert_op.cfg --input_shape="data:1,3,224,224" --input_format=NCHW
cd $HOME/samples/cplusplus/level2_simple_inference/1_classification/googlenet_imagenet_video/data
wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/googlenet_imagenet_video/cat.mp4
cd ..
ls
cd scripts/
ls
vi param.conf
export DDK_PATH=$HOME/Ascend/ascend-toolkit/latest/arm64-linux/
export NPU_HOST_LIB=$DDK_PATH/acllib/lib64/stub
cd $HOME/samples/cplusplus/level2_simple_inference/1_classification/googlenet_imagenet_video
mkdir -p build/intermediates/host
cd build/intermediates/host
make clean
cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
make
make clean
cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
make
fdisk -l
su root
ls
cd Ascend/ascend-toolkit/
ls
exit
cd opt/mini
ls
cd /opt/mini/
ls
cd ~
cat /var/davinci/driver/version.info
cat /var/davinci/aicpu_kernels/version.info
cat /home/HwHiAiUser/Ascend/acllib/version.info
ls
insmod tun.ko
su root
exit
ifconfig
ls
cd Ascend/
l;s
ls
find ~ -name aic-ascend310*
cd /home/HwHiAiUser/Ascend/ascend-toolkit/3.3.0.alpha001/arm64-linux/opp/op_impl/built-in/ai_core/tbe/config/ascend310/
ls
cp aic-ascend310-ops-info.json aic-ascend310-ops-info.json.bak
sudo cp aic-ascend310-ops-info.json aic-ascend310-ops-info.json.bak
su
vi aic-ascend310-ops-info.json
ls
cd ~
ls
mkdir cjl
cd cjl
ls
git clone https://gitee.com/ascend/tools.git
ls
mkdir beiyoumoxing
cd tools/
cd msame/
ls
bash build.sh .
bash build.sh  g++ .
cd out/
ls
pwd
cd ..
ls
mv input* beiyoumoxing/
atc
cd beiyoumoxing/
ls
vi convert.sh
cd ..
ls
mv SLOWFAST_32x2_R101_50_50_256_451_with_5_bboxes.onnx beiyoumoxing/bboxes.onnx
cd beiyoumoxing/
ls
bash convert.sh
ls
vi convert.sh
atc --model=bboxes.onnx --framework=5 --input_format=NCHW --input_shape="0:1,3,32,256,451;1:1,3,32,256,451;2:5,5" --output=out --soc_version=Ascend310
ifconfig
lsa
ls
ifconfig
ls
cd ..
ls
cd ..
ls
ifconfig
cd ~
ls
cd Ascend
ls
cd acllib/
ls
vi version.info
cd ..
ls
cd driver/
;s
ls
cd ..
ls
cd ~
ls
cd Ascend
ls
cd ~
ls
cd cjl
ls
cd beiyoumoxing/
ls
vi convert.sh
ls
cd ~
ls
md5sum Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run
ls
cd Ascend
ls
cd ascend-toolkit/
ls
vi set_env.sh
pip3 list pytorch
cd ~
ls
cd cjl
ls
cd beiyoumoxing/
ls
./msame
cd /usr/lib64
ll
cd aicpu_kernels/
ls
ll
cd 9
cd 0/
ls
ll
cd aicpu_kernels_device/
ls
cd sand_box/
ls
l
cd ..
ls
cd ..
ls
ll
cd ..
ls
ll
cd aicpu_kernels/
ls
ll
cd 0/
ls
cd aicpu_kernels_device/
ls
ll
cd ~
lsd
ls
cd cjl
ls
cd beiyoumoxing/
ls
./msame
ls
cat ~/.bashrc
python3
ifconfig
exit
ifconfig
cd Ascend/ascend-toolkit/
ls
cd Ascend/ascend-toolkit/
ls
cd ..
cd /opt/mini/
ls
mv ~/A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz ./
cd ~
ls
cd /
ls
cd ~
ls
mv A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz /opt/mini/
sudo mv A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz /opt/mini/
su root
cd Ascend
ls
cd ascend-toolkit/
ls
cd ~
ls
cd cjl
ls
mv faster_rcnn_resnet.om ./beiyoumoxing/
cd beiyoumoxing/
ls
./msame
./msame  --model faster_rcnn_resnet.om
cd /usr/lib64
ls
ll
cd aicpu_kernels/
ls
cd 0/
ls
cd aicpu_kernels_device/
ls
cd sand_box/
ls
cd ..
ls
ll
cd ..
ll
cd ../
cd .
ls
cd ..
ls
ll
vi /etc/resolv.conf
chmod u+w /etc/resolv.conf
cd Ascend
ls
cd ascend-toolkit/
ls
cd ~/var/log/ascend_seclog/
ls
vi ascend_toolkit_install.log
tail -f ascend_toolkit_install.log
vi ~/.bashrc
top
tail -f ascend_toolkit_install.log
top
tail -f ascend_toolkit_install.log
ls
cd cjl/
ls
cd tools/
ls
cd ..
cd beiyoumoxing/
ls
ifconfig
cd ..
ls
cd tools/
ls
cd msame/
ls
cd out/
ls
scp msame HwHiAiUser@12.0.0.66:~/cjl
cd ~
ls
cd Ascend/
ls
cd ascend-toolkit/
ls
cd ~
ls
ifconfig
wget https://ascend-repo.obs.cn-east-2.myhuaweicloud.com/CANN/5.0.2.alpha003/Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run
apt update
apt install resolvconf
su
wget https://ascend-repo.obs.cn-east-2.myhuaweicloud.com/CANN/5.0.2.alpha003/Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run
ls
ll
chmod u+x Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run
./Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run --upgrade
#用于设置python3.7.5库文件路径
export LD_LIBRARY_PATH=/usr/local/python3.7.5/lib:$LD_LIBRARY_PATH
#如果用户环境存在多个python3版本，则指定使用python3.7.5版本
export PATH=/usr/local/python3.7.5/bin:$PATH
./Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run --upgrade
./Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run --uninstall
cd Ascend
ls
cd ..
cd Ascend
ls
cd ascend-toolkit/
ls
ll
cd latest
ls
cd x86_64-linux/
cd ..
ls
cd a
cd arm64-linux/
ls
cd ..
ls
cd x86_64-linux/
ls
cd script/
ls
bash uninstall.sh
ls
cd ..
ls
cd ..
ls
cd ..
ls
ll
cd 3.3.0.alpha001/
sl
ls
cd arm64-linux/
ls
cd ..
ls
cd 5.0.2.alpha003/
ls
cd arm64-linux/
ls
cd ..
ls
cd ..
~
cd ~
ls
./Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run --uninstall
ls
cd Ascend
ls
cd ascend-toolkit/
ls
tree
rm -rf *
sudo rm -rf *
ls
su
ls
cd ..
ls
cd ..
ls
./Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run --install
df -hl
cd /tmp
ls
su
cd ~
ls
./Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run --install
ls
cd cjl/
ls
cd beiyoumoxing/
ls
cp ../tools/msame/out/msame .
ls
bash convert.sh
ls
vi convert.sh
find ~ -name aic-ascend310*
cd /home/HwHiAiUser/Ascend/ascend-toolkit/5.0.2.alpha003/arm64-linux/opp/op_impl/built-in/ai_core/tbe/config/ascend310/
ls
ll
su
vi aic-ascend310-ops-info.json
cd ~
cd da
cd cjl
ls
cd beiyoumoxing/
ls
vi convert.sh
cd ~/Ascend
ls
cd ascend-toolkit/
ls
source set_env.sh
cd ~/cjl/beiyoumoxing/
ls
atc --model=bboxes.onnx --framework=5 --input_format=NCHW --input_shape="0:1,3,32,256,451;1:1,3,32,256,451;2:5,5" --output=out --soc_version=Ascend310
export DUMP_GE_GRAPH=2
export DUMP_GRAPH_LEVEL=3
atc --model=bboxes.onnx --framework=5 --input_format=NCHW --input_shape="0:1,3,32,256,451;1:1,3,32,256,451;2:5,5" --output=out --soc_version=Ascend310
ls
ifconfig
cd Ascend
ls
cd ascend-toolkit/
ls
cd Ascend/ascend-toolkit/
ls
cd ~
ls
git clone https://gitee.com/ascend/samples.git
ls
unzip ascend-samples-master.zip
ls
rm ascend-samples-master.zip
ls
cd samples/
ls
cd cplusplus/
cd level2_simple_inference/
ls
cd 0_data_process/
ls
cd vdecandvenc/
ll
cd scripts/
ls
bash testcase_200dk.sh c75
ls
cd ..
ls
cd out/
ls
./cplusplus_vdecandvenc
./cplusplus_vdecandvenc ../data/person.mp4
pwd
cd ~
ls
cd ascend
ls
cd log/plog/
ls
cd ~
ls
cd /var
ls
cd log/npu/slog/
ls
rm -rf device-app-*
ls
cd device-os/
ls
rm device-os_20180128155826623.log
c d..
cd ..
cd device-0/
ls
rm device-0_20180128162313169.log
cd /home/HwHiAiUser/samples/cplusplus/level2_simple_inference/0_data_process/vdecandvenc/out
ls
./cplusplus_vdecandvenc ../data/person.mp4
cd -
ls
cd ..
ls
cd device-app-3076/
ls
ll
grep ERROR -rn *
:q
ls
vi device-app-3076_20180128163315841.log
c d..
cd ..
cd device-os/
ls
vi device-os_20180128163254438.log
cd -
ls
cd ~
ls
cd samples/
ls
cd cplusplus/level2_simple_inference/0_data_process/vdecandvenc/
ls
cd out/
ls
cd output/
ls
pwd
cd ..
cd 0
cd -
ls
cd 2_object_detection/
ls
cd YOLOV3_coco_detection_video/
ls
cd data/
ll
cd ../
ll
cd scripts/
ll
ifconfig
ll
vim param.conf
cd ../
cd data/
t 192.168.220.201  netmask 255.255.254.0  broadcast 192.168.221.255
ll
wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/YOLOV3_coco_detection_video/detection.mp4
BE’:
wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/YOLOV3_coco_detection_video/detection.mp4
cd ../
cd model/
ll
ping baidu.com
wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/YOLOV3_coco_detection_video/detection.mp4
wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/YOLOV3_coco_detection_video/detection.mp4 --no-ch
ls
mv ../data/
mv detection.mp4 ../data/
cd ../data/
ls
cd ../model/
ls
wget https://modelzoo-train-atc.obs.cn-north-4.myhuaweicloud.com/003_Atc_Models/AE/ATC%20Model/Yolov3/yolov3.caffemodel
wget https://modelzoo-train-atc.obs.cn-north-4.myhuaweicloud.com/003_Atc_Models/AE/ATC%20Model/Yolov3/yolov3.caffemodel --no-check-certificate
wget https://modelzoo-train-atc.obs.cn-north-4.myhuaweicloud.com/003_Atc_Models/AE/ATC%20Model/Yolov3/yolov3.prototxt --no-check-certificate
wget https://modelzoo-train-atc.obs.cn-north-4.myhuaweicloud.com/003_Atc_Models/AE/ATC%20Model/Yolov3/aipp_nv12.cfg --no-check-certificate
ll
rm aipp_nv12.cfg
wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/YOLOV3_coco_detection_video/aipp_bgr.cfg
wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/YOLOV3_coco_detection_video/aipp_bgr.cfg --no-check-certificate
atc --model=./yolov3.prototxt --weight=./yolov3.caffemodel --framework=0 --output=yolov3 --soc_version=Ascend310 --insert_op_conf=./aipp_bgr.cfg
ls
cd ../data/
ls
vi ../scripts/param.conf
ifconfig
export DDK_PATH=$HOME/Ascend/ascend-toolkit/latest/x86_64-linux
export NPU_HOST_LIB=$DDK_PATH/acllib/lib64/stub
cd $HOME/samples/cplusplus/level2_simple_inference/2_object_detection/YOLOV3_coco_detection_video
mkdir -p build/intermediates/host
cd build/intermediates/host
make clean
cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
cd ../../../../
cd YOLOV3_dynamic_batch_detection_picture/
cd ..
cd YOLOV3_coco_detection_video/
ls
cd out/
ls
make
cd ..
ls
cd data/
ls
cd ..
ll
cd model/
ll
cd ../
cd build/intermediates/host
ll
make clean
cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
make
export DDK_PATH=$HOME/Ascend/ascend-toolkit/latest/x86_64-linux
export NPU_HOST_LIB=$DDK_PATH/acllib/lib64/stub
make clean
cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
make
export LD_LIBRARY_PATH=/home/HwHiAiUser/ascend_ddk/arm/lib:/home/HwHiAiUser/Ascend/acllib/lib64:$LD_LIBRARY_PATH
export PYTHONPATH=/home/HwHiAiUser/Ascend/pyACL/python/site-packages/acl:$PYTHONPATH
make clean
cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
make
find / -name acl.h
cd
ll
vim .bashrc
cd -
ll
export LD_LIBRARY_PATH=/home/HwHiAiUser/Ascend/ascend-toolkit/5.0.2.alpha003/arm64-linux/acllib/include/acl/acl.h
make clean
cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
make
cd
ll
vim .bashrc
cd -
ll
export DDK_PATH=$HOME/Ascend/ascend-toolkit/latest/arm64-linux
make clean
cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
make
cd
ls
cd Ascend/
ls
cd ..
cd ascend_ddk/arm/
ls
cd include/
ls
cd ~
ls
cd ~/samples/cplusplus/level2_simple_inference/2_object_detection/YOLOV3_coco_detection_video/build/intermediates/host
cd ..
cd src/
vi CMakeLists.txt
cd ..
ls
cd build/intermediates/host/
cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
make
export DDK_PATH=$HOME/Ascend/ascend-toolkit/latest/arm64-linux
make clean
make
cd ../..
cd ..
ls
cd src/
ls
vi Cm
vi CMakeLists.txt
cd ..
ls
cd build/intermediates/host
make clean
cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
make
cd ..
ls
cd src/
ls
vi CMakeLists.txt
cd ../build/intermediates/host/
ls
make clean
cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
export NPU_HOST_LIB=$DDK_PATH/acllib/lib64/stub
make clean
cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
make
cd $HOME/samples/common/
bash run_presenter_server.sh $HOME/samples/cplusplus/level2_simple_inference/2_object_detection/YOLOV3_coco_detection_video/scripts/param.conf
export LD_LIBRARY_PATH=
source ~/.bashrc
cd $HOME/samples/cplusplus/level2_simple_inference/2_object_detection/YOLOV3_coco_detection_video/out
mkdir output
./main ../data/detection.mp4
eixt
exit
cd samples/
ls
cd cplusplus/
ls
cd level2_simple_inference/
ls
cd 0
cd 0_data_process/
ls
cd vdecandvenc/
ls
cd $HOME/samples/common/
bash run_presenter_server.sh $HOME/samples/cplusplus/level2_simple_inference/2_object_detection/YOLOV3_coco_detection_video/scripts/param.conf
ls
cd samples/
cd cp
cd cplusplus/
cd level2_simple_inference/
cd 0_data_process/
cd vdecandvenc/
ls
cd out/
ls
cd output/
ls
vi dvpp_venc.h264
cd Ascend/ascend-toolkit/
ls
ls
cd Ascend/
cd ascend
cd ascend-toolkit/
ls
cd ../../
ifconfig
edge -a 12.0.0.88 -c edge0 -k wss -l 124.70.87.1:4000
ifconfig
su root
ls
cd n2n/
cd ..
su root
exit
ll
mkdir yaoyu
cd yaoyu/
git clone https://gitee.com/ascend/samples.git
export GIT_SSL_NO_VERIFY=1
git clone https://gitee.com/ascend/samples.git
ll
cd samples/cplusplus/l2
cd samples/cplusplus/level2_simple_inference/
ll
cd 0_data_process/
ll
cd vdec
ll
cd scripts/
ll
bash testcase_200dk.sh c75
cd ../out/
ll
cd output/
ll
cd ../../data/
ll
cd -
pwd
cd
cd Ascend/
cd a
cd ascend-toolkit/
ll
ls
ll
ls
git clone https://github.com/meyerd/n2n.git
ping souhu.com
ping qq.com
history
git clone https://github.com/meyerd/n2n.git --no-check-certificate
ls
unzip n2n.zip
ls
rm n2n.zip
ls
cd n2n/n2n_v2
mkdir build
ls
apt install libssl-dev
su root
cd Ascend/
cd ascend-toolkit/
ls
su root
cd /usr/lib64/aicpu_kernels/0/aicpu_kernels_device
ls
vi ~/.bashrc
ls
ll
cd ../../..
ll
cd ..
cd ~
cd Ascend/
ls
cd ascend-toolkit/
ls
source set_env.sh
cdd ~/samples/cplusplus/level2_simple_inference/0_data_process/vdecandvenc/
cd ~/samples/cplusplus/level2_simple_inference/0_data_process/vdecandvenc/
ls
cd build/
ls
cd ..
cd data/
ls
cd ..
cd build/intermediates/host/
ls
rm -rf *
ls
cmake ../../../src -DCMAKE_CXX_COMPILER=aarch64-linux-gnu-g++ -DCMAKE_SKIP_RPATH=TRUE
make
cd ../../../out/
ls
./main ../data/person.mp4
cd output/
ls
ifconfig
ls
cd Ascend/ascend-toolkit/
ls
cat /var/davinci/driver/version.info
cd ../../
ls
wget https://obs-9be7.obs.cn-east-2.myhuaweicloud.com/turing/resourcecenter/Software/CANN/3.3.0/Ascend-cann-nnrt_3.3.0_linux-aarch64.run?response-content-type=application/octet-stream
wget https://obs-9be7.obs.cn-east-2.myhuaweicloud.com/turing/resourcecenter/Software/CANN/3.3.0/Ascend-cann-nnrt_3.3.0_linux-aarch64.run?response-content-type=application/octet-stream --no-check-certificate
ls
rm Ascend-cann-nnrt_3.3.0_linux-aarch64.run\?response-content-type\=application%2Foctet-stream
ls
mkdir upgrade
mv Ascend-cann-nnrt_3.3.0_linux-aarch64.run upgrade/
ls
cd upgrade/
ls
wget https://gitee.com/ascend/tools/raw/master/update_200dk/update_200dk.sh
wget https://gitee.com/ascend/tools/raw/master/update_200dk/update_200dk.sh --no-check-certificate
ls
su root
cd ..
cd samples/cplusplus/level2_simple_inference/0_data_process/vdecandvenc/
cd build/intermediates/host/
rm -r *
ls
cmake ../../../src -DCMAKE_CXX_COMPILER=aarch64-linux-gnu-g++ -DCMAKE_SKIP_RPATH=TRUE
make
cd ../../../
ls
cd out/
ls
rm -r output/
./main ../data/person.mp4
ls
cd $HOME/samples/common
bash script/run_presenter_server.sh $HOME/samples/python/level2_simple_inference/2_object_detection/face_detection_rtsp/scripts/face_detection.conf
cd $HOME/samples/common
bash script/run_presenter_server.sh $HOME/samples/python/level2_simple_inference/2_object_detection/face_detection_rtsp/scripts/face_detection.conf
su root
ls
bash run_presenter_server.sh $HOME/samples/python/level2_simple_inference/2_object_detection/face_detection_rtsp/scripts/face_detection.conf
ls
cd Ascend/
cd ascend-toolkit/
ls
cd ..
ls
cd ..
cd upgrade/
ls
rm Ascend-cann-nnrt_3.3.0_linux-aarch64.run
ls
wget https://ascend-repo.obs.cn-east-2.myhuaweicloud.com/CANN/5.0.2.alpha003/Ascend-cann-nnrt_5.0.2.alpha003_linux-aarch64.run
wget https://ascend-repo.obs.cn-east-2.myhuaweicloud.com/CANN/5.0.2.alpha003/Ascend-cann-nnrt_5.0.2.alpha003_linux-aarch64.run --no-check-certificate
su root
cd ,,
cd ..
cd Ascend/
cd ascend-toolkit/
ls
source set_env.sh
source ~/.bashrc
cd ../../
cd samples/
cd python/
ls
cd level2_simple_inference/
cd 0_data_process/
ls
cd ..
cd 2_object_detection/
cd face_detection_rtsp/
ls
cd scripts/
ls
bash testcase_200dk.sh c75
cd ..
cd scripts/face_detection.conf
vi scripts/face_detection.conf
ifconfig
vi scripts/face_detection.conf
cd scripts/
bash testcase_200dk.sh c75
cd ..
ls
cd data/
ls
cd ..
cd model/
ls
cd ..
python3.6 main.py
cd src/
python3.6 main.py
python3.7.5 main.py
cd ..
ls
cd data/
ls
cd ..
cd model/
ls
python3
python3.6
pip3
pip3 -V
pip3.6
pip3.6 install Cython
sudo apt-get install pkg-config libxcb-shm0-dev libxcb-xfixes0-dev
su
cd PyAv
su root
cd $HOME/face_detection_rtsp/src
cd $HOME/samples/common
bash script/run_presenter_server.sh $HOME/samples/python/level2_simple_inference/2_object_detection/face_detection_rtsp/scripts/face_detection.conf
cd ~/samples/python/level2_simple_inference/2_object_detection/face_detection_rtsp
ls
cd scripts/
bash testcase_200dk.sh c75
cd ..
ls
cd src
ls
python3.6 main.py
python3
apt-get install python3-pip
su root
ls
cd ..
cd scripts/
bash testcase_200dk.sh c75
cd ../src
ls
python3.6 main.py
cd ../scripts/
vi face_detection.conf
cd ..
cd src
ls
python3 main.py
python3.6 main.py
cd ..
ls
cd src/
cd ..
cd scripts/
ls
vi face_detection.conf
cd ../scripts/
cd ..
cd src
ls
python3.6 main.py
cd ..
ls
cd scripts/
ls
bash testcase_200dk.sh c75
rm ../model/face_detection.om
bash testcase_200dk.sh c75
cd ..
ls
cd src
ls
cd .
cd ..
cd scripts/
ls
vi face_detection.conf
ifconfig
vi face_detection.conf
ls
cd ../src/
ls
python3.6 main.py
ls
cd ../data/
ls
cd ..
ls
cd scripts/
ls
vi face_detection.conf
ls
cd ..
ls
cd data/
ls
mv person.mp4 person.h264
ls
cd ..
ls
cd src/
ls
python3.6 main.py
su root
cd ~/Ascend/ascend-toolkit/
ls
cd ../../
cd samples/
ls
cd cplusplus/
ls
cd level2_simple_inference/
ls
cd 5_nlp/
ls
cd WAV_to_word/
ls
cd data/
ls
cd ../scripts/
bash testcase_200dk.sh c75
cd ..
cd data/
ls
cat /proc/cmdline
ls
cd
ls
cd Ascend/
ls
cd ascend-toolkit/
ls
cd ..
ls
cd
cd samples/
ls
cd cplusplus/
ls
cd level2_simple_inference/
ls
cd 1_classification/
ls
cd googlenet_imagenet_picture/
ls
cd model/
ls
cd ..
ls
cd scripts/
ls
bash testcase_200dk.sh C76
ls
cd ..
ls
cd out/
ls
./main ../data/
cd ..
ls
cd ..
ls
cd ..
ls
cd 6_other/
ls
cd colorization
ls
cd model/
ls
cd ..
ls
cd scripts/
ls
bash testcase_200dk.sh C75
ls
rm A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc\ .tar.gz
ls
wget https://obs-9be7.obs.cn-east-2.myhuaweicloud.com/turing/resource/atlas200dk/1.0.10/A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz?response-content-type=application/octet-stream
ls
su root
ls
cd upgrade/
ls
cd ..
mv A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz\?response-content-type\=application%2Foctet-stream /opt/mini/
su root
cd /opt/mini/
ls
tar --no-same-owner -zxf A200dk-npu-driver-{software version}-ubuntu18.04-aarch64-minirc.tar.gz --strip-components 2 driver/scripts/minirc_install_phase1.sh
tar --no-same-owner -zxf A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz\?response-content-type\=application%2Foctet-stream --strip-components 2 driver/scripts/minirc_install_phase1.sh
rm A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz\?response-content-type\=application%2Foctet-stream
sudo rm A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz\?response-content-type\=application%2Foctet-stream
su
ls
wget https://obs-9be7.obs.cn-east-2.myhuaweicloud.com/turing/resource/atlas200dk/1.0.10/A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz
su root
ls
exit
ls
ssh-keygen
vim ~/.ssh/authorized_keys
exit
su
ls
pwd >> ~/.bashrc
vim ~/.bashrc
source ~/.bashrc
cmake --version
which -a cmake
exit
ls
tar -zxvf acl_operator_add.tar.gz
ls
cd acl_operator_add
ls
python3.7.5
ls
python3.7.5 -m venv venv
source venv/bin/activate
pip config set global.index-url https://mirrors.bfsu.edu.cn/pypi/web/simple
pip install -U pip
ls
python acl_execute_add.py
pip install sympy numpy decorator
ls
python acl_execute_add.py
atc --singleop=config/add_op.json --soc_version=Ascend310 --output=op_models
python acl_execute_add.py
cd ..
ls
su
ls
cd acl_operator_add
ls
history >> official5.0.2.sh
ls
cd ..
ls
cd Ascend/
ls
cd acllib/
ls
cd ../ascend-toolkit/
ls
cd ..
ls
cd ..
ls
cd /opt
ls
cd cmake/
ls
su
source ~/.bash
source ~/.bashrc
ls
cd
ls
tar -xvJf gmp-6.1.2.tar.xz
cd gmp-6.1.2
ls
./configure --enable-cxx
su
cd ../ascend310_single_op_sample/build/
ls
cmake .. -DMINDSPORE_PATH=${mindspore_path}
ls
cd ..
ls
rm -rf mindspore_ascend-1.3.0-linux_aarch64/
su
unzip ascend310_single_op_sample.zip
ls
su
ls
tar -zxvf mindspore_ascend-1.3.0-linux_aarch64.tar.gz
ls
unzip ascend310_single_op_sample.zip
cd ascend
cd ..
cd ascend310_single_op_sample
ls
mkdir build
cd build/
ls
cmake .. -DMINDSPORE_PATH=${mindspore_path}
ls
make
vim ~/.bashrc
ls
cd mindspore_ascend-1.3.0-linux_aarch64
ls
pwd >> ~/.bashrc
vim ~/.bashrc
source ~/.bash
source ~/.bashrc
ls
cd ..
ls
cd ascend310_single_op_sample
ls
cd build/
ls
cd ascend310_single_op_sample
ls
cd build/
ls
cmake .. -DMINDSPORE_PATH=${mindspore_path}
ls
cd ..
rm -rf build/
mkdir build
cd build/
cmake .. -DMINDSPORE_PATH=${mindspore_path}
make
ldd tensor_add_sample
find ~ -name libplatform.so
su
ls
ldd tensor_add_sample
./tensor_add_sample
cd
ls
mkdir patch
cd patch/
wget http://ftp.gnu.org/gnu/patch/patch-2.7.6.tar.xz
ls
tar -Jxvf patch-2.7.6.tar.xz
cd patch-2.7.6
ls
./configure --help
su
exit
cd mindspore_ascend-1.3.0-linux_aarch64
ls
cd lib/
ls
ldd libmindspore.so
ls
cd ../..
ls
cd mindspore/mindspore/
ls
cd build
ls
cd mindspore/
ls
cd ..
ls
cd package/
ls
cd mindspore/l
cd mindspore/
ls
cd lib/
ls
cd ..
exit
apt list neovim
gcc --version
exit
mkdir mindspore
cd mindspore
git clone https://gitee.com/mindspore/mindspore.git -b r1.3
ls
cd mid
cd mindspore/
ls
bash build.sh -e ascend -V 310
cd ..
ls
cd patch/
sl
ls
cd patch-2.7.6
ls
su
tclsh8.6
update-alternatives --config tclsh
cd
su
ls
cd mindspore
cd mindspore/
ls
bash build.sh -e ascend -V 310
ls
cd ..
ls
cd ..
ls
mkdir mspip
cd mspip/
ls
python3.7.5 -m venv venv
source ./venv/bin/activate
pip install https://ms-release.obs.cn-north-4.myhuaweicloud.com/1.3.0/MindSpore/ascend/aarch64/mindspore_ascend-1.3.0-cp37-cp37m-linux_aarch64.whl --trusted-host ms-release.obs.cn-north-4.myhuaweicloud.com
pip install -U pip
pip install setuptools
pip install https://ms-release.obs.cn-north-4.myhuaweicloud.com/1.3.0/MindSpore/ascend/aarch64/mindspore_ascend-1.3.0-cp37-cp37m-linux_aarch64.whl --trusted-host ms-release.obs.cn-north-4.myhuaweicloud.com
python
find / -name liboptiling.so
cd
vim ~/.bashrc
source ~/.bashrc
vim ~/.bashrc
cd ascend310_single_op_sample
ls
rm -rf build/
ls
mkdir build
cd build/
ls
cmake .. -DMINDSPORE_PATH=`pip3 show mindspore-ascend | grep Location | awk '{print $2"/mindspore"}' | xargs realpath`
ls
make
cmake .. -DMINDSPORE_PATH=`pip3 show mindspore-ascend | grep Location | awk '{print $2"/mindspore"}' | xargs realpath`
ls
cd ..
ls
vim CMakeLists.txt
cd `pip3 show mindspore-ascend | grep Location | awk '{print $2"/mindspore"}' | xargs realpath`
pip3 show mindspore-ascend | grep Location | awk '{print $2"/mindspore"}' | xargs realpath
pip3 show mindspore-ascend | grep Location | awk '{print $2"/mindspore"}'
gcc --version
sudo apt install build-essentials
su
ls
which gcc
g++ --version
gxx --version
bash build.sh -e ascend -V 310
ls
bash build.sh -e ascend -V 310
ls
cd ../../mspip/venv/
source bin/activate
cd ..
ls
cd ..
pip3 show mindspore-ascend | grep Location | awk '{print $2"/mindspore"}' | xargs realpath
ls
cd mspip/
ls
cd ../ascend310_single_op_sample
ls
rm -rf build/
mkdir build
cd build/
ls
cmake .. -DMINDSPORE_PATH=`pip3 show mindspore-ascend | grep Location | awk '{print $2"/mindspore"}' | xargs realpath`
make
export LD_LIBRARY_PATH=`pip3 show mindspore-ascend | grep Location | awk '{print $2"/mindspore/lib"}' | xargs realpath`:${LD_LIBRARY_PATH}
ls
./tensor_add_sample
find / -name libopt_feature.so 2>>/dev/null
find / -name libopt_feature.so
find / -name libopt_feature.so 2>>/dev/null
ls
./tensor_add_sample
ldd tensor_add_sample
ls
cd ..
ls
mkdir binaryrelease
cd binaryrelease/
ls
vim ~/.bashrc
cat ../CMakeLists.txt
cmake .. -DMINDSPORE_PATH=${mindspore_path}
make
ldd tensor_add_sample
ls
ldd tensor_add_sample | grep not
su
ls
cd ..
ls
vim CMakeLists.txt
man ldd
ldd -v tensor_add.mindir
ldd tensor_add.mindir
cd binaryrelease/
ldd -v tensor_add_sample
ldd -v tensor_add_sample  >> ldd.txt
vim ldd.txt
cd
cd Ascend/
ls
cd ascend
cd ascend-toolkit/
ls
cd latest
ls
cd atc
ls
cd lib64/
ls
find / -name libmmpa.a 2>/dev/null
cd ..
cd ~/mindspore/mindspore/graphengine/third_party/prebuild/aarch64/
ls
history | grep build.sh
bash build.sh -e ascend -V 310
su
bash build.sh -e ascend -V 310
clear
ls
cd
cd Ascend/
ls
cd acllib/
ls
cd lib64/
ls
pwd
ls
cd ..
ls
cd ..
ls
cd ascend
cd ascend-toolkit/
ls
cd 5.0.2.alpha003/
ls
cd acllib
ls
cd lib64/
ls
pwd
cd
cd mindspore/mindspore/
ls
history
bash build.sh -e ascend -V 301
bash build.sh -e ascend -V 310
ls
bash build.sh -e ascend -V 310
stat
stat --help
cat /proc/meminfo
cd ~/Ascend/
ls
cd acllib/
ls
cd lib64/
ls
clear
find ~ -name libaicore_utils.so
ls
exit
ls
cd cplusplus/level2_simple_inference/1_classification/
ls
cd vpc_resnet50_imagenet_classification/
ls
cd caffe_model/
ls
cd ..
atc --input_shape="data:1,3,224,224" --weight="resnet50.caffemodel" --input_format=NCHW --output="resnet50" --soc_version=Ascend310 --insert_op_conf=./insert_op.cfg --framework=0 --model="resnet50.prototxt" --output_type=FP32
atc --model=caffe_model/resnet50.prototxt --weight=caffe_model/resnet50.caffemodel --framework=0 --soc_version=Ascend210 --insert_op_conf=caffe_model/aipp.cfg --output=model/resnet50_aipp
atc --model=caffe_model/resnet50.prototxt --weight=caffe_model/resnet50.caffemodel
cd out/
./main
atc --model=caffe_model/resnet50.prototxt --weight=caffe_model/resnet50.caffemodel --framework=0 --soc_version=Ascend210 --insert_op_conf=caffe_model/aipp.cfg
clear
./main
atc --model=caffe_model/resnet50.prototxt --weight=caffe_model/resnet50.caffemodel --framework=0 --soc_version=Ascend210 --insert_op_conf=caffe_model/aipp.cfg --output_type=FP32
cd ..
atc --model=caffe_model/resnet50.prototxt --weight=caffe_model/resnet50.caffemodel --framework=0 --soc_version=Ascend210 --insert_op_conf=caffe_model/aipp.cfg --output_type=FP32
atc --model=caffe_model/resnet50.prototxt --weight=caffe_model/resnet50.caffemodel --framework=0 --soc_version=Ascend210 --insert_op_conf=caffe_model/aipp.cfg --output=model/resnet50_aipp --output_type=FP16
atc --model=caffe_model/resnet50.prototxt --weight=caffe_model/resnet50.caffemodel --framework=0 --soc_version=Ascend310 --insert_op_conf=caffe_model/aipp.cfg --output=model/resnet50_aipp --output_type=FP16
./out/main
atc --model=caffe_model/resnet50.prototxt --weight=caffe_model/resnet50.caffemodel --framework=0 --soc_version=Ascend310 --insert_op_conf=caffe_model/aipp.cfg --output=model/resnet50_aipp
./out/main
ls
cd model/
ls
cd ..
ls
reboot
exit
cd cplusplus/level2_simple_inference/1_classification/vpc_resnet50_imagenet_classification/
ls
./out/main
cd out/
./main
cd ..
atc --model=caffe_model/resnet50.prototxt --weight=caffe_model/resnet50.caffemodel --framework=0 --soc_version=Ascend310 --insert_op_conf=caffe_model/aipp.cfg --output=model/resnet50_aipp_fp16 --output_type=FP16
ls
cd out/
ls
cd ..
ls
cd build/intermediates/minirc/
ls
make
cd ..
ls
cd ..
cd ../out/
./main
cd ..
ls
atc --model=caffe_model/resnet50.prototxt --weight=caffe_model/resnet50.caffemodel --framework=0 --soc_version=Ascend310 --insert_op_conf=caffe_model/aipp.cfg --output=model/resnet50_aipp_fp16 --output_type=FP32
ls
cd build/intermediates/minirc/
make
cd ../../..
ls
cd out/
./main
ls
cd ..
ls
cd build/intermediates/minirc/
make
cd ..
ls
cd ..
ls
cd ..
ls
cd out/
ls
./main
git init
ls
git add .
git commit -m "Fork"
git config --global user.email dandelight@qq.com
git config --global user.name dandelight
git commit -m "Fork"
ls
cd build/
ls
cmake ..
cmake .. -DCMAKE_CXX_COMPILER=aarch64-linux-gnu-g++ -DCMAKE_SKIP_RPATH=TRUE
ls
make
exit
make
exit
cd
ls
cd ascend_ddk/
ls
cd arm/
ls
cd bu
cd bin/
ls
`pwd` >> ~/.bashrc
$(pwd) >> ~/.bashrc
pwd >> ~/.bashrc
cd ..
ls
cd include/
sl
ls
cd opencv4/
ls
pwd >> ~/.bashrc
cd ..
ls
cd ..
ls
cd lib/
ls
pwd >> ~/.bashrc
vim ~/.bashrc
source ~/.bashrc
cd
ls
cd isopencvhere/
ls
g++ main.cpp
vim ~/ascend_ddk/
cd ~/ascend_ddk/arm/include/opencv4/
ls
cd opencv2/
ls
cd img
cd imgproc
ls
vim imgproc.hpp
cd ..
ls
vim imgproc.hpp
ls
cd ..
cd
ls
cd ascend
**sudo apt-get install build-essential libgtk2.0-dev libavcodec-dev libavformat-dev libjpeg-dev libtiff5-dev git cmake libswscale-dev pkg-config -y**
sudo apt-get install build-essential libgtk2.0-dev libavcodec-dev libavformat-dev libjpeg-dev libtiff5-dev git cmake libswscale-dev pkg-config -y
su
cd
cd samples-master
ls
cd cplusplus/level2_simple_inference/
ls
cd 2_object_detection/
ls
cd .
cd "/home/HwHiAiUser/samples-master/cplusplus/level2_simple_inference/2_object_detection/VGG_SSD_coco_detection_CV_with_AIPP/CMakeLists.txt"
cd "/home/HwHiAiUser/samples-master/cplusplus/level2_simple_inference/2_object_detection/VGG_SSD_coco_detection_CV_with_AIPP/"
ls
cd model/
ls
wget https://modelzoo-train-atc.obs.cn-north-4.myhuaweicloud.com/003_Atc_Models/AE/ATC%20Model/VGG_SSD/vgg_ssd.caffemodel
wget https://modelzoo-train-atc.obs.cn-north-4.myhuaweicloud.com/003_Atc_Models/AE/ATC%20Model/VGG_SSD/vgg_ssd.prototxt
atc --output_type=FP32 --input_shape="data:1,3,300,300" --weight=./vgg_ssd.caffemodel --input_format=NCHW --output=./vgg_ssd --soc_version=Ascend310 --insert_op_conf=./insert_op.cfg --framework=0 --save_original_model=false --model=./vgg_ssd.prototxt
wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/VGG_SSD_coco_detection_CV_with_AIPP/insert_op.cfg
atc --output_type=FP32 --input_shape="data:1,3,300,300" --weight=./vgg_ssd.caffemodel --input_format=NCHW --output=./vgg_ssd --soc_version=Ascend310 --insert_op_conf=./insert_op.cfg --framework=0 --save_original_model=false --model=./vgg_ssd.prototxt
ls
tmux
cd ../data/
ls
wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/VGG_SSD_coco_detection_CV_with_AIPP/bicycle.jpg
wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/VGG_SSD_coco_detection_CV_with_AIPP/boat.jpg
ls
cd ..
mkdir -p build/intermediates/host
cd build/intermediates/host/
ls
cmake \.\./\.\./\.\./src -DCMAKE_CXX_COMPILER=aarch64-linux-gnu-g++ -DCMAKE_SKIP_RPATH=TRUE
cmake ../../../src -DCMAKE_CXX_COMPILER=aarch64-linux-gnu-g++ -DCMAKE_SKIP_RPATH=TRUE
ls
make
ls
cd ../../../out/
ls
./main
vim ~/.ssh/authorized_keys
ls
cd "/home/HwHiAiUser/samples-master/cplusplus/level2_simple_inference/2_object_detection/VGG_SSD_coco_detection_DVPP_with_AIPP"
ls
cd model/
ls
cp "/home/HwHiAiUser/samples-master/cplusplus/level2_simple_inference/2_object_detection/VGG_SSD_coco_detection_CV_with_AIPP/model/vgg_ssd.om" .
cd ..
ls
mkdir -p build/intermediates/host
cd build/intermediates/host/
ls
cmake  ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
make
g++ -lopencv_core --verbose
g++ -lopencv --verbose
g++ -lm --verbose
ls
cd isopencvhere/
ls
vim main.cpp
vim CMakeLists.txt
mkdir build
cd build/
ls
cmake ..
cd ..
ls
vim main.cpp
vim CMakeLists.txt
cd build/
cmake ..
ls
vim ../CMakeLists.txt
cmake ..
vim ../CMakeLists.txt
cmake ..
ls
make
vim ../CMakeLists.txt
cd ..
vim CMakeLists.txt
cd build/
cmake ..
ls
make
cd ..
ls
vim ~/.bashrc
vim CMakeLists.txt
cd build/
cmake ..
make
vim ../CMakeLists.txt
cd /home/HwHiAiUser/ascend_ddk/arm/lib/
ls
cd -
vim ../CMakeLists.txt
cmake ..
make
ls
cd ..
ls
vim main.cpp
cd build/
make
ls
vim ../CMakeLists.txt
cmake ..
make
ls
cd ~/ascend_ddk/arm/lib/
ls
pwd >> ~/isopencvhere/CMakeLists.txt
vim ~/isopencvhere/CMakeLists.txt
cd -
cmake ..
make
ls
cd ..
g++ main.cpp `pkg-config --cflags --libs opencv` -o test
pkg-config
man pkg-config
pkg-config --help
pkg-config --version
ls
vim CMakeLists.txt
cd build/
cmake ..
vim ../CMakeLists.txt
vim ~/.bashrc
ls
cd mindspore
ls
cd mindspore/
ls
vim ~/.bashrc
source ~/.bashrc
ls
cd ..
ls
exit
wget https://ascend-repo.obs.cn-east-2.myhuaweicloud.com/CANN/5.0.2.alpha005/Ascend-cann-toolkit_5.0.2.alpha005_linux-aarch64.run
ls
chmod u+x Ascend-cann-toolkit_5.0.2.alpha005_linux-aarch64.run
./Ascend-cann-toolkit_5.0.2.alpha005_linux-aarch64.run --install
cd ..
ls
cd
cd Ascend
ls
cd ascend
ls
cd ascend-toolkit/
ls
ls -l
cd ..
ls
cd mspip/
ls
rm -rf venv/
python3.7.5 -m venv venv
source venv/bin/activate
pip install -U pip
pip install -i https://mirrors.bfsu.edu.cn/pypi/web/simple pip -U
vim ~/.config/pip/pip.conf
pip install -U pip
find / -name libopt_feature.so
ls
find / -name libopt_feature.so 2>>/dev/null
ls
pip install https://ms-release.obs.cn-north-4.myhuaweicloud.com/1.3.0/MindSpore/ascend/aarch64/mindspore_ascend-1.3.0-cp37-cp37m-linux_aarch64.whl --trusted-host ms-release.obs.cn-north-4.myhuaweicloud.com
ls
cd ../ascend310_single_op_sample
ls
cd build/
ls
cmake ..
make
./tensor_add_sample
ldd tensor_add_sample | grep "not found"
find / -name opt_feature.so 2>>/dev/null
find / -name libopt_feature.so 2>>/dev/null
vim ~/.bashrc
source ~/.bashrc
ls
source ~/mspip/venv/bin/activate
ls
./tensor_add_sample
find / -name liboptiling.so
ls
vim ~/.bashrc
source ~/.bashrc
ls
vim ~/.bashrc
ls
cd mm
cd ..
ls
cd
cd mspip/
ls
mkdir alpha005
rm alpha005/
rmdir alpha005/
python3.7.5 -m venv alpha005
source alpha005/bin/activate
cd ~/Ascend/ascend-toolkit/latest/fwkacllib/lib64/
pip install te-0.4.0-py3-none-any.whl
pip install -U pip
ls
pip install te-0.4.0-py3-none-any.whl topi-0.4.0-py3-none-any.whl
source ~/.bashrc
ls
cd ..
cd
cd mspip/
ls
source alpha005/bin/activate
cd ..
echo $mindspore_path
ls
cd mindspore_ascend-1.3.0-linux_aarch64
ls
cd ..
ls
cd ascend310_single_op_sample
ls
cd main.cc
cd build/
ls
make
./tensor_add_sample
echo $LD_LIBRARY_PATH
echo ${LD_LIBRARY_PATH:\\\n}
echo ${LD_LIBRARY_PATH:\\n}
echo ${LD_LIBRARY_PATH:\\\}
echo ${LD_LIBRARY_PATH} | find fwk
echo ${LD_LIBRARY_PATH} | grep fwk
vim ~/.bashrc
source ~/.bashrc
source ~/mspip/alpha005/bin/activate
ls
./tensor_add_sample
ls
make
./tensor_add_sample
deactivate
./tensor_add_sample
ls
cmake .. -DMINDSPORE_PATH=${mindspore_path}
make
./tensor_add_sample
ls
cd
ls
cd ascend_ddk/
ls
cd ..
ls
vim ~/.bashrc
cd $mindspore_path
ls
cd lib/
ls
pwd >> ~/.bashrc
vim ~/.bashrc
source ~/.bashrc
ls
cd
ls
cd ascend310_single_op_sample
ls
cd b
cd build/
ls
./tensor_add_sample
ls
cp ../tensor_add.mindir .
ls
./tensor_add_sample
ls
./tensor_add_sample
ls
source ~/mspip/alpha005/bin/activate
./tensor_add_sample
pip install sympy
./tensor_add_sample
ls
l
ls
cd ..
ls
cd ..
ls
git clone --depth 1  https://gitee.com/mirrors/linux.git
git clone --depth 1 git@gitee.com:mirrors/linux.gt
git clone --depth 1 git@gitee.com:mirrors/linux.git
cat ~/.ssh/id_rsa.pub
git clone --depth 1 git@gitee.com:mirrors/linux.git
ls
cd linux/
ls
git fetch --unshallow
ls
cd ..
mkdir full
cd full/
git clone  git@gitee.com:mirrors/linux.git
ls
exit
ls
cd build/
cmake ..
make
ls
cd ..
ls
cd b
cd bin/
ls
./opencv_test ~/image/dog1_1024_683.jpg
mkdir images
./opencv_test ~/image/dog1_1024_683.jpg
./opencv_test
cd ../build/
make
cd ../b
cd ../bin/
./opencv_test
file ~/image/dog1_1024_683.jpg
./opencv_test ~/image/dog1_1024_683.jpg
cd ../build/
make
cd ../bin/
ls
./opencv_test ~/image/dog1_1024_683.jpg
cd ../build/
ls
cmake ..
make
ls
cd ../bin/
ls
./opencv_test ~/image/dog1_1024_683.jpg
cd ../build/
make
cd ../b
cd ../bin/
ls
./opencv_test ~/image/dog1_1024_683.jpg
cd ..
git init
git status
git add .
git commit -m "OpenCV"
ls
cd build/
make
cd ../bin/
ls
./opencv_test ~/image/dog1_1024_683.jpg
cd ..
git add .
git commit -m "Remove commented code"
exit
git remote add origin git@gitee.com:dandelight/vision.git
git push -u origin master
exit
