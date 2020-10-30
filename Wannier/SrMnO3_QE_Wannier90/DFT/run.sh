mpirun pw.x < SrMnO3.scf.pwi  | tee SrMnO3.scf.pwo
mpirun pw.x < SrMnO3.nscf.pwi | tee SrMnO3.nscf.pwo

wannier90.x -pp SrMnO3_up
mpirun pw2wannier90.x < SrMnO3_up.pw2wan | tee SrMnO3_up.pw2wan.out
wannier90.x SrMnO3_up


wannier90.x -pp SrMnO3_down
mpirun pw2wannier90.x < SrMnO3_down.pw2wan | tee SrMnO3_down.pw2wan.out
wannier90.x SrMnO3_down

wann2J.py --posfile SrMnO3.scf.pwi --prefix_up=SrMnO3_up --prefix_down=SrMnO3_down --elements=Mn --efermi=10.67 --kmesh 5 5 5
