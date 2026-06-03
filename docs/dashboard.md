# Hardware Dashboard

Dashboard URL:

```text
http://128.100.23.241/gpu
```

The dashboard requires ECE VPN access.

Use the dashboard as a quick status view before choosing a workstation. Depending on what the dashboard can read at that moment, it may show:

- GPU utilization
- GPU memory use
- GPU temperature
- CPU usage
- RAM usage
- disk usage
- process or user information, when active processes are present

The dashboard updates approximately once per minute. Before starting a large job, also confirm from the workstation with `nvidia-smi`.
