# Harness Ops

Harness Ops is portable operating doctrine for accountable software-agent work.

The canonical artifact is [`harness-ops.md`](harness-ops.md). It tells a capable coding agent how to
recover intent, find the right owner, respect authority, execute the whole job, prove the actual
claim, improve a target harness from evidence, and stop.

Harness Ops is deliberately implementation-neutral. Target repositories retain their own code,
tools, tests, runbooks, proof, and operational memory; they must not depend on this repository being
present at runtime.

## Use

Ask an agent to read the doctrine before substantial work:

```text
Read harness-ops.md completely, then work inside the repository that owns the outcome.
```

For a session wind-up:

```text
Let's do a harness pass where we take a look at this session and turn trial and error into fast,
reliable, and durable execution. Make sure we are following harness-ops.md doctrine.
```

Clone and validate:

```bash
git clone https://github.com/DarkExec/harness-ops.git
cd harness-ops
./scripts/validate.sh
```

## Repository map

- [`harness-ops.md`](harness-ops.md) — canonical doctrine
- [`ARCHITECTURE.md`](ARCHITECTURE.md) — ownership and publication flow
- [`docs/quality.md`](docs/quality.md) — acceptance and proof
- [`docs/runbook.md`](docs/runbook.md) — contribution and release procedure
- [`CONTRIBUTING.md`](CONTRIBUTING.md) — public contribution guide

## Relationship to DarkExec

[DarkExec](https://github.com/DarkExec/darkexec) distributes an exact, checksummed Harness Ops
snapshot with each release. This repository remains the upstream doctrine owner; a DarkExec release
does not depend on a mutable checkout of this repository.

## Licence

Apache-2.0. See [`LICENSE`](LICENSE).
