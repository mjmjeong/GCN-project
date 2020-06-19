# GCN-project
This is for gcn project (2020SS)

#### 1. Dependencies
This repository is implemented based on [Tensorflow](https://www.tensorflow.org/) with Anaconda.</br>

Enviroments:

CUDA: 10.0

Tensorflow: 1.13.0

Python: 3.6.9

Requirements: 

#### 2. Dataset Download
Please refer to the [Dataset Download](./data/README.md).
```bash
cd data
unzip modelent40_normal_resampled.zip
```

#### 3. Setting for tf_opts
```bash
cd tf_ops/3d_interpolation
sh tf_interpolate_complie.sh
cd ../grouping
sh tf_grouping_complie.sh
cd ../sampling_nd
sh tf_sampling_compile.sh
```

#### 4. Training models
For configuration can be modified in training_cmd.sh or train.py
Then, training outputs are saved in `classification/log`.
```bash
cd classification
sh training_cmd.sh 
```
