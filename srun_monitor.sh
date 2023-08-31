#!/bin/bash
srun -N 1 -n 1 -w hpc-pr-a-pod${1} --pty bash
