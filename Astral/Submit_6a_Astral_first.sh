#!/bin/sh
#SBATCH --job-name=astral_par
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jjantzen@ufl.edu 
#SBATCH --qos=soltis-b
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=50kb
#SBATCH --time=10:00:00
#SBATCH -o logs/ast_first.%j.log
#SBATCH -e logs/ast_first.%j.err
#SBATCH --qos=soltis-b
pwd; hostname;date

module load astral


astral -i Trimal_90_manual2/BS50_collapsed/Trimal_90_manual2_comb_bs50_gene_trees.tre -o Trimal_90_manual2/BS50_collapsed/Trimal_90_manual2_comb_bs50_astral.tre 2> Trimal_90_manual2/BS50_collapsed/Trimal_90_manual2_comb_bs50_astral.log 

#-a species.txt

#2> astral_red_supercontig_BS10.log compares with branches of 10% support or lower contracted 