  675  ;s
  676  ls
  677  cd ..
  678  ls
  679  cd ~
  680  ls
  681  cd Ascend
  682  ls
  683  cd ~
  684  ls
  685  cd cjl
  686  ls
  687  cd beiyoumoxing/
  688  ls
  689  vi convert.sh 
  690  ls
  691  cd ~
  692  ls
  693  md5sum Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run 
  694  ls
  695  cd Ascend
  696  ls
  697  cd ascend-toolkit/
  698  ls
  699  vi set_env.sh 
  700  pip3 list pytorch
  701  cd ~
  702  ls
  703  cd cjl
  704  ls
  705  cd beiyoumoxing/
  706  ls
  707  ./msame 
  708  cd /usr/lib64
  709  ll
  710  cd aicpu_kernels/
  711  ls
  712  ll
  713  cd 9
  714  cd 0/
  715  ls
  716  ll
  717  cd aicpu_kernels_device/
  718  ls
  719  cd sand_box/
  720  ls
  721  l
  722  cd ..
  723  ls
  724  cd ..
  725  ls
  726  ll
  727  cd ..
  728  ls
  729  ll
  730  cd aicpu_kernels/
  731  ls
  732  ll
  733  cd 0/
  734  ls
  735  cd aicpu_kernels_device/
  736  ls
  737  ll
  738  cd ~
  739  lsd
  740  ls
  741  cd cjl
  742  ls
  743  cd beiyoumoxing/
  744  ls
  745  ./msame 
  746  ls
  747  cat ~/.bashrc
  748  python3
  749  ifconfig
  750  exit
  751  ifconfig
  752  cd Ascend/ascend-toolkit/
  753  ls
  754  cd Ascend/ascend-toolkit/
  755  ls
  756  cd ..
  757  cd /opt/mini/
  758  ls
  759  mv ~/A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz ./
  760  cd ~
  761  ls
  762  cd /
  763  ls
  764  cd ~
  765  ls
  766  mv A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz /opt/mini/
  767  sudo mv A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz /opt/mini/
  768  su root
  769  cd Ascend
  770  ls
  771  cd ascend-toolkit/
  772  ls
  773  cd ~
  774  ls
  775  cd cjl
  776  ls
  777  mv faster_rcnn_resnet.om ./beiyoumoxing/
  778  cd beiyoumoxing/
  779  ls
  780  ./msame 
  781  ./msame  --model faster_rcnn_resnet.om
  782  cd /usr/lib64
  783  ls
  784  ll
  785  cd aicpu_kernels/
  786  ls
  787  cd 0/
  788  ls
  789  cd aicpu_kernels_device/
  790  ls
  791  cd sand_box/
  792  ls
  793  cd ..
  794  ls
  795  ll
  796  cd ..
  797  ll
  798  cd ../
  799  cd .
  800  ls
  801  cd ..
  802  ls
  803  ll
  804  vi /etc/resolv.conf
  805  chmod u+w /etc/resolv.conf
  806  cd Ascend
  807  ls
  808  cd ascend-toolkit/
  809  ls
  810  cd ~/var/log/ascend_seclog/
  811  ls
  812  vi ascend_toolkit_install.log 
  813  tail -f ascend_toolkit_install.log
  814  vi ~/.bashrc
  815  top
  816  tail -f ascend_toolkit_install.log
  817  top
  818  tail -f ascend_toolkit_install.log
  819  ls
  820  cd cjl/
  821  ls
  822  cd tools/
  823  ls
  824  cd ..
  825  cd beiyoumoxing/
  826  ls
  827  ifconfig
  828  cd ..
  829  ls
  830  cd tools/
  831  ls
  832  cd msame/
  833  ls
  834  cd out/
  835  ls
  836  scp msame HwHiAiUser@12.0.0.66:~/cjl
  837  cd ~
  838  ls
  839  cd Ascend/
  840  ls
  841  cd ascend-toolkit/
  842  ls
  843  cd ~
  844  ls
  845  ifconfig
  846  wget https://ascend-repo.obs.cn-east-2.myhuaweicloud.com/CANN/5.0.2.alpha003/Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run
  847  apt update
  848  apt install resolvconf
  849  su
  850  wget https://ascend-repo.obs.cn-east-2.myhuaweicloud.com/CANN/5.0.2.alpha003/Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run
  851  ls
  852  ll
  853  chmod u+x Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run 
  854  ./Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run --upgrade
  855  #用于设置python3.7.5库文件路径
  856  export LD_LIBRARY_PATH=/usr/local/python3.7.5/lib:$LD_LIBRARY_PATH
  857  #如果用户环境存在多个python3版本，则指定使用python3.7.5版本
  858  export PATH=/usr/local/python3.7.5/bin:$PATH
  859  ./Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run --upgrade
  860  ./Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run --uninstall
  861  cd Ascend
  862  ls
  863  cd ..
  864  cd Ascend
  865  ls
  866  cd ascend-toolkit/
  867  ls
  868  ll
  869  cd latest
  870  ls
  871  cd x86_64-linux/
  872  cd ..
  873  ls
  874  cd a
  875  cd arm64-linux/
  876  ls
  877  cd ..
  878  ls
  879  cd x86_64-linux/
  880  ls
  881  cd script/
  882  ls
  883  bash uninstall.sh 
  884  ls
  885  cd ..
  886  ls
  887  cd ..
  888  ls
  889  cd ..
  890  ls
  891  ll
  892  cd 3.3.0.alpha001/
  893  sl
  894  ls
  895  cd arm64-linux/
  896  ls
  897  cd ..
  898  ls
  899  cd 5.0.2.alpha003/
  900  ls
  901  cd arm64-linux/
  902  ls
  903  cd ..
  904  ls
  905  cd ..
  906  ~ 
  907  cd ~
  908  ls
  909  ./Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run --uninstall
  910  ls
  911  cd Ascend
  912  ls
  913  cd ascend-toolkit/
  914  ls
  915  tree
  916  rm -rf *
  917  sudo rm -rf *
  918  ls
  919  su
  920  ls
  921  cd ..
  922  ls
  923  cd ..
  924  ls
  925  ./Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run --install
  926  df -hl
  927  cd /tmp
  928  ls
  929  su
  930  cd ~
  931  ls
  932  ./Ascend-cann-toolkit_5.0.2.alpha003_linux-aarch64.run --install
  933  ls
  934  cd cjl/
  935  ls
  936  cd beiyoumoxing/
  937  ls
  938  cp ../tools/msame/out/msame .
  939  ls
  940  bash convert.sh 
  941  ls
  942  vi convert.sh 
  943  find ~ -name aic-ascend310*
  944  cd /home/HwHiAiUser/Ascend/ascend-toolkit/5.0.2.alpha003/arm64-linux/opp/op_impl/built-in/ai_core/tbe/config/ascend310/
  945  ls
  946  ll
  947  su
  948  vi aic-ascend310-ops-info.json
  949  cd ~
  950  cd da
  951  cd cjl
  952  ls
  953  cd beiyoumoxing/
  954  ls
  955  vi convert.sh 
  956  cd ~/Ascend
  957  ls
  958  cd ascend-toolkit/
  959  ls
  960  source set_env.sh 
  961  cd ~/cjl/beiyoumoxing/
  962  ls
  963  atc --model=bboxes.onnx --framework=5 --input_format=NCHW --input_shape="0:1,3,32,256,451;1:1,3,32,256,451;2:5,5" --output=out --soc_version=Ascend310
  964  export DUMP_GE_GRAPH=2
  965  export DUMP_GRAPH_LEVEL=3
  966  atc --model=bboxes.onnx --framework=5 --input_format=NCHW --input_shape="0:1,3,32,256,451;1:1,3,32,256,451;2:5,5" --output=out --soc_version=Ascend310
  967  ls
  968  ifconfig
  969  cd Ascend
  970  ls
  971  cd ascend-toolkit/
  972  ls
  973  cd Ascend/ascend-toolkit/
  974  ls
  975  cd ~
  976  ls
  977  git clone https://gitee.com/ascend/samples.git
  978  ls
  979  unzip ascend-samples-master.zip 
  980  ls
  981  rm ascend-samples-master.zip 
  982  ls
  983  cd samples/
  984  ls
  985  cd cplusplus/
  986  cd level2_simple_inference/
  987  ls
  988  cd 0_data_process/
  989  ls
  990  cd vdecandvenc/
  991  ll
  992  cd scripts/
  993  ls
  994  bash testcase_200dk.sh c75
  995  ls
  996  cd ..
  997  ls
  998  cd out/
  999  ls
 1000  ./cplusplus_vdecandvenc 
 1001  ./cplusplus_vdecandvenc ../data/person.mp4 
 1002  pwd
 1003  cd ~
 1004  ls
 1005  cd ascend
 1006  ls
 1007  cd log/plog/
 1008  ls
 1009  cd ~
 1010  ls
 1011  cd /var
 1012  ls
 1013  cd log/npu/slog/
 1014  ls
 1015  rm -rf device-app-*
 1016  ls
 1017  cd device-os/
 1018  ls
 1019  rm device-os_20180128155826623.log 
 1020  c d..
 1021  cd ..
 1022  cd device-0/
 1023  ls
 1024  rm device-0_20180128162313169.log 
 1025  cd /home/HwHiAiUser/samples/cplusplus/level2_simple_inference/0_data_process/vdecandvenc/out
 1026  ls
 1027  ./cplusplus_vdecandvenc ../data/person.mp4 
 1028  cd -
 1029  ls
 1030  cd ..
 1031  ls
 1032  cd device-app-3076/
 1033  ls
 1034  ll
 1035  grep ERROR -rn *
 1036  :q
 1037  ls
 1038  vi device-app-3076_20180128163315841.log 
 1039  c d..
 1040  cd ..
 1041  cd device-os/
 1042  ls
 1043  vi device-os_20180128163254438.log 
 1044  cd -
 1045  ls
 1046  cd ~
 1047  ls
 1048  cd samples/
 1049  ls
 1050  cd cplusplus/level2_simple_inference/0_data_process/vdecandvenc/
 1051  ls
 1052  cd out/
 1053  ls
 1054  cd output/
 1055  ls
 1056  pwd
 1057  cd ..
 1058  cd 0
 1059  cd -
 1060  ls
 1061  cd 2_object_detection/
 1062  ls
 1063  cd YOLOV3_coco_detection_video/
 1064  ls
 1065  cd data/
 1066  ll
 1067  cd ../
 1068  ll
 1069  cd scripts/
 1070  ll
 1071  ifconfig 
 1072  ll
 1073  vim param.conf 
 1074  cd ../
 1075  cd data/
 1076  t 192.168.220.201  netmask 255.255.254.0  broadcast 192.168.221.255
 1077  ll
 1078  wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/YOLOV3_coco_detection_video/detection.mp4
 1079  BE’:
 1080  wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/YOLOV3_coco_detection_video/detection.mp4
 1081  cd ../
 1082  cd model/
 1083  ll
 1084  ping baidu.com
 1085  wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/YOLOV3_coco_detection_video/detection.mp4
 1086  wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/YOLOV3_coco_detection_video/detection.mp4 --no-ch
 1087  ls
 1088  mv ../data/
 1089  mv detection.mp4 ../data/
 1090  cd ../data/
 1091  ls
 1092  cd ../model/
 1093  ls
 1094  wget https://modelzoo-train-atc.obs.cn-north-4.myhuaweicloud.com/003_Atc_Models/AE/ATC%20Model/Yolov3/yolov3.caffemodel
 1095  wget https://modelzoo-train-atc.obs.cn-north-4.myhuaweicloud.com/003_Atc_Models/AE/ATC%20Model/Yolov3/yolov3.caffemodel --no-check-certificate
 1096  wget https://modelzoo-train-atc.obs.cn-north-4.myhuaweicloud.com/003_Atc_Models/AE/ATC%20Model/Yolov3/yolov3.prototxt --no-check-certificate
 1097  wget https://modelzoo-train-atc.obs.cn-north-4.myhuaweicloud.com/003_Atc_Models/AE/ATC%20Model/Yolov3/aipp_nv12.cfg --no-check-certificate
 1098  ll
 1099  rm aipp_nv12.cfg 
 1100  wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/YOLOV3_coco_detection_video/aipp_bgr.cfg
 1101  wget https://c7xcode.obs.cn-north-4.myhuaweicloud.com/models/YOLOV3_coco_detection_video/aipp_bgr.cfg --no-check-certificate
 1102  atc --model=./yolov3.prototxt --weight=./yolov3.caffemodel --framework=0 --output=yolov3 --soc_version=Ascend310 --insert_op_conf=./aipp_bgr.cfg
 1103  ls
 1104  cd ../data/
 1105  ls
 1106  vi ../scripts/param.conf
 1107  ifconfig 
 1108  export DDK_PATH=$HOME/Ascend/ascend-toolkit/latest/x86_64-linux
 1109  export NPU_HOST_LIB=$DDK_PATH/acllib/lib64/stub
 1110  cd $HOME/samples/cplusplus/level2_simple_inference/2_object_detection/YOLOV3_coco_detection_video
 1111  mkdir -p build/intermediates/host
 1112  cd build/intermediates/host
 1113  make clean
 1114  cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
 1115  cd ../../../../
 1116  cd YOLOV3_dynamic_batch_detection_picture/
 1117  cd ..
 1118  cd YOLOV3_coco_detection_video/
 1119  ls
 1120  cd out/
 1121  ls
 1122  make
 1123  cd ..
 1124  ls
 1125  cd data/
 1126  ls
 1127  cd ..
 1128  ll
 1129  cd model/
 1130  ll
 1131  cd ../
 1132  cd build/intermediates/host
 1133  ll
 1134  make clean
 1135  cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
 1136  make
 1137  export DDK_PATH=$HOME/Ascend/ascend-toolkit/latest/x86_64-linux
 1138  export NPU_HOST_LIB=$DDK_PATH/acllib/lib64/stub
 1139  make clean
 1140  cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
 1141  make
 1142  export LD_LIBRARY_PATH=/home/HwHiAiUser/ascend_ddk/arm/lib:/home/HwHiAiUser/Ascend/acllib/lib64:$LD_LIBRARY_PATH
 1143  export PYTHONPATH=/home/HwHiAiUser/Ascend/pyACL/python/site-packages/acl:$PYTHONPATH
 1144  make clean
 1145  cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
 1146  make
 1147  find / -name acl.h
 1148  cd 
 1149  ll
 1150  vim .bashrc
 1151  cd -
 1152  ll
 1153  export LD_LIBRARY_PATH=/home/HwHiAiUser/Ascend/ascend-toolkit/5.0.2.alpha003/arm64-linux/acllib/include/acl/acl.h
 1154  make clean
 1155  cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
 1156  make
 1157  cd 
 1158  ll
 1159  vim .bashrc 
 1160  cd -
 1161  ll
 1162  export DDK_PATH=$HOME/Ascend/ascend-toolkit/latest/arm64-linux
 1163  make clean
 1164  cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
 1165  make
 1166  cd 
 1167  ls
 1168  cd Ascend/
 1169  ls
 1170  cd ..
 1171  cd ascend_ddk/arm/
 1172  ls
 1173  cd include/
 1174  ls
 1175  cd ~
 1176  ls
 1177  cd ~/samples/cplusplus/level2_simple_inference/2_object_detection/YOLOV3_coco_detection_video/build/intermediates/host
 1178  cd ..
 1179  cd src/
 1180  vi CMakeLists.txt 
 1181  cd ..
 1182  ls
 1183  cd build/intermediates/host/
 1184  cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
 1185  make
 1186  export DDK_PATH=$HOME/Ascend/ascend-toolkit/latest/arm64-linux
 1187  make clean
 1188  make
 1189  cd ../..
 1190  cd ..
 1191  ls
 1192  cd src/
 1193  ls
 1194  vi Cm
 1195  vi CMakeLists.txt 
 1196  cd ..
 1197  ls
 1198  cd build/intermediates/host
 1199  make clean
 1200  cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
 1201  make
 1202  cd ..
 1203  ls
 1204  cd src/
 1205  ls
 1206  vi CMakeLists.txt 
 1207  cd ../build/intermediates/host/
 1208  ls
 1209  make clean
 1210  cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
 1211  export NPU_HOST_LIB=$DDK_PATH/acllib/lib64/stub
 1212  make clean
 1213  cmake ../../../src -DCMAKE_CXX_COMPILER=g++ -DCMAKE_SKIP_RPATH=TRUE
 1214  make
 1215  cd $HOME/samples/common/
 1216  bash run_presenter_server.sh $HOME/samples/cplusplus/level2_simple_inference/2_object_detection/YOLOV3_coco_detection_video/scripts/param.conf
 1217  export LD_LIBRARY_PATH=
 1218  source ~/.bashrc
 1219  cd $HOME/samples/cplusplus/level2_simple_inference/2_object_detection/YOLOV3_coco_detection_video/out
 1220  mkdir output
 1221  ./main ../data/detection.mp4
 1222  eixt
 1223  exit
 1224  cd samples/
 1225  ls
 1226  cd cplusplus/
 1227  ls
 1228  cd level2_simple_inference/
 1229  ls
 1230  cd 0
 1231  cd 0_data_process/
 1232  ls
 1233  cd vdecandvenc/
 1234  ls
 1235  cd $HOME/samples/common/
 1236  bash run_presenter_server.sh $HOME/samples/cplusplus/level2_simple_inference/2_object_detection/YOLOV3_coco_detection_video/scripts/param.conf
 1237  ls
 1238  cd samples/
 1239  cd cp
 1240  cd cplusplus/
 1241  cd level2_simple_inference/
 1242  cd 0_data_process/
 1243  cd vdecandvenc/
 1244  ls
 1245  cd out/
 1246  ls
 1247  cd output/
 1248  ls
 1249  vi dvpp_venc.h264 
 1250  cd Ascend/ascend-toolkit/
 1251  ls
 1252  ls
 1253  cd Ascend/
 1254  cd ascend
 1255  cd ascend-toolkit/
 1256  ls
 1257  cd ../../
 1258  ifconfig
 1259  edge -a 12.0.0.88 -c edge0 -k wss -l 124.70.87.1:4000 
 1260  ifconfig
 1261  su root
 1262  ls
 1263  cd n2n/
 1264  cd ..
 1265  su root
 1266  exit
 1267  ll
 1268  mkdir yaoyu
 1269  cd yaoyu/
 1270  git clone https://gitee.com/ascend/samples.git
 1271  export GIT_SSL_NO_VERIFY=1
 1272  git clone https://gitee.com/ascend/samples.git
 1273  ll
 1274  cd samples/cplusplus/l2
 1275  cd samples/cplusplus/level2_simple_inference/
 1276  ll
 1277  cd 0_data_process/
 1278  ll
 1279  cd vdec
 1280  ll
 1281  cd scripts/
 1282  ll
 1283  bash testcase_200dk.sh c75
 1284  cd ../out/
 1285  ll
 1286  cd output/
 1287  ll
 1288  cd ../../data/
 1289  ll
 1290  cd -
 1291  pwd
 1292  cd
 1293  cd Ascend/
 1294  cd a
 1295  cd ascend-toolkit/
 1296  ll
 1297  ls
 1298  ll
 1299  ls
 1300  git clone https://github.com/meyerd/n2n.git
 1301  ping souhu.com
 1302  ping qq.com
 1303  history
 1304  git clone https://github.com/meyerd/n2n.git --no-check-certificate
 1305  ls
 1306  unzip n2n.zip 
 1307  ls
 1308  rm n2n.zip 
 1309  ls
 1310  cd n2n/n2n_v2
 1311  mkdir build
 1312  ls
 1313  apt install libssl-dev
 1314  su root
 1315  cd Ascend/
 1316  cd ascend-toolkit/
 1317  ls
 1318  su root
 1319  cd /usr/lib64/aicpu_kernels/0/aicpu_kernels_device
 1320  ls
 1321  vi ~/.bashrc 
 1322  ls
 1323  ll
 1324  cd ../../..
 1325  ll
 1326  cd ..
 1327  cd ~
 1328  cd Ascend/
 1329  ls
 1330  cd ascend-toolkit/
 1331  ls
 1332  source set_env.sh 
 1333  cdd ~/samples/cplusplus/level2_simple_inference/0_data_process/vdecandvenc/
 1334  cd ~/samples/cplusplus/level2_simple_inference/0_data_process/vdecandvenc/
 1335  ls
 1336  cd build/
 1337  ls
 1338  cd ..
 1339  cd data/
 1340  ls
 1341  cd ..
 1342  cd build/intermediates/host/
 1343  ls
 1344  rm -rf *
 1345  ls
 1346  cmake ../../../src -DCMAKE_CXX_COMPILER=aarch64-linux-gnu-g++ -DCMAKE_SKIP_RPATH=TRUE
 1347  make
 1348  cd ../../../out/
 1349  ls
 1350  ./main ../data/person.mp4 
 1351  cd output/
 1352  ls
 1353  ifconfig
 1354  ls
 1355  cd Ascend/ascend-toolkit/
 1356  ls
 1357  cat /var/davinci/driver/version.info
 1358  cd ../../
 1359  ls
 1360  wget https://obs-9be7.obs.cn-east-2.myhuaweicloud.com/turing/resourcecenter/Software/CANN/3.3.0/Ascend-cann-nnrt_3.3.0_linux-aarch64.run?response-content-type=application/octet-stream
 1361  wget https://obs-9be7.obs.cn-east-2.myhuaweicloud.com/turing/resourcecenter/Software/CANN/3.3.0/Ascend-cann-nnrt_3.3.0_linux-aarch64.run?response-content-type=application/octet-stream --no-check-certificate
 1362  ls
 1363  rm Ascend-cann-nnrt_3.3.0_linux-aarch64.run\?response-content-type\=application%2Foctet-stream 
 1364  ls
 1365  mkdir upgrade
 1366  mv Ascend-cann-nnrt_3.3.0_linux-aarch64.run upgrade/
 1367  ls
 1368  cd upgrade/
 1369  ls
 1370  wget https://gitee.com/ascend/tools/raw/master/update_200dk/update_200dk.sh
 1371  wget https://gitee.com/ascend/tools/raw/master/update_200dk/update_200dk.sh --no-check-certificate
 1372  ls
 1373  su root
 1374  cd ..
 1375  cd samples/cplusplus/level2_simple_inference/0_data_process/vdecandvenc/
 1376  cd build/intermediates/host/
 1377  rm -r *
 1378  ls
 1379  cmake ../../../src -DCMAKE_CXX_COMPILER=aarch64-linux-gnu-g++ -DCMAKE_SKIP_RPATH=TRUE
 1380  make
 1381  cd ../../../
 1382  ls
 1383  cd out/
 1384  ls
 1385  rm -r output/
 1386  ./main ../data/person.mp4 
 1387  ls
 1388  cd $HOME/samples/common
 1389  bash script/run_presenter_server.sh $HOME/samples/python/level2_simple_inference/2_object_detection/face_detection_rtsp/scripts/face_detection.conf
 1390  cd $HOME/samples/common 
 1391  bash script/run_presenter_server.sh $HOME/samples/python/level2_simple_inference/2_object_detection/face_detection_rtsp/scripts/face_detection.conf
 1392  su root
 1393  ls
 1394  bash run_presenter_server.sh $HOME/samples/python/level2_simple_inference/2_object_detection/face_detection_rtsp/scripts/face_detection.conf
 1395  ls
 1396  cd Ascend/
 1397  cd ascend-toolkit/
 1398  ls
 1399  cd ..
 1400  ls
 1401  cd ..
 1402  cd upgrade/
 1403  ls
 1404  rm Ascend-cann-nnrt_3.3.0_linux-aarch64.run 
 1405  ls
 1406  wget https://ascend-repo.obs.cn-east-2.myhuaweicloud.com/CANN/5.0.2.alpha003/Ascend-cann-nnrt_5.0.2.alpha003_linux-aarch64.run
 1407  wget https://ascend-repo.obs.cn-east-2.myhuaweicloud.com/CANN/5.0.2.alpha003/Ascend-cann-nnrt_5.0.2.alpha003_linux-aarch64.run --no-check-certificate
 1408  su root
 1409  cd ,,
 1410  cd ..
 1411  cd Ascend/
 1412  cd ascend-toolkit/
 1413  ls
 1414  source set_env.sh 
 1415  source ~/.bashrc
 1416  cd ../../
 1417  cd samples/
 1418  cd python/
 1419  ls
 1420  cd level2_simple_inference/
 1421  cd 0_data_process/
 1422  ls
 1423  cd ..
 1424  cd 2_object_detection/
 1425  cd face_detection_rtsp/
 1426  ls
 1427  cd scripts/
 1428  ls
 1429  bash testcase_200dk.sh c75
 1430  cd ..
 1431  cd scripts/face_detection.conf
 1432  vi scripts/face_detection.conf
 1433  ifconfig
 1434  vi scripts/face_detection.conf
 1435  cd scripts/
 1436  bash testcase_200dk.sh c75
 1437  cd ..
 1438  ls
 1439  cd data/
 1440  ls
 1441  cd ..
 1442  cd model/
 1443  ls
 1444  cd ..
 1445  python3.6 main.py
 1446  cd src/
 1447  python3.6 main.py
 1448  python3.7.5 main.py
 1449  cd ..
 1450  ls
 1451  cd data/
 1452  ls
 1453  cd ..
 1454  cd model/
 1455  ls
 1456  python3
 1457  python3.6
 1458  pip3
 1459  pip3 -V
 1460  pip3.6
 1461  pip3.6 install Cython
 1462  sudo apt-get install pkg-config libxcb-shm0-dev libxcb-xfixes0-dev
 1463  su
 1464  cd PyAv
 1465  su root
 1466  cd $HOME/face_detection_rtsp/src
 1467  cd $HOME/samples/common
 1468  bash script/run_presenter_server.sh $HOME/samples/python/level2_simple_inference/2_object_detection/face_detection_rtsp/scripts/face_detection.conf
 1469  cd ~/samples/python/level2_simple_inference/2_object_detection/face_detection_rtsp
 1470  ls
 1471  cd scripts/
 1472  bash testcase_200dk.sh c75
 1473  cd ..
 1474  ls
 1475  cd src
 1476  ls
 1477  python3.6 main.py
 1478  python3
 1479  apt-get install python3-pip
 1480  su root
 1481  ls
 1482  cd ..
 1483  cd scripts/
 1484  bash testcase_200dk.sh c75
 1485  cd ../src
 1486  ls
 1487  python3.6 main.py
 1488  cd ../scripts/
 1489  vi face_detection.conf 
 1490  cd ..
 1491  cd src
 1492  ls
 1493  python3 main.py 
 1494  python3.6 main.py 
 1495  cd ..
 1496  ls
 1497  cd src/
 1498  cd ..
 1499  cd scripts/
 1500  ls
 1501  vi face_detection.conf 
 1502  cd ../scripts/
 1503  cd ..
 1504  cd src
 1505  ls
 1506  python3.6 main.py 
 1507  cd ..
 1508  ls
 1509  cd scripts/
 1510  ls
 1511  bash testcase_200dk.sh c75
 1512  rm ../model/face_detection.om 
 1513  bash testcase_200dk.sh c75
 1514  cd ..
 1515  ls
 1516  cd src
 1517  ls
 1518  cd .
 1519  cd ..
 1520  cd scripts/
 1521  ls
 1522  vi face_detection.conf 
 1523  ifconfig
 1524  vi face_detection.conf 
 1525  ls
 1526  cd ../src/
 1527  ls
 1528  python3.6 main.py 
 1529  ls
 1530  cd ../data/
 1531  ls
 1532  cd ..
 1533  ls
 1534  cd scripts/
 1535  ls
 1536  vi face_detection.conf 
 1537  ls
 1538  cd ..
 1539  ls
 1540  cd data/
 1541  ls
 1542  mv person.mp4 person.h264
 1543  ls
 1544  cd ..
 1545  ls
 1546  cd src/
 1547  ls
 1548  python3.6 main.py 
 1549  su root
 1550  cd ~/Ascend/ascend-toolkit/
 1551  ls
 1552  cd ../../
 1553  cd samples/
 1554  ls
 1555  cd cplusplus/
 1556  ls
 1557  cd level2_simple_inference/
 1558  ls
 1559  cd 5_nlp/
 1560  ls
 1561  cd WAV_to_word/
 1562  ls
 1563  cd data/
 1564  ls
 1565  cd ../scripts/
 1566  bash testcase_200dk.sh c75
 1567  cd ..
 1568  cd data/
 1569  ls
 1570  cat /proc/cmdline
 1571  ls
 1572  cd 
 1573  ls
 1574  cd Ascend/
 1575  ls
 1576  cd ascend-toolkit/
 1577  ls
 1578  cd ..
 1579  ls
 1580  cd
 1581  cd samples/
 1582  ls
 1583  cd cplusplus/
 1584  ls
 1585  cd level2_simple_inference/
 1586  ls
 1587  cd 1_classification/
 1588  ls
 1589  cd googlenet_imagenet_picture/
 1590  ls
 1591  cd model/
 1592  ls
 1593  cd ..
 1594  ls
 1595  cd scripts/
 1596  ls
 1597  bash testcase_200dk.sh C76
 1598  ls
 1599  cd ..
 1600  ls
 1601  cd out/
 1602  ls
 1603  ./main ../data/
 1604  cd ..
 1605  ls
 1606  cd ..
 1607  ls
 1608  cd ..
 1609  ls
 1610  cd 6_other/
 1611  ls
 1612  cd colorization
 1613  ls
 1614  cd model/
 1615  ls
 1616  cd ..
 1617  ls
 1618  cd scripts/
 1619  ls
 1620  bash testcase_200dk.sh C75
 1621  ls
 1622  rm A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc\ .tar.gz 
 1623  ls
 1624  wget https://obs-9be7.obs.cn-east-2.myhuaweicloud.com/turing/resource/atlas200dk/1.0.10/A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz?response-content-type=application/octet-stream
 1625  ls
 1626  su root
 1627  ls
 1628  cd upgrade/
 1629  ls
 1630  cd ..
 1631  mv A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz\?response-content-type\=application%2Foctet-stream /opt/mini/
 1632  su root
 1633  cd /opt/mini/
 1634  ls
 1635  tar --no-same-owner -zxf A200dk-npu-driver-{software version}-ubuntu18.04-aarch64-minirc.tar.gz --strip-components 2 driver/scripts/minirc_install_phase1.sh
 1636  tar --no-same-owner -zxf A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz\?response-content-type\=application%2Foctet-stream --strip-components 2 driver/scripts/minirc_install_phase1.sh
 1637  rm A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz\?response-content-type\=application%2Foctet-stream 
 1638  sudo rm A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz\?response-content-type\=application%2Foctet-stream 
 1639  su 
 1640  ls
 1641  wget https://obs-9be7.obs.cn-east-2.myhuaweicloud.com/turing/resource/atlas200dk/1.0.10/A200dk-npu-driver-21.0.1-ubuntu18.04-aarch64-minirc.tar.gz
 1642  su root
 1643  ls
 1644  exit
 1645  ls
 1646  ssh-keygen 
 1647  vim ~/.ssh/authorized_keys
 1648  exit
 1649  su
 1650  ls
 1651  tar -zxvf acl_operator_add.tar.gz 
 1652  ls
 1653  cd acl_operator_add
 1654  ls
 1655  python3.7.5
 1656  ls
 1657  python3.7.5 -m venv venv
 1658  source venv/bin/activate
 1659  pip config set global.index-url https://mirrors.bfsu.edu.cn/pypi/web/simple
 1660  pip install -U pip
 1661  ls
 1662  python acl_execute_add.py 
 1663  pip install sympy numpy decorator
 1664  ls
 1665  python acl_execute_add.py 
 1666  atc --singleop=config/add_op.json --soc_version=Ascend310 --output=op_models
 1667  python acl_execute_add.py 
 1668  cd ..
 1669  ls
 1670  su
 1671  ls
 1672  cd acl_operator_add
 1673  ls
 1674  history >> official5.0.2.sh
