# DFT
mpirun pw.x < FeO.scf.pwi  | tee FeO.scf.pwo
mpirun pw.x < FeO.nscf.pwi | tee FeO.nscf.pwo

# Wannier for spin up
wannier90.x -pp FeO_up
mpirun pw2wannier90.x < FeO_up.pw2wan | tee FeO_up.pw2wan.out
wannier90.x FeO_up

# Wannier for spin down
wannier90.x -pp FeO_down
mpirun pw2wannier90.x < FeO_down.pw2wan | tee FeO_down.pw2wan.out
wannier90.x FeO_down

# Note: use .pwi or .in in the filename so ase can detect it is input of QE
wann2J.py --posfile FeO.scf.pwi --prefix_up=FeO_up --prefix_down=FeO_down --elements=Fe --efermi=10.8

