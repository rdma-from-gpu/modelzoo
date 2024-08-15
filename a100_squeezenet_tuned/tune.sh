#!/bin/bash

python3 -m tvm.driver.tvmc tune \
        --target "cuda" \
        --output tuning.$(date --iso-8601=minutes).json \
        squeezenet1.1-7.onnx
