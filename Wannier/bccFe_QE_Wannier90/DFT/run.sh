# DFT
mpirun pw.x < Fe.scf.pwi  | tee Fe.scf.pwo
mpirun pw.x < Fe.nscf.pwi | tee Fe.nscf.pwo

# Wannier for spin up
wannier90.x -pp Fe_up
mpirun pw2wannier90.x < Fe_up.pw2wan | tee Fe_up.pw2wan.out
wannier90.x Fe_up

# Wannier for spin down
wannier90.x -pp Fe_down
mpirun pw2wannier90.x < Fe_down.pw2wan | tee Fe_down.pw2wan.out
wannier90.x Fe_down

# Note: use .pwi or .in in the filename so ase can detect it is input of QE
wann2J.py --posfile Fe.scf.pwi --prefix_up=Fe_up --prefix_down=Fe_down --rcut 15 --kmesh 15 15 15 --elements=Fe --efermi=12.6256 --emin -12 --emax 0.00 

