#!/bin/bash
# This just compile the onnx model without caring about tuning

TUNING=$(ls tuning* --sort=time -1 | head -n1)
python3 -m tvm.driver.tvmc compile \
        --target "cuda" \
        --output model.tar \
        --tuning-records ${TUNING} \
        squeezenet1.1-7.onnx
tar -xvf model.tar
