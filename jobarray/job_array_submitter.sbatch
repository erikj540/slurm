#!/bin/bash    
#SBATCH -p short              # Partition or queue. In this case, short!
#SBATCH --job-name=using-fcns   # Job name
#SBATCH --mail-type=NONE               # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=YOU@YOUREMAIL.COM
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=5gb                   # Memory limit
#SBATCH --time=00:05:00               # Time limit hrs:min:sec
# Standard output and error log
# %A inserts job ID, %x inserts job name
# #SBATCH --output=logs/%x_%J.out 
# #SBATCH --error=logs/%x_%J.err 
# #SBATCH --output=/dev/null
# #SBATCH --error=/dev/null

source ../slurm_fcns.sh

redirect_output

print_general_slurm_env_vars

if is_slurm_array_job; then
    print_job_array_stuff
fi

ls /does/not/exist # raises an error
remove_empty_file $ERRFILE
