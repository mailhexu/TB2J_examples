import numpy as np
from TB2J.abacus.MAE import abacus_get_MAE

def run():
    # theta, psi: along the xz plane, rotating from z to x.
    thetas = np.linspace(0, 180, 19) * np.pi / 180
    psis = np.zeros(19)
    abacus_get_MAE(
            path_nosoc= 'soc0/OUT.ABACUS',
            path_soc= 'soc1/OUT.ABACUS',
            kmesh=[6,6,1],
            gamma=True, 
            thetas=thetas, psis=psis,
            )

if __name__ == '__main__':
    run()
