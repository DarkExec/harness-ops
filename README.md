# Harness Ops

Harness Ops is portable operating doctrine for accountable software-agent work.

The canonical artifact is [`harness-ops.md`](harness-ops.md). It tells a capable coding agent how to
recover intent, find the right owner, respect authority, execute the whole job, prove the actual
claim, improve a target harness from evidence, and stop.

The doctrine is deliberately implementation-neutral. The same release includes shared Harness and
Efficiency pass maps, while target repositories retain their own code, tests, runbooks, proof,
operational memory, and optional small ownership overlays.

## Use

Ask an agent to read the doctrine before substantial work:

```text
Read harness-ops.md completely, then work inside the repository that owns the outcome.
```

For a session wind-up with the managed installation:

```text
After reading /srv/harness-ops.md, follow /srv/harness-ops/passes/harness/AGENTS.md. Review all ordinary turns since the previous Harness pass and make the single highest-leverage durable improvement to comparable future ordinary execution. Prefer a small earliest-owner change encountered before the observed cost. Return a concise no-op only when evidence shows the existing path already prevents the cost or no credible small intervention exists.
```

For an Efficiency pass:

```text
Review the immediately preceding Harness pass following /srv/harness-ops/passes/efficiency/AGENTS.md.
```

Clone and validate:

```bash
git clone https://github.com/DarkExec/harness-ops.git
cd harness-ops
./scripts/validate.sh
```

## Repository map

- [`harness-ops.md`](harness-ops.md) — canonical doctrine
- [`passes/`](passes/) — released Harness and Efficiency execution maps
- [`ARCHITECTURE.md`](ARCHITECTURE.md) — ownership and publication flow
- [`docs/quality.md`](docs/quality.md) — acceptance and proof
- [`docs/runbook.md`](docs/runbook.md) — contribution and release procedure
- [`CONTRIBUTING.md`](CONTRIBUTING.md) — public contribution guide

## Relationship to DarkExec

[DarkExec](https://github.com/DarkExec/darkexec) can bind to an exact, checksummed Harness Ops
release containing both doctrine and pass maps. Managed installations refresh only at an explicit
pass boundary; packaged releases pin an immutable revision.

## Licence

Apache-2.0. See [`LICENSE`](LICENSE).
