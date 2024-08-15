#!/bin/bash

TUNING=$(ls tuning* --sort=time -1 | head -n1)

python3 -m tvm.driver.tvmc compile \
        --target cuda
        --target-cuda-arch sm_80 \
        --output model.tar \
        --input-shape "data:[1,3,224,224]" \
        --tuning-records ${TUNING} \
        resnet50-v2-7.onnx $@

tar -xvf model.tar
