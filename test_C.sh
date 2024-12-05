#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=24:00:00
#SBATCH --mem=64GB
#SBATCH --job-name=Interactive
#SBATCH --account=pr_130_general

# Execute the Python script
echo "Job started at: $(date)"

# 执行Python脚本
python test_C.py
if [ $? -ne 0 ]; then
    echo "Python script failed at: $(date)"
    exit 1
fi

echo "Job completed at: $(date)"

