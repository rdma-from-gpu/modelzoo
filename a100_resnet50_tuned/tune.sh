#!/bin/bash
#source ../../scripts/activate_venv.sh


python3 -m tvm.driver.tvmc tune \
        --target "cuda" \
        --target-cuda-arch sm_80 \
        --output tuning.$(date --iso-8601=minutes).json \
        --input-shape "data:[1,3,224,224]" \
        resnet50-v2-7.onnx $@ \

