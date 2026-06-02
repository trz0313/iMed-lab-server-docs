# iMED Lab Server Guide

This public guide explains how lab members can connect to and use the iMED lab GPU workstations.

## Quick links

| Resource | Link |
|---|---|
| Hardware dashboard | [Open dashboard](http://128.100.23.241/gpu) |
| Long-use tracker | Replace this with your Google Sheet link |
| VPN guide | [VPN troubleshooting](vpn.md) |
| SSH login | [SSH Login](ssh-login.md) |
| Conda setup | [Conda Environment](conda.md) |

!!! note
    The hardware dashboard requires ECE VPN or lab-network access. This public guide stays available even when a user is troubleshooting VPN connection issues.

## Workstation summary

| Machine | Purpose | User-facing status |
|---|---|---|
| WS1 | GPU workstation | Shown on the dashboard |
| WS2 | GPU workstation | Shown on the dashboard |

## Basic workflow

1. Connect to ECE VPN or lab network.
2. Check the [hardware dashboard](http://128.100.23.241/gpu).
3. SSH into the assigned workstation.
4. Work under your own account.
5. Store persistent data in `~/data`.
6. Store temporary training artifacts in `~/scratch`.
7. For long jobs, add your plan to the long-use tracker.
