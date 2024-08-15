#!/bin/bash

UPSCALE_FACTOR=$(cat UPSCALE_FACTOR)
#DIR=$(basename "$PWD")
DIR=a100_superresolution_${UPSCALE_FACTOR}_tuned
CMD="../a100_superresolution_1_tuned/super_resolution_with_onnxruntime.py $UPSCALE_FACTOR"

echo $CMD
set -x
sudo docker run --rm --gpus 1 \
        -v $(pwd):/semla/modelzoo/$DIR \
        -v $(pwd)/../a100_superresolution_1_tuned:/semla/modelzoo/a100_superresolution_1_tuned \
        --workdir /semla/modelzoo/$DIR \
        --entrypoint "/usr/bin/python3" \
        semla/tvm_pytorch \
        $CMD
