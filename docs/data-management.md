# Data Management

This page explains where to store data, how to upload datasets, when to request shared project folders, how to handle external drives, and what privacy or compliance checks are required before uploading data.

!!! warning "Data privacy and compliance"
    The lab GPU workstations are shared research computing resources. They should not be treated as approved secure storage for restricted, identifiable, clinical, human-subject, or otherwise sensitive datasets unless your supervisor or relevant project policy explicitly permits this use.
    Users are responsible for confirming that their datasets may be stored and processed on the lab workstations before uploading them.
    If you are unsure whether a dataset is permitted, ask your supervisor or project lead before copying it to WS1 or WS2.
    This page is operational guidance, not legal advice.

## Storage locations

| Path | Use | Notes |
|---|---|---|
| `/home/<username>` | Code, configuration files, SSH/VS Code settings, small project files | Keep large datasets out of home directories |
| `/data/<username>` | Persistent personal working data | Use this for personal datasets and project work that does not need shared access |
| `/scratch/<username>` | Temporary training artifacts, cache, checkpoints, intermediate outputs | Do not treat scratch as permanent storage |
| `/data/projects/<project>` | Shared project data | Request this when multiple users need access; it should be created by admin with explicit membership and permissions |
| `/opt/conda` | Shared Conda installation | Not a place for datasets or user project files |

Do not use temporary or test mounts unless an admin explicitly confirms that they are safe for your dataset and workflow.

## Personal data vs shared project data

- Personal working data should normally go under `/data/<username>`.
- If multiple lab members need access, request a project folder instead of sharing a personal folder.
- Shared project folders should have explicit membership and permissions.
- Do not copy shared data into another user's personal `/data` directory.
- Do not loosen permissions on personal folders to share data informally.

## Before uploading large datasets

Review this checklist before upload:

- Approximate total data size.
- Approximate number of files.
- Whether the data is restricted, sensitive, identifiable, clinical, or human-subject data.
- Who needs access.
- Target machine: WS1, WS2, or either.
- Whether a backup exists.
- Whether the transfer may take a long time.
- Whether the transfer should be coordinated with other users.

## Uploading data over SSH

Connect to ECE VPN or the lab network before uploading. Avoid uploading large datasets into `/home`.

`rsync` is preferred for large transfers because it can resume partial transfers. `scp` is acceptable for small transfers.

rsync from macOS/Linux to WS1:

```bash
rsync -avh --progress --partial /path/to/local/data/ <username>@128.100.23.241:/data/<username>/data/
```

rsync from macOS/Linux to WS2:

```bash
rsync -avh --progress --partial /path/to/local/data/ <username>@128.100.23.242:/data/<username>/data/
```

scp for small transfers to WS1:

```bash
scp -r /path/to/local/data <username>@128.100.23.241:/data/<username>/
```

## In-person copy and external drives

SSH upload can be slow for large datasets because it is limited by network bandwidth. For very large datasets, it may be better to bring the portable drive to the lab and coordinate a local copy.

External drives should be connected and mounted with admin coordination. Do not assume a drive can be safely mounted or reformatted without confirming its filesystem, contents, ownership, and backup status.

For shared data, ask for a project folder rather than copying into another user's personal data directory.

## External drive filesystem formats

| Format | Guidance |
|---|---|
| APFS | Best handled on a Mac. Do not rely on Windows or Linux for reliable APFS write access. If an APFS drive needs to be copied, the safest free workflow is usually to connect it to a Mac and transfer the data to the server with `rsync`, or coordinate an in-person copy. |
| exFAT | Useful for portable cross-platform transfer across Windows, macOS, and Linux. Not ideal as a long-term Linux server working filesystem because it does not provide the same Unix permission model expected for shared server storage. |
| ext4 or XFS | Better for dedicated Linux server data disks. Not convenient for direct Windows/macOS access. |

## Backup expectations

!!! note "Backup responsibility"
    `/data` is intended for persistent working data, but it should not be assumed to be a formal backup system unless a project-specific backup plan has been confirmed.
    Keep an independent backup of important raw data.

## What to send the admin

When requesting help with a large transfer, shared folder, or external drive, include:

- username,
- target machine,
- total data size,
- file count, if known,
- external drive filesystem, if applicable,
- who needs access,
- whether data has privacy/compliance restrictions,
- preferred transfer method: SSH/rsync, in-person copy, or external drive,
- preferred transfer time.
