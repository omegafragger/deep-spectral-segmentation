#!/bin/bash
#SBATCH --job-name=jupyter
#SBATCH --partition=a100 
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=10

source activate pytorch
cat /etc/hosts

python extract.py extract_features \
	--images_list "/data/home/mukhotij/internship_2022/deep_spectral/data/VOC2012/lists/images.txt" \
	--images_root "/data/home/mukhotij/internship_2022/deep_spectral/data/VOC2012/images" \
	--output_dir "/data/home/mukhotij/internship_2022/deep_spectral/data/VOC2012/features/dino_vits16" \
	--model_name dino_vits16 \
	--batch_size 5
