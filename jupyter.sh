#!/bin/bash
#SBATCH --job-name=jupyter
#SBATCH --gres=gpu:1

cat /etc/hosts
export PATH="/scratch/slurm-user9-unmanned/.local/bin:$PATH"
singularity run --env PATH=$PATH --nv /scratch/slurm-user9-unmanned/seungjuh/singularity/minimal-pytorch-experiments-setup~230831.sif jupyter notebook --ip=0.0.0.0 --port=8888

# then,
# ssh -L8888:{IP}:8888 ${HOST}   --- find IP from /etc/hosts
# ex) ssh -L8888:10.11.31.27:8888 gist
#
# go to http://127.0.0.1:8888/tree?
