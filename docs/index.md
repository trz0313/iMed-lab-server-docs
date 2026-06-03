<div class="imed-hero" markdown>
<div class="eyebrow">iMED LAB · GPU WORKSTATIONS</div>

# iMED Lab Server Guide

Everything you need to get onto the iMED lab GPU workstations and work safely in the shared environment.

<div class="imed-machines" markdown>
<div markdown>**WS1**<br>`128.100.23.241`<br>Shared GPU workstation</div>
<div markdown>**WS2**<br>`128.100.23.242`<br>Shared GPU workstation</div>
</div>
</div>

## Quick links

<div class="grid cards" markdown>

- __VPN__ — Get on ECE VPN before anything else. [Open](vpn.md)
- __SSH Login__ — Log in to WS1 / WS2 from a terminal. [Open](ssh-login.md)
- __VS Code Remote SSH__ — Edit and run code over SSH. [Open](vscode-remote.md)
- __Directory Structure__ — Where your data and scratch live. [Open](directories.md)
- __Conda Environment__ — Create isolated Python environments. [Open](conda.md)
- __GPU Usage Rules__ — Share the GPUs fairly and safely. [Open](gpu-usage.md)

</div>

## Start here

1. Connect to ECE VPN or use the lab network.
2. Open the [hardware dashboard](http://128.100.23.241/gpu) to check current GPU use.
3. SSH into WS1 or WS2 with your lab account.
4. Create a project Conda environment under your own account.
5. Run work from your own folders only.
6. Record long GPU jobs in the [long-use tracker](usage-tracker.md).

!!! note
    The dashboard is a simple status page. It requires ECE VPN or lab-network access, even though this documentation site is public.

## Workstations

| Workstation | Address | Use |
|---|---|---|
| WS1 | `128.100.23.241` | Shared GPU workstation |
| WS2 | `128.100.23.242` | Shared GPU workstation |

Check the dashboard before choosing a workstation. If you are unsure which machine to use, ask the lab server admin or your project lead.
