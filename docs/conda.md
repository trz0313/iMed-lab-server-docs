# Conda Environment

The global Conda installation is available at:

```text
/opt/conda
```

## Check Conda

```bash
conda --version
conda env list
```

## Create an environment

```bash
conda create -n myenv python=3.10
conda activate myenv
```

## Install project dependencies

```bash
pip install -r requirements.txt
```

or:

```bash
conda install <package>
```

## Conda plugin issue

If Conda reports plugin-related errors, try:

```bash
CONDA_NO_PLUGINS=true conda env list
```

Then report the exact error message to the lab server admin.
