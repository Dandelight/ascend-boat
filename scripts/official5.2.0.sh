    1  fdisk -l
    2  exit
    3  chmod u+w /etc/sudoers
    4  vi /etc/sudoers
    5  chmod u-w /etc/sudoers
    6  vi /etc/apt/sources.list
    7  apt-get update
    8  ping www.baidu.com
    9  exit
   10  cd /usr/lib/aarch64-linux-gnu
   11  ls
   12  ll | grep *.57
   13  exit
   14  cd /usr/lib/aarch64-linux-gnu
   15  ll | grep *.57
   16  ls
   17  ll | grep *.57
   18  vim /etc/ld.so.conf.d/ffmpeg.conf
   19  ldconfig
   20  vim /etc/profile
   21  source /etc/profile
   22  cp /home/HwHiAiUser/ascend_ddk/arm/lib/pkgconfig/* /usr/share/pkgconfig
   23  cd ascend_ddk/arm/
   24  ls
   25  exit
   26  vim /etc/ld.so.conf.d/ffmpeg.conf
   27  vim /etc/profile
   28  cp /home/HwHiAiUser/ascend_ddk/arm/lib/pkgconfig/* /usr/share/pkgconfig
   29  exit
   30  fdisk -l
   31  exit
   32  cp /home/HwHiAiUser/ascend_ddk/arm/lib/pkgconfig/* /usr/share/pkgconfig
   33  exit
   34  cp /home/HwHiAiUser/ascend_ddk/arm/lib/pkgconfig/* /usr/share/pkgconfig
   35  exit
   36  cd /home/HwHiAiUser/upgrade/
   37  ls
   38  bash update_200dk_20.2.sh 
   39  cd /opt/mini
   40  l
   41  ls
   42  cp /home/HwHiAiUser/A200dk-npu-driver-20.2.0-ubuntu18.04-aarch64-minirc.tar.gz .
   43  ls
   44  chmod 777 A200dk-npu-driver-20.2.0-ubuntu18.04-aarch64-minirc.tar.gz 
   45  ls
   46  tar --no-same-owner -zxf A200dk-npu-driver-20.2.0-ubuntu18.04-aarch64-minirc.tar.gz --strip-components 2 driver/scripts/minirc_install_phase1.sh
   47  ls
   48  ./minirc_install_phase1.sh
   49  reboot
   50  cd /home/HwHiAiUser/upgrade/
   51  ls
   52  bash update_200dk_20.2.sh 
   53  exit 
   54  ls
   55  mv Ascend-cann-toolkit_3.3.0.alpha006_linux-aarch64.run upgrade/
   56  cd upgrade/
   57  ls
   58  ./Ascend-cann-toolkit_3.3.0.alpha006_linux-aarch64.run --help
   59  ./Ascend-cann-toolkit_3.3.0.alpha006_linux-aarch64.run --upgrade
   60  mv Ascend-cann-toolkit_3.3.0.alpha006_linux-aarch64.run /usr/local/Ascend/
   61  LS
   62  ls
   63  exit
   64  fdisk -l
   65  asd
   66  fdisk -l
   67  rm -rf samples/
   68  exit
   69  insmod tun.ko
   70  git clone https://github.com/meyerd/n2n.git
   71  cd n2n/n2n_v2
   72  apt install libssl-dev
   73  apt install cmake
   74  apt install git
   75  apt install gcc
   76  apt install net-tools
   77  mkdir build
   78  cd build/
   79  cmake ..
   80  make install
   81  edge -a 12.0.0.88 -c edge0 -k wss -l 124.70.87.1:4000
   82  ifconfig
   83  exit
   84  cp aic-ascend310-ops-info.json aic-ascend310-ops-info.json.bak
   85  ls
   86  ll
   87  chown HwHiAiUser:HwHiAiUser aic-ascend310-ops-info.json.bak
   88  exit
   89  apt update
   90  apt install resolvconf
   91  chmod u+w /etc/resolv.conf
   92  vi /etc/resolv.conf
   93  vi /etc/resolvconf/resolv.conf.d/head
   94  service resolvconf restart
   95  exit
   96  rm -rf *
   97  exit
   98  cd ..
   99  exit
  100  cp aic-ascend310-ops-info.json  aic-ascend310-ops-info.json.bak
  101  chmod u+w aic-ascend310-ops-info.json
  102  exit
  103  mv A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz /opt/mini/
  104  ls
  105  cd /opt/mini/
  106  ls
  107  tar --no-same-owner -zxf A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz --strip-components 2 driver/scripts/minirc_install_phase1.sh
  108  ls
  109  ./minirc_install_phase1.sh
  110  reboot
  111  bash update_200dk.sh
  112  exit
  113  cd msame 
  114  exit
  115  Ascend/
  116  cd /root
  117  cd Ascend
  118  ll
  119  cd /var/
  120  ll
  121  cd log
  122  cd npu/
  123  cd slog/
  124  ll
  125  cd device-os/
  126  ls
  127  ll
  128  vi device-os_20180128155827501.log 
  129  cd ..
  130  ll
  131  cd device-app-2589/
  132  ls
  133  ll
  134  vi device-app-2589_20180128165733426.log 
  135  exit
  136  rm -r n2n/
  137  rm -r tools/
  138  rm tun.ko 
  139  rm -r upgrade/
  140  rm -r vf0/
  141  ls
  142  rm -r cjl/
  143  ls
  144  rm -r grade 
  145  ls
  146  rm -r samples/
  147  ls
  148  cd 
  149  /home/HwHiAiUser/ascend/log/plog
  150  cd 
  151  cd /home/HwHiAiUser/ascend/log/plog
  152  ls
  153  rm *
  154  ls
  155  cd /var/log/npu/slog/
  156  ll
  157  rm-r device-0/
  158  rm -r device-0/
  159  rm -r device-os/
  160  rm -r host-0/
  161  cd /var/log/npu/slog/ll
  162  ll
  163  cd ~
  164  ls
  165  exit
  166  edge -a 12.0.0.88 -c edge0 -k wss -l 124.70.87.1:4000 
  167  ifconfig
  168  cd ~
  169  ls
  170  exit
  171  insmod tun.ko
  172  git clone https://github.com/meyerd/n2n.git
  173  cd n2n/n2n_v2
  174  apt install libssl-dev
  175  cd build/
  176  ls
  177  cmake ..
  178  edge -a 12.0.0.88 -c edge0 -k wss -l 124.70.87.1:4000 
  179  ifconfig
  180  cd ../..
  181  cd ..
  182  cd Ascend/ascend-toolkit/
  183  ls
  184  exit
  185  cat /var/davinci/driver/version.info
  186  exit
  187  apt install libssl-dev
  188  apt install gcc
  189  apt install git
  190  apt install net-tools
  191  cd build/
  192  ls
  193  cd ~
  194  insmod tun.ko
  195  ls
  196  ll
  197  cd $HOME
  198  ls
  199  ssh HwHiAiUser@192.168.220.201
  200  ssh HwHiAiUser@12.0.0.66
  201  ssh HwHiAiUser@12.0.0.88
  202  bash update_200dk.sh
  203  exit
  204  bash update_200dk.sh
  205  exit
  206  apt-get install pkg-config libxcb-shm0-dev libxcb-xfixes0-dev
  207  apt-get install pkg-config libxcb-shm0-dev libxcb-xfixes0-dev --fix-missing
  208  ping  huaweicloud.com
  209  apt-get install pkg-config libxcb-shm0-dev libxcb-xfixes0-dev --fix-missing
  210  apt-get install ntp
  211  sudo wget -O /etc/apt/sources.list https://repo.huaweicloud.com/repository/conf/Ubuntu-Ports-bionic.list --no-check-certificate
  212  sudo apt-get update
  213  tzselect
  214  cp /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
  215  date
  216  sudo date -s 22/06/2021
  217  sudo date -s 22/06/21
  218  sudo date -s 2021-06222
  219  sudo date -s 2021-06-22
  220  date -s 17:01:10
  221  sudo apt-get update
  222  apt-get install pkg-config libxcb-shm0-dev libxcb-xfixes0-dev
  223  cp /home/HwHiAiUser/ascend_ddk/<arm>/lib/pkgconfig/* /usr/share/pkgconfig/
  224  cp /home/HwHiAiUser/ascend_ddk/arm/lib/pkgconfig/* /usr/share/pkgconfig/
  225  git clone https://gitee.com/mirrors/PyAV.git
  226  cd PyAv
  227  ls
  228  exit
  229  cd PyAv
  230  cd PyAV
  231  python3 setup.py build --ffmpeg-dir=/home/HwHiAiUser/ascend_ddk/arm
  232  pip install Cython
  233  pip3 install Cython
  234  python3 setup.py build --ffmpeg-dir=/home/HwHiAiUser/ascend_ddk/arm
  235  cd ..
  236  python3
  237  cd $HOME/face_detection_rtsp/src
  238  exit
  239  apt-get install python3-pip
  240  pip3 install --upgrade pip
  241  pip3 install Cython
  242  apt-get install pkg-config libxcb-shm0-dev libxcb-xfixes0-dev
  243  cp /home/HwHiAiUser/ascend_ddk/arm/lib/pkgconfig/* /usr/share/pkgconfig/
  244  ls
  245  cd ..
  246  ls
  247  cd ..
  248  cd..
  249  cd ..
  250  ls
  251  git clone https://gitee.com/mirrors/PyAV.git
  252  cd PyAV
  253  python3 setup.py build --ffmpeg-dir=/home/HwHiAiUser/ascend_ddk/arm
  254  python3 setup.py install
  255  cd ..
  256  python3
  257  exit
  258  bash script/run_presenter_server.sh $HOME/samples/python/level2_simple_inference/2_object_detection/face_detection_rtsp/scripts/face_detection.conf
  259  su root
  260  exit
  261  cat /var/davinci/driver/version.info
  262  exit
  263  ls
  264  mkdir upgrade
  265  exit
  266  mv A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz\?response-content-type\=application%2Foctet-stream  /opt/mini/
  267  ls
  268  cd /opt/mini/
  269  ls
  270  tar --no-same-owner -zxf A200dk-npu-driver-{software version}-ubuntu18.04-aarch64-minirc.tar.gz --strip-components 2 driver/scripts/minirc_install_phase1.sh
  271  exit
  272  rm A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz\?response-content-type\=application%2Foctet-stream 
  273  exit
  274  wget https://obs-9be7.obs.cn-east-2.myhuaweicloud.com/turing/resource/atlas200dk/1.0.10/A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz
  275  ls
  276  tar --no-same-owner -zxf A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz --strip-components 2 driver/scripts/minirc_install_phase1.sh
  277  ./minirc_install_phase1.sh
  278  reboot
  279  ls
  280  rm -r samples/
  281  rm tun.ko 
  282  rm -r upgrade/
  283  rm -r PyAV/
  284  rm -r yaoyu/
  285  rm -r vf0/
  286  ls
  287  exit
  288  apt update
  289  apt upgrade
  290  reboot
  291  ls
  292  mkdir -p /opt/cmake
  293  ls
  294  cp cmake-3.21.0-linux-aarch64.sh /opt/cmake/
  295  cd /opt/
  296  ls
  297  cd
  298  history >> official5.2.0.sh
