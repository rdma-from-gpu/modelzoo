#!/bin/bash
# This just compile the onnx model without caring about tuning
source ../../scripts/activate_venv.sh
python3 -m tvm.driver.tvmc compile \
        --target "cuda" \
        --output model.tar \
        squeezenet1.1-7.onnx ---help
tar -xvf model.tar
