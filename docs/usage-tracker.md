# Long-Use Tracker

Use the long-use tracker when you plan to use a machine for a long-running job.

## Tracker link

Replace this with your Google Sheet link:

```text
https://docs.google.com/spreadsheets/d/...
```

## When to fill it in

Fill it in for:

- overnight jobs
- multi-day jobs
- jobs expected to use most GPU memory
- jobs that may affect other lab members

## Suggested columns

| Column | Meaning |
|---|---|
| Status | Planned / Running / Completed / Cancelled |
| Machine | WS1 or WS2 |
| GPU | GPU0 |
| User | Your name or username |
| Project / Purpose | Short description |
| Planned start | Expected start time |
| Planned end | Expected end time |
| Actual start | Actual start time |
| Actual end | Actual end time |
| Contact | Email / Slack / Teams |
| PID / tmux session | Optional |
| Notes | Optional |

## Rule of thumb

Short tests do not need to be logged. Long jobs should be logged so others can plan around them.
