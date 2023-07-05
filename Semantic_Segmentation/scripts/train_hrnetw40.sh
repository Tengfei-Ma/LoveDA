#!/usr/bin/env bash


export CUDA_VISIBLE_DEVICES=0
NUM_GPUS=1
export PYTHONPATH=$PYTHONPATH:`pwd`

config_path='baseline.hrnetw40'             # directory of the model configuration
model_dir='./log/normal_baseline/hrnetw40'  # directory of the model

/G/Anaconda3/envs/myenv/python train.py \
    --config_path=${config_path} \
    --model_dir=${model_dir} \
