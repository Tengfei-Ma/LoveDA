#!/usr/bin/env bash

export CUDA_VISIBLE_DEVICES=0
NUM_GPUS=1
export PYTHONPATH=$PYTHONPATH:`pwd`
ckpt_path='./log/hrnetw32.pth'
config_path='baseline.hrnetw32'
out_dir='./out'
/G/Anaconda3/envs/myenv/python -c "from predict import predict_test; predict_test('${ckpt_path}', '${config_path}', '${out_dir}')"
