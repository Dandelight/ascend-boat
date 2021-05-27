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
./resnet50_sample
```

NOTICE: If you encounter with `LLVM error: out of memory`, please open a swap file of at least `4GB`

```bash
free -m  # Check
dd if=/dev/zero of=~HwHiAiUser/swapfile bs=1M count=4096  # 4G is assumed to be enough
chmod 600 ~HwHiAiUser/swapfile 
mkswap ~HwHiAiUser/swapfile 
swapon ~HwHiAiUser/swapfile 
free -m  # Check if it works
```

