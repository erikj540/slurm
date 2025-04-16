#!/bin/bash    
#SBATCH -p short              # Partition or queue. In this case, short!
#SBATCH --job-name=run-hs   # Job name
#SBATCH --mail-type=NONE               # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=YOU@YOUREMAIL.COM
#SBATCH --nodes=1                    # Only use a single node
#SBATCH --ntasks=1                    # Run on a single CPU
#SBATCH --mem=5gb                   # Memory limit
#SBATCH --time=00:05:00               # Time limit hrs:min:sec
# Standard output and error log
# %j inserts job ID, %x inserts job name
#SBATCH --output=/scratch/Shares/layer/hypedsearch/hypedsearch/slurm/logs/%x_%j.out 
#SBATCH --error=/scratch/Shares/layer/hypedsearch/hypedsearch/slurm/logs/%x_%j.err 

