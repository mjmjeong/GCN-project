# GCN-project
This is for gcn project (2020SS)

#### 1. Dependencies
This repository is implemented based on [Tensorflow](http://pytorch.org/) with Anaconda.</br>

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
For configuration file located in `src/experiment/options/act_pp/esgn/default.yml`, you can train model with below command.
Then, training outputs are saved in `results/act_pp/esgn/default`.
```bash
cd classification
sh sh training_cmd.sh 
```

* Using **anaconda** environment
```bash
conda activate tlg
bash scripts/train_model.sh default esgn act_pp 0 4 0	(for Event Sequence Generation Network)
bash scripts/train_model.sh esgn_baseline/default gr_baseline act 0 4 0		(for Grounder)
```
