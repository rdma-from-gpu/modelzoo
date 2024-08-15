#!/bin/bash
source ../../scripts/activate_venv.sh

TUNING=$(ls tuning* --sort=time -1 | head -n1)
if [ -n "$TUNING" ]; then
        TUNING_OPT="--tuning-records $TUNING"
else
        TUNING_OPT=""
fi


set -x
python3 -m tvm.driver.tvmc tune \
        --target "cuda" \
        --output tuning.$(date --iso-8601=minutes).json \
        --input-shape "input:[1,1,640,480]" \
        $TUNING_OPT \
        super_resolution.onnx $@ \
