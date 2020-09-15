#!/usr/bin/env bash
#siesta2J.py --fdf_fname siesta.fdf --elements Fe --kmesh 7 7 7  --nz 200 --emax -0.002
siesta2J.py --fdf_fname siesta.fdf --elements Fe --kmesh 7 7 7  --nz 100 --emax -0.002 --rcut 10
