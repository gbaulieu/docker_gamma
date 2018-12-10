#!/bin/bash
export ROOTSYS=/opt/root/
export PATH=$ROOTSYS/bin/:$PATH
export LD_LIBRARY_PATH=$ROOTSYS/lib/:$LD_LIBRARY_PATH
export TENSORFLOW_DIR=/opt/tensorflow/
export LD_LIBRARY_PATH=$TENSORFLOW_DIR/lib/:$LD_LIBRARY_PATH
export OMP_NUM_THREADS=2
source scripts/add2path.sh /opt/AgataSoftware/ /lib /bin
