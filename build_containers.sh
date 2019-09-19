#!/bin/bash

# load singularity if not already
module load singularity

# build containers
sudo $(which singularity) build -F FastSim-base.sif fastsim-base.def

# sign containers
singularity sign FastSim-base.sif

#push containers
singularity push FastSim-base.sif library://vrastil/default/fastsim
