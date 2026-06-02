# iMED Lab Server Guide

Use this public guide to get onto the iMED lab GPU workstations and work safely in the shared environment.

## Start here

1. Connect to ECE VPN or use the lab network.
2. Open the [hardware dashboard](http://128.100.23.241/gpu) to check current GPU use.
3. SSH into WS1 or WS2 with your lab account.
4. Create a project Conda environment under your own account.
5. Run work from your own folders only.
6. Record long GPU jobs in the [long-use tracker](usage-tracker.md).

!!! note
    The dashboard is a simple status page. It requires ECE VPN or lab-network access, even though this documentation site is public.

## Quick links

| Need | Link |
|---|---|
| Check GPU status | [Hardware dashboard](http://128.100.23.241/gpu) |
| Record long GPU use | [Long-use tracker](usage-tracker.md) |
| Fix connection issues | [VPN](vpn.md) |
| Log in from a terminal | [SSH Login](ssh-login.md) |
| Use VS Code | [VS Code Remote SSH](vscode-remote.md) |
| Create Python environments | [Conda Environment](conda.md) |
| Review shared-use rules | [GPU Usage Rules](gpu-usage.md) |

## Workstations

| Workstation | Address | Use |
|---|---|---|
| WS1 | `128.100.23.241` | Shared GPU workstation |
| WS2 | `128.100.23.242` | Shared GPU workstation |

Check the dashboard before choosing a workstation. If you are unsure which machine to use, ask the lab server admin or your project lead.
