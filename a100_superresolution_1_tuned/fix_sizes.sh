#!/bin/bash

UPSCALE_FACTOR=$(cat UPSCALE_FACTOR)
W_OUTPUT=$(($UPSCALE_FACTOR * 640))
H_OUTPUT=$(($UPSCALE_FACTOR * 480))
MODEL_NAME=a100_superresolution_${UPSCALE_FACTOR}_tuned


cat ../a100_superresolution_1_tuned/metadata.template.json \
        | sed -e "s/W_OUTPUT/${W_OUTPUT}/g" \
        | sed -e "s/H_OUTPUT/${H_OUTPUT}/g" \
        | sed -e "s/MODEL_NAME/${MODEL_NAME}/g" \
        | tee metadata.json
