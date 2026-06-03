# VS Code Remote SSH

VS Code Remote SSH lets you edit files on WS1 or WS2 while using VS Code on your own computer.

## Setup

1. Install VS Code.
2. Install the **Remote - SSH** extension.
3. Confirm that normal SSH works first:

```bash
ssh <username>@128.100.23.241
```

4. Add optional shortcuts for `imed-ws1` and `imed-ws2` in your local SSH config. See [SSH Login](ssh-login.md).

## Connect

1. Open the VS Code Command Palette.
2. Run **Remote-SSH: Connect to Host...**.
3. Select `imed-ws1`, `imed-ws2`, or the full SSH target.
4. Wait for VS Code to open a remote window.

If the host does not appear, check your local `~/.ssh/config` or use:

```text
<username>@128.100.23.241
```

## Open your own folders only

Recommended folders:

```text
/home/<username>/code
/data/<username>
/scratch/<username>
```

Do not open, edit, or search through other users' private folders.

## Use the integrated terminal

In the remote VS Code window, open **Terminal: New Terminal**. Commands run there execute on the workstation, not on your laptop.

Useful checks:

```bash
hostname
pwd
nvidia-smi
conda env list
```

## Common failure modes

| Problem | What to check |
|---|---|
| Host does not appear | Check your local SSH config or type the full SSH target |
| Connection times out | Connect to ECE VPN first |
| Password or login prompt repeats | Confirm your username and SSH login method |
| Remote window opens in the wrong folder | Use **File: Open Folder...** and choose your own project folder |
| Terminal commands run locally | Make sure you are in the remote VS Code window |

If VS Code fails but terminal SSH also fails, start with the [VPN](vpn.md) and [SSH Login](ssh-login.md) checks.
