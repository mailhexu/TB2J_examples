#!/usr/bin/env bash
#SBATCH -J CrI3z
#SBATCH --no-requeue
#SBATCH --ntasks=24
#SBATCH --cpus-per-task=1
##SBATCH --tasks-per-node=24
#SBATCH --time=2:00:00

source ~/.bashrc

export LUA_PATH="$HOME/flos/?.lua;$HOME/flos/?/init.lua;$LUA_PATH;;"
srun vasp_ncl | tee log
wannier90.x wannier90.win
sh get_J.sh
