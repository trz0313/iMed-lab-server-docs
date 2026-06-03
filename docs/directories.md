# Directory Structure

Each user has three main locations:

```text
/home/<username>       code and config
/data/<username>       persistent data
/scratch/<username>    temporary training files
```

The workstations do not provide `~/data` or `~/scratch` shortcuts by default. Use the full `/data/<username>` and `/scratch/<username>` paths unless you have created your own shortcuts.

## Policy

- Use `/data/<username>` for persistent datasets, checkpoints, and results.
- Use `/scratch/<username>` for temporary training artifacts.
- Avoid storing large datasets directly under `/home`.
- Do not access other users' folders without permission.
