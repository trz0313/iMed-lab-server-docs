# VPN

The GPU dashboard and SSH access require ECE VPN or lab-network access.

## Checklist

1. Confirm that the VPN client is connected.
2. Confirm that the VPN account is active.
3. Disconnect and reconnect the VPN.
4. Try opening the hardware dashboard:

```text
http://128.100.23.241/gpu
```

5. Try SSH after VPN is connected:

```bash
ssh <username>@128.100.23.241
```

or:

```bash
ssh <username>@128.100.23.242
```

## Common symptoms

| Symptom | Likely cause |
|---|---|
| Browser cannot open dashboard | VPN not connected, route unavailable, or dashboard host temporarily unreachable |
| SSH timeout | VPN/routing problem |
| Permission denied after SSH prompt | Wrong username/password/key |
| Dashboard opens but SSH fails | Account may not exist on that machine |
