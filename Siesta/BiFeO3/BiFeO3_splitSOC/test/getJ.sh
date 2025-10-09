#!/usr/bin/env bash
siesta2J.py --fdf_fname siesta.fdf --elements Fe --kmesh 5 5 5 --rcut 7 --emin -9 --nz 50  --emax 0.0 --np 1 #--use_cache --split_soc 
#TB2J_merge.py TB2J_results_x TB2J_results_y TB2J_results_z
