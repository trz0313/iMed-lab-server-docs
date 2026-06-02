# FAQ

## I cannot access the dashboard

Check that ECE VPN or lab-network access is active.

Dashboard:

```text
http://128.100.23.241/gpu
```

## I cannot SSH into the server

Check:

1. VPN is connected.
2. Username is correct.
3. Server IP is correct.
4. Your account exists on that workstation.

## Conda command not found

Try:

```bash
source /etc/profile
export PATH=/opt/conda/bin:$PATH
conda --version
```

## GPU is visible but my code uses CPU

For PyTorch:

```bash
python -c "import torch; print(torch.cuda.is_available())"
```

## I need access to the other workstation

Contact the lab server admin and specify which workstation you need.
