[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.13332436.svg)](https://doi.org/10.5281/zenodo.13332436)



This folder contains a set of scripts (and eventually models) used for evaluating the inference serving prototype.

These require a standard version of TVM to be known to your Python interpreter, either via `PYTHONPATH` or via a virtual environment.

The `tune.sh` should optimize the models to use your specific GPU, while the `compile.sh` scripts would compile the models (tuned or not) to a `.so` library that can be later loaded by TVM.




# LICENSE

The models have been sources from public repositories.

The scripts in this folder are released under the GNU GPL v3 license. See [LICENSE](LICENSE).

(C) 2024 Massimo Girondi girondi@kth.se GNU GPL v3
