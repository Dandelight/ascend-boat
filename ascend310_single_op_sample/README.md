# README

Usage:

Cd into the directory:

```bash
cd ascend310_resnet50_preprocess_sample
```

Configure the cmake project, if MindSpore is installed by pip:

```bash
cmake . -DMINDSPORE_PATH=`pip3 show mindspore-ascend | grep Location | awk '{print $2"/mindspore"}' | xargs realpath`
```

or installed by binary:

```bash
cmake . -DMINDSPORE_PATH=path-to-your-custom-dir
```

Then compile:

```bash
make
```

Run the sample:

```bash
python3.7.5 -m venv venv
source ./venv/bin/activate
pip install -U pip
pip install ~/Ascend/ascend-toolkit/5.0.2.alpha005/fwkacllib/lib64/te-0.4.0-py3-none-any.whl ~/Ascend/ascend-toolkit/5.0.2.alpha005/fwkacllib/lib64/topi-0.4.0-py3-none-any.whl 
pip install sympy
./build/tensor_add_sample 
```
