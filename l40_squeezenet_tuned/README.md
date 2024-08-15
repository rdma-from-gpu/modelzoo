This is a model from

https://github.com/onnx/models/tree/main/vision/classification/squeezenet


It is designed to run on embedded devices, but it's a good benchmark for a "fast" GPU, where we want to see fast inferences with reasonably sized inputs. The weights are small, hence probably not a good candidate if the load/unload times are critical.

Warning: the compilation with TVM 0.6 throw an out of resources errors.
