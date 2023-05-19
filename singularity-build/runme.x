#!/usr/bin/bash

#location of nwchem repository on this machine
export GITHUB_WORKSPACE=/home/bylaska/nwchem-releases

export https_proxy=http://proxy.emsl.pnl.gov:3128
export http_proxy=http://proxy.emsl.pnl.gov:3128


apptainer build --nv --force --fakeroot /tmp/mynwchem.simg Singularity 
rsync -av /tmp/mynwchem.simg .

mv ./mynwchem.simg  ./nwchem-720.mpi-ts.ompi41x.ifort:latest
