# SSH Login

## Basic SSH command

```bash
ssh <username>@128.100.23.241
```

or:

```bash
ssh <username>@128.100.23.242
```

## Recommended SSH config

Edit this file on your local computer:

```bash
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
```

## First login checklist

```bash
whoami
pwd
ls -ld ~/data ~/scratch
nvidia-smi
conda --version
```
