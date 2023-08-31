#!/bin/bash
srun -N 1 -n 1 -w hpc-pr-a-pod${1} singularity run --nv singularity/minimal-pytorch-experiments-setup~230831.sif python -m gpustat -cpui
