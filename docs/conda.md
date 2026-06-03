# Conda Environment

The workstations have a global Conda installation at:

```text
/opt/conda
```

Use it to create your own project environments. The global base environment is read-only for normal use; do not install packages into `/opt/conda` or modify the global Conda installation.

## Check Conda

```bash
conda --version
conda env list
conda info
```

If `conda` is not available in your shell, try:

```bash
source /opt/conda/etc/profile.d/conda.sh
conda --version
```

## Create a project environment

Use a clear environment name for each project:

```bash
conda create -n myproject python=3.10
conda activate myproject
```

Named environments are stored in your user Conda environment directory, normally under `/home/<username>/.conda/envs`. They are not installed into `/opt/conda`.

Install project packages inside the active environment:

```bash
pip install -r requirements.txt
```

or:

```bash
conda install <package>
```

## Check PyTorch and CUDA

After installing PyTorch in your environment, check whether it can see CUDA:

```bash
python - <<'PY'
import torch

print("PyTorch:", torch.__version__)
print("CUDA available:", torch.cuda.is_available())
if torch.cuda.is_available():
    print("CUDA device:", torch.cuda.get_device_name(0))
PY
```

Also check the GPU from the shell:

```bash
nvidia-smi
```

## Conda plugin issue

If Conda reports plugin-related errors, retry the diagnostic command with plugins disabled:

```bash
CONDA_NO_PLUGINS=true conda env list
```

If that works, include the original error message when asking the lab server admin for help.
