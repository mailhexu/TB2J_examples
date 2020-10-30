# TB2J_examples
Examples for the TB2J code.
TB2J online doc: https://TB2J.readthedocs.io/en/latest/#
TB2J github: https://github.com/mailhexu/TB2J
TB2J forum: https://groups.google.com/g/tb2j

## Wannier examples
The examples with Wannier90 are in the Wannier directory.
For these examples, first do a DFT ground state calculation, with e.g. ABINIT or VASP. 
The input of these DFT calculations are provided in the DFT directory. 
Then do a Wannier90 Calculation, of which the input are also in the DFT directory. 
The Wannier90 outputs are in the Wannier90 directory. With these files, run the command in 
getJ.sh to get the TB2J results.


### SrMnO3: ABINIT-Wannier (Collinear)
 SrMnO3 cubic structure with PBEsol+U , U(Mn)=3eV, 5atom cubic structure with FM state. 
 In the Wannier directory, run get_J.sh to compute the exchange parameters.

### SrMnO3: QE-Wannier (Collinear)
 SrMnO3 cubic structure with PBE+U , U(Mn)=3eV, 5atom cubic structure with FM state. 
 In the DFT directory, run run.sh to run the full DFT-W90-TB2J calculation.
 In the Wannier directory, run get_J.sh to compute the exchange parameters from W90 output.


### SrMnO3: VASP-Wannier (Collinear)
  SrMnO3 cubic structure, with PBE+U, U(Mn)=3eV in 10 atom supercell with G-AFM state.
  Note: in the DFT directory, the POTCAR file is not provided since it is proprietary, 
instead, the names of the paw potentials are in potcar.txt.

## Siesta example

### BCC Fe: Fe (Collinear)
 bcc cubic structure, calculated with PBE. 
 run the getJ.sh command in the DFT directory.

### HCP Co: Co (Non-Collinear with SOC)
 hcp Co structure, calculated with PBE, with spin-orbit coupling. 
 run the getJ.sh command in the DFT directory.

### BiFeO3: BiFeO3 (Non-Collinear with SOC)
 BiFeO3 R3c structure. First do the calculation for rotated structures (BiFeO3_x, BiFeO3_y, BiFeO3_z). Run the getJ.sh in each of these subdirectories to the the TB2J_result for each. Then run the merge.sh script to get the merged result. 
Note: the DFT hamiltonian files (siesta.nc) are not included because the files are too large. Run siesta in the DFT directory to get them. 


