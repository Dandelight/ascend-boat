# ACL 矩阵相加示例

郭睿明的非官方文档

## 安装python3.7.5并安装依赖

```shell
python3.7.5 -m venv venv
source ./venv/bin/activate
pip install -U pip
pip install Pillow numpy sympy decorator
```

## ATC模型转换

```shell
atc --singleop=config/add_op.json --soc_version=Ascend310 --output=op_models
```

### 运行

```shell
python3.7.5 acl_execute_add.py
```

PS：镜像来自：https://gitee.com/ascend/samples/wikis/Atlas200dk%E5%90%88%E8%AE%BE%E7%8E%AF%E5%A2%83%E6%90%AD%E5%BB%BA--%E7%94%A8%E9%95%9C%E5%83%8F%E6%81%A2%E5%A4%8D%E7%9A%84%E6%96%B9%E5%BC%8F?sort_id=3706490


执行`apt update && apt upgrade -y`后居然还能用。开心。

TODO：安装`MindSpore`，把这个实现出来

同时开始标注数据集

https://www.mindspore.cn/tutorial/inference/zh-CN/r1.2/multi_platform_inference_ascend_310_mindir.html

https://gitee.com/mindspore/docs/tree/r1.2/tutorials/tutorial_code/ascend310_resnet50_preprocess_sample

