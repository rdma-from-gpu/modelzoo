#!/bin/bash
# This just compile the onnx model without caring about tuning
#source ../../scripts/activate_venv.sh
python3 -m tvm.driver.tvmc compile \
        --target "cuda" \
        --target-cuda-arch sm_80 \
        --input-shape "data:[1,3,224,224]" \
        --output model.tar \
        resnet50-v1-7.onnx
tar -xvf model.tar
