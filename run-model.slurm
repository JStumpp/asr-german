# !/bin/bash

# Environment
ulimit -n 4096
module load singularity
export SINGULARITY_BINDPATH="/mnt"

# Working directory
cd /mnt/rds/redhen/gallina/home/axa1142

# Task
singularity exec -e --nv singularity-images/test_kaldi.sif bash infer.sh $1

# Receipt
echo -e "\n\tThe Deutsch ASR job is completed at: `date`\n"
