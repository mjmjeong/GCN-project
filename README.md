# GCN-project
This is for gcn project (2020SS)

#### 1. Dependencies
This repository is implemented based on [PyTorch](http://pytorch.org/) with Anaconda.</br>
Refer to [Setting environment with anaconda](doc/anaconda_environment.md) or use **Docker** (choco1916/envs:temporal_grounding).

#### 2. Dataset Download
Please refer to the [Dataset Download](./data/README.md).

#### 3. Training models
For configuration file located in `src/experiment/options/act_pp/esgn/default.yml`, you can train model with below command.
Then, training outputs are saved in `results/act_pp/esgn/default`.
```bash
bash scripts/train_model.sh default esgn act_pp 0 4 0
```

* Using **anaconda** environment
```bash
conda activate tlg
bash scripts/train_model.sh default esgn act_pp 0 4 0	(for Event Sequence Generation Network)
bash scripts/train_model.sh esgn_baseline/default gr_baseline act 0 4 0		(for Grounder)
```

* Using **Docker**
```bash
bash scripts/run_docker.sh "bash scripts/train_model.sh default esgn act_pp 0 4 0" "gpu0"   (for Event Sequence Generation Network)
bash scripts/run_docker.sh "bash scripts/train_model.sh esgn_baseline/default gr_baseline act 0 4 0" "gpu0"     (for Grounder)
```   
