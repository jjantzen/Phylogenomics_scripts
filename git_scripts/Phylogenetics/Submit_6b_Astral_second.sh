#!/bin/sh
#SBATCH --job-name=astral_2nd
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jjantzen@ufl.edu 
#SBATCH --qos=soltis-b
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3
#SBATCH --mem-per-cpu=3gb
#SBATCH --time=10:00:00
#SBATCH -o ast_2nd.%j.log
#SBATCH -e ast_2nd.%j.err

pwd; hostname;date

module load astral


astral -q Reduced_supercontigs/astral_red_supercontig.tre -t 1 -i Reduced_supercontigs/combined_gene_trees.tre -o Reduced_supercontigs/astral_red_supercontig_t1.tre  2> Reduced_supercontigs/astral_red_supercontig_bs10_t1_log.log 


#-a species.txt
#-a species.txt

#2> astral_red_supercontig_bs10_t1_log.log compares with branches of 10% support or lower contracted