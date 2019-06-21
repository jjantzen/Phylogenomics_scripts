#!/usr/bin/env python

#### this script takes files with a given extension (.tre for example) and combines them 
###  into a single output file.   below, provide the extension you want to search and the
##	 name of the out-file. sometimes you need to make an empty output file before hand.
#	 !script must be in folder you are searching!
########################################################################################

import fileinput
import glob					#finds all the pathnames matching a given pattern.
import os

os.chdir("/ufrc/soltis/jjantzen/Dissertation/Analysis/Raxml/supercontig_trees/reseq/Trimal_90_manual_2/trees_only/namechanged/Collapsed_BS50/")

file_list=glob.glob("*.tre") 		#! input a search term that is in the filename of all your gene trees

OutFileName="/ufrc/soltis/jjantzen/Dissertation/Analysis/Astral/Trimal_90_manual2/BS50_collapsed/Trimal_90_manual2_comb_bs50_gene_trees.tre"		# output file containing all gene trees

OutFile=open(OutFileName, 'w')

                
for line in fileinput.input(file_list):
    OutFile.write(line)
                                          