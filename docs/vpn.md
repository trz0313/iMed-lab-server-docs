# VPN

The GPU dashboard and SSH access are available only from ECE VPN or the lab network.

## Why VPN is required

WS1 and WS2 are internal lab workstations. When you are off campus or outside the lab network, VPN gives your computer access to the network path needed for the dashboard and SSH.

The dashboard URL is:

[http://128.100.23.241/gpu](http://128.100.23.241/gpu)

## Official ECE VPN setup links

Use the official ECE setup page for your operating system:

- [macOS ECE VPN setup](https://www.comm.utoronto.ca/~jli/applevpn.htm)
- [Windows 11 ECE VPN setup](https://www.eecg.utoronto.ca/~matthew/vpn/win11-vpn/win11_vpn.htm)

## VPN access request form

If you need VPN access, submit the [ECE VPN access request form](https://forms.gle/skRCvSu8B773ktrx6).

If the form link stops working, ask the lab server admin for the current VPN access request form link. Do not send passwords or private keys through this documentation site.

### macOS note

After major macOS updates, VPN setup may need to be redone because system VPN support files can be reset or removed. If VPN stops working after a macOS update, revisit the [official macOS ECE VPN setup page](https://www.comm.utoronto.ca/~jli/applevpn.htm) and repeat the user-level setup steps.

### Windows note

When copying VPN passwords, preshared keys, or setup values, make sure there are no leading or trailing spaces. If login fails unexpectedly, paste the value into a plain text editor first, check for accidental spaces, then try again.

## Symptoms of VPN failure

| Symptom | What it usually means |
|---|---|
| Dashboard does not load | VPN is disconnected, the route is unavailable, or the workstation is temporarily unreachable |
| SSH hangs or times out | Your computer cannot reach the workstation network |
| SSH says `Connection refused` | You reached the host, but SSH may not be accepting the connection |
| SSH says `Permission denied` | The network path works, but your login method or account access needs checking |
| Dashboard opens but SSH fails | Your account or SSH setup may need help from the admin |

## Basic checks

Run these checks before asking for help:

1. Confirm that your VPN client says it is connected.
2. Disconnect and reconnect VPN.
3. Try opening the [hardware dashboard](http://128.100.23.241/gpu).
4. Try SSH from a terminal:

```bash
ssh <username>@128.100.23.241
ssh <username>@128.100.23.242
```

5. If you are on Windows, try the same commands in PowerShell or Windows Terminal.
6. If you are on campus, check whether the issue also happens off campus with VPN enabled.

## Before reporting a server problem

Confirm these points first:

- VPN is connected.
- You tried opening the [hardware dashboard](http://128.100.23.241/gpu).
- You tried SSH from a terminal.
- You have the exact error message.
- You know your OS version and whether the issue started after an OS update.

## What to send the admin

If it still fails, send a short report with:

- whether VPN shows as connected,
- whether the dashboard loads,
- which workstation you tried: WS1 or WS2,
- the exact SSH command you ran,
- the exact error message,
- your operating system,
- whether the issue started after an OS update,
- the approximate date and time of the attempt.

Do not send passwords, preshared secrets, private keys, or screenshots that expose sensitive personal information.
