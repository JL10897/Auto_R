#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=24:00:00
#SBATCH --mem=30GB
#SBATCH --gres=gpu:1
#SBATCH --job-name=Interactive
#SBATCH --account=pr_130_general

# Load necessary modules
module load cuda/11.6.2  # Ensure this matches your CUDA version

# Execute the Python script
python test_G.py
