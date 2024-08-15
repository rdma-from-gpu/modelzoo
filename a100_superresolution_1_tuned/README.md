This is an extend version of the superresolution model.
Instead of using a fixed 3 upscale ratio with an input of 224x224,
we feed the model 640x480 inputs, similar to what would be a 480p video,
and by changing the value in UPSCALE_FACTOR, we can simulate various resolution enanchement.

For instance, a 6x upscaling would be close to a 4K output.
A 4x would be similar to a FullHD output.
A 12x would be a 8K output


Original code available at https://raw.githubusercontent.com/pytorch/tutorials/main/advanced_source/super_resolution_with_onnxruntime.py
Surrounding scripts released under GNU GPL v3. See [../LICENSE](../LICENSE).
