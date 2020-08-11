#!/bin/bash

export LD_LIBRARY_PATH=$PWD/linux:$LD_LIBRARY_PATH
./test_cgo_sharedlib
