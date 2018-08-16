#!/bin/bash

# Configuration
CUDA_GENCODE="\
-gencode=arch=compute_61,code=sm_61 \
-gencode=arch=compute_52,code=sm_52 \
-gencode=arch=compute_50,code=sm_50"


cd src
/usr/local/cuda-9.1/bin/nvcc -I/usr/local/cuda/include --expt-extended-lambda -O3 -c -o wbn.o wbn.cu -x cu -Xcompiler -fPIC -std=c++11 ${CUDA_GENCODE}
cd ..