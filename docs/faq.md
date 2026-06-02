# FAQ

## I cannot open the GPU dashboard.

Dashboard access requires ECE VPN or lab-network access.

Dashboard URL: [http://128.100.23.241/gpu](http://128.100.23.241/gpu)

If it does not open, start with the [VPN troubleshooting page](vpn.md).

## I cannot SSH into WS1 or WS2.

First confirm that ECE VPN is connected.

- A connection timeout usually suggests a VPN, network, or server reachability problem.
- `Permission denied` usually suggests a username, password, or SSH key issue.

Try plain terminal SSH before troubleshooting VS Code:

```bash
ssh <username>@128.100.23.241
ssh <username>@128.100.23.242
```

Record the exact error message before asking for help.

## VPN worked before but stopped after a macOS update.

Major macOS updates may require repeating VPN setup because system VPN support files can be reset or removed.

Revisit the [official macOS ECE VPN setup page](https://www.comm.utoronto.ca/~jli/applevpn.htm) and repeat the user-level setup steps.

## Windows VPN login keeps failing even though the password looks correct.

Check for accidental leading or trailing spaces when copying credentials, preshared keys, or setup values.

Paste the value into a plain text editor first, check for extra spaces, then try VPN login again.

## VS Code Remote SSH cannot connect.

Test plain terminal SSH first:

```bash
ssh <username>@128.100.23.241
```

If terminal SSH fails, troubleshoot VPN and SSH first.

If terminal SSH works but VS Code fails, restart VS Code and retry the Remote SSH connection.

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
