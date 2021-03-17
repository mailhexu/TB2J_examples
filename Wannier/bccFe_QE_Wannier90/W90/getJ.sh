# Note: use .pwi or .in in the filename so ase can detect it is input of QE
wann2J.py --posfile Fe.scf.pwi --prefix_up=Fe_up --prefix_down=Fe_down --rcut 15 --kmesh 15 15 15 --elements=Fe --efermi=12.6256 --emin -12 --emax 0.00 --np 3

