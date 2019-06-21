#!/bin/bash
#SBATCH --job-name=phypar
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jjantzen@ufl.edu 
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=100mb
#SBATCH --time=20:00:00
#SBATCH --output=logs/phypart.%j.out
#SBATCH --error=logs/phyparts.%j.err
date;hostname;pwd

module load java

export _JAVA_OPTIONS="-Xmx22g"

java -XX:-UseGCOverheadLimit -jar ../phyparts/target/phyparts-0.0.1-SNAPSHOT-jar-with-dependencies.jar -a 1 -v -d singlesp_out/ -m astral_exons1k.root.noout.singlesp.tre -s 70 -o out

date



#--qos=soltis-b

