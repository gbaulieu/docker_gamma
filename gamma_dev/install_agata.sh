#!/bin/bash
mkdir AgataSoftware
cd AgataSoftware
git clone https://gitlab.in2p3.fr/IPNL_GAMMA/scripts.git
python scripts/gRaySoftware.py --cmake="-DCMAKE_BUILD_TYPE=release -- -j 4" --adf= all
python scripts/gRaySoftware.py --cmake="-DCMAKE_BUILD_TYPE=release -- -j 4" --mfm= all
source /etc/profile.d/agata_env.sh
python scripts/gRaySoftware.py --cmake="-DCMAKE_BUILD_TYPE=release -- -j 4" --agapro= all
python scripts/gRaySoftware.py --cmake="-DCMAKE_BUILD_TYPE=release -- -j 4" --ganpro= all
python scripts/gRaySoftware.py --cmake="-DCMAKE_BUILD_TYPE=release -- -j 4" --gw= all
python scripts/gRaySoftware.py --cmake="-DCMAKE_BUILD_TYPE=release -- -j 4" --femul= all
