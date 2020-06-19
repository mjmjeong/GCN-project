# train a model using spectral graph conv layers and recursive cluster pooling
# to monitor model performance, please look at log_max_record.txt in log directory.
# alternatively please use tensorboard for more comprehensive evaluation.
#CUDA_VISIBLE_DEVICES=0 python train.py --model=pointnet2_cls_ssg_spec_cp --log_dir=spec_cp_max_first_csize_2 --num_point=2048 --normal 
CUDA_VISIBLE_DEVICES=3 python train.py --model=pointnet2_cls_ssg_spec_cp --log_dir=spec_cp_default --num_point=2048 --normal 

# train a model using original pointnet++
#python train.py --model=pointnet2_cls_ssg --log_dir=pointnet --num_point=2048 --normal 
