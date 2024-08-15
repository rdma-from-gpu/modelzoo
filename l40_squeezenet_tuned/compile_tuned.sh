#!/bin/bash
TUNING=$(ls tuning* --sort=time -1 | head -n1)

set -x
python3 -m tvm.driver.tvmc compile \
        --target cuda
        --target-cuda-arch sm_89 \
        --output model.tar \
        --tuning-records $TUNING \
        squeezenet1.1-7.onnx $@ \

tar -xvf model.tar
