#!/bin/bash
TUNING=$(ls tuning* --sort=time -1 | head -n1)

set -x
python3 -m tvm.driver.tvmc compile \
        --target cuda
        --target-cuda-arch sm_80 \
        --output model.tar \
        --input-shape 'input:[1,1,640,480]' \
        --tuning-records $TUNING \
        super_resolution.onnx $@ \

        #--output-shape 'input:[1,1,4096,3112]' \

tar -xvf model.tar
