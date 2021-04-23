#!/usr/bin/env bash
PYTORCH_JIT=0 NCCL_LL_THRESHOLD=0 python \
  -W ignore \
  -i \
  -m torch.distributed.launch \
  --master_port=9999 \
  --nproc_per_node=4 \
  main.py \
  --pred_step 3 \
  --network_feature resnet18 \
  --dataset kinetics \
  --seq_len 5 \
  --num_seq 8 \
  --ds 3 \
  --batch_size 8 \
  --img_dim 128 \
  --epochs 200 \
  --fp16 \
  --num_workers 1 \
  --cross_gpu_score \
  --lr 0.001 \
  --prefix train_kinetics_euclidean \
  --path_dataset /src/datasets/kinetics/kinetics-downloader/dataset_frames \
  --path_data_info /src/repos/hyperfuture/dataset_info \
  --local_rank -1
