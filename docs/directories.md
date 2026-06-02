# Directory Structure

Each user has three main locations:

```text
/home/<username>       code and config
/data/<username>       persistent data
/scratch/<username>    temporary training files
```

Convenience symlinks:

```text
~/data    -> /data/<username>
~/scratch -> /scratch/<username>
```

## Policy

- Use `~/data` for persistent datasets, checkpoints, and results.
- Use `~/scratch` for temporary training artifacts.
- Avoid storing large datasets directly under `/home`.
- Do not access other users' folders without permission.
