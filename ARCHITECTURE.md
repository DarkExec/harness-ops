# Architecture

## Purpose

Own one portable, reviewable operating doctrine for building and improving self-contained agent
harnesses.

## Ownership

`DarkExec/harness-ops` merged `main` owns the public doctrine. The repository contains no runtime
service and no target-project memory.

| Surface | Owner |
| --- | --- |
| Operating doctrine | `harness-ops.md` |
| Repository map | `AGENTS.md` |
| Stable meaning and boundaries | `ARCHITECTURE.md` |
| Acceptance and proof | `docs/quality.md` |
| Editing and release | `docs/runbook.md` |
| Portable structural checks | `scripts/validate.sh` |
| Managed checkout refresh | `scripts/refresh.sh` |

Private or public evaluation projects may propose changes, but they do not own a second canonical
copy. Accepted changes enter this repository through review.

## Publication flow

```text
representative trajectory
  -> bounded evidence and one intervention hypothesis
  -> doctrine pull request
  -> offline validation and review
  -> merged public main
  -> managed binding validates and fast-forwards, or a packaged release pins an exact revision
  -> later representative qualification
  -> retain, revise, or remove
```

## Boundaries

- Target repositories own their implementation, local harness, tests, proof, and durable memory.
- Credentials, logs, queues, databases, caches, generated state, raw trajectories, and private data
  do not belong here.
- Structural validation proves artifact integrity, not behavioral improvement.
- A managed checkout may refresh only at an explicit harness-pass boundary, from clean `main`, by
  validating the fetched candidate before a fast-forward activation.
- Packaged or vendored downstream products remain immutable and pin a revision rather than reading
  a mutable checkout at runtime.
