from TB2J.abacus.stru_api import write_abacus
from ase.io import read, write

def run():
    pp={"Cr": "Cr.upf", 
        "I" : "I.upf"
        }
    basis={"Cr":  "Cr_gga_10au_100Ry_4s2p2d1f.orb",
            "I": "I_gga_8au_100Ry_2s2p1d.orb"}

    atoms=read("POSCAR")

    write_abacus("STRU", atoms, pp, basis, scaled=True)


run()



