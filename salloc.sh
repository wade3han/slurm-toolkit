#!/bin/bash
salloc -x hpc-pr-a-pod20 -n 1 -N 1 --gres=gpu:8
