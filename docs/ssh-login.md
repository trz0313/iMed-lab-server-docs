# SSH Login

Use SSH to log in to WS1 or WS2 from macOS, Linux, or Windows.

## Prerequisites

- Connect to ECE VPN or use the lab network first.
- Use your own lab account.
- Use Terminal on macOS/Linux or PowerShell/Windows Terminal on Windows.

## Basic commands

WS1:

```bash
ssh <username>@128.100.23.241
```

WS2:

```bash
ssh <username>@128.100.23.242
```

Replace `<username>` with your lab username.

## Optional SSH config

On your local computer, you can add shortcuts in:

```text
~/.ssh/config
```

Example:

```sshconfig
Host imed-ws1
  HostName 128.100.23.241
  User <username>
  ServerAliveInterval 30
  ServerAliveCountMax 4

Host imed-ws2
  HostName 128.100.23.242
  User <username>
  ServerAliveInterval 30
  ServerAliveCountMax 4
```

Then connect with:

```bash
ssh imed-ws1
ssh imed-ws2
```

## First-login checks

After logging in, run:

```bash
whoami
pwd
ls -ld ~ ~/data ~/scratch
nvidia-smi
conda --version
```

These checks confirm your account, working directory, storage folders, GPU visibility, and Conda access.

## Common errors

| Error | What to check |
|---|---|
| `Connection timed out` | Connect to ECE VPN, then try again |
| `Could not resolve hostname imed-ws1` | Check your local `~/.ssh/config` entry |
| `Permission denied` | Check your username and login method; contact the admin if it keeps failing |
| `Host key verification failed` | Contact the admin before changing local SSH trust settings |
| SSH connects, then disconnects | Try again from a fresh terminal and include the exact message when asking for help |

Do not share passwords or private SSH keys when requesting help.
