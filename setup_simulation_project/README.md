# Usage
Use these contents to setup a Quartus Prime Pro project that can be used to generate the following:
* Simulator setup script for IP modules

## Directions
1. After setting up the simulation project, and adding the RTL intended for simulation, perform a compile.
2. Generate the simulator setup script for the IP modules contained within the RTL.
3. Incorporate the simulator setup script contents into the ```simulation_setup.tcl``` file that is part of this repo.
4. Run simulation batch script to launch simulator. 

## Other Notes
* When generating the IP that will be simulated, for example, a dual port RAM, make sure that you generate the simulation model (selected when generating the HDL with the IP editor)
