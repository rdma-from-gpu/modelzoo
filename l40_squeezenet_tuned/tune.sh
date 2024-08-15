#!/bin/bash
source ../../scripts/activate_venv.sh




set -x
python3 -m -m tvm.driver.tvmc tune \
        --target "cuda" \
        --target-cuda-arch 'sm_89' \
        --output tuning.$(date --iso-8601=minutes).json \
        squeezenet1.1-7.onnx $@ \
