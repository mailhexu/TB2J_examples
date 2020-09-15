# TB2J_examples
Examples for the TB2J code.

## Wannier examples
The examples with Wannier90 are in the Wannier directory.
For these examples, first do a DFT ground state calculation, with e.g. ABINIT or VASP. 
The input of these DFT calculations are provided in the DFT directory. 
Then do a Wannier90 Calculation, of which the input are also in the DFT directory. 
The Wannier90 outputs are in the Wannier90 directory. With these files, run the command in 
getJ.sh to get the TB2J results.


### SrMnO3: SrMnO3-ABINIT-Wannier
  

### SrMnO3: SrMnO3-VASP-Wannier
  SrMnO3 cubic structure, with PBE+U, U(Mn)=3eV in 10 atom supercell with G-AFM state.
  Note: in the DFT directory, the POTCAR file is not provided since it is proprietary, 
instead, the names of the paw potentials are in potcar.txt.

## Siesta example

### BCC Fe: Fe-Siesta

### HCP Co: Co-Siesta

### BiFeO3: BiFeO3-Siesta

## OpenMX example

