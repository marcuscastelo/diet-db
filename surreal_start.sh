#!/bin/sh
./surreal_export.sh &

surreal start --log trace --user root --pass root file://$(pwd)/diet-db-data