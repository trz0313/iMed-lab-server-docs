# GPU Usage Rules

WS1 and WS2 are shared lab workstations. Check availability, communicate long jobs, and keep your work in your own folders.

## Before using a GPU

Check the [hardware dashboard](http://128.100.23.241/gpu). It requires ECE VPN or lab-network access.

Then check from the workstation:

```bash
nvidia-smi
```

Look for active processes, memory use, and the usernames shown by `nvidia-smi`.

## Long-use tracker

Use the [long-use tracker](usage-tracker.md) before starting:

- overnight jobs,
- multi-day jobs,
- jobs expected to use most GPU memory,
- jobs that may block other lab members.

Short interactive tests normally do not need to be recorded.

## Long-running jobs

Use `tmux` so your job can keep running if your SSH session disconnects:

```bash
tmux new -s train
```

Detach from the session:

```text
Ctrl-b then d
```

Reattach later:

```bash
tmux attach -t train
```

## Etiquette

- Do not kill or stop another user's job without confirmation.
- Contact the user or admin if a job appears abandoned or is blocking urgent work.
- Record long jobs before they start.
- Keep datasets, checkpoints, and outputs in your own folders.
- Clean up temporary files when a project is finished.
- Avoid starting large jobs when both the dashboard and `nvidia-smi` show heavy use.
