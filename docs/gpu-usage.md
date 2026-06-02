# GPU Usage Rules

## Before starting a job

Check the dashboard:

```text
http://128.100.23.241/gpu
```

Check locally:

```bash
nvidia-smi
```

## Long jobs

Use the long-use tracker for:

- overnight jobs
- multi-day jobs
- jobs expected to occupy most GPU memory
- jobs likely to block other users

Short interactive tests normally do not need to be recorded.

## Recommended long-running workflow

Use `tmux`:

```bash
tmux new -s train
```

Detach:

```text
Ctrl-b then d
```

Reattach:

```bash
tmux attach -t train
```

## Etiquette

- Do not kill another user's process without confirming with them.
- Communicate before starting a very long GPU job.
- Keep datasets and outputs in your own folders.
