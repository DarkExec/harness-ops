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
| Shared Harness and Efficiency modes | `passes/` |
| Content-free pass measurement | `ToolBurn` |
| Stable meaning and boundaries | `ARCHITECTURE.md` |
| Acceptance and proof | `docs/quality.md` |
| Editing and release | `docs/runbook.md` |
| Portable structural checks | `scripts/validate.sh` |
| Canonical checkout refresh | `scripts/refresh.sh` |

Private or public evaluation projects may propose changes, but they do not own a second canonical
copy. Accepted changes enter this repository through review.

## Publication flow

```text
representative trajectory
  -> bounded evidence and one intervention hypothesis
  -> doctrine pull request
  -> offline validation and review
  -> merged public main
  -> managed binding validates and atomically activates an immutable revision, or a packaged release pins an exact revision
  -> later representative qualification
  -> retain, revise, or remove
```

## Boundaries

- Target repositories own their implementation, local harness, tests, proof, durable memory, and
  any small pass overlay needed for local ownership, validation, or delivery.
- Credentials, logs, queues, databases, caches, generated state, raw trajectories, and private data
  do not belong here.
- Structural validation proves artifact integrity, not behavioral improvement.
- A managed distribution may refresh only at an explicit harness-pass boundary by requiring the active revision to be an ancestor of the fetched candidate, validating that candidate before activation, and atomically selecting its immutable release. A human development checkout may use `scripts/refresh.sh` separately and is never the runtime distribution state.
- Shared pass maps travel with the same released revision as the doctrine. They may depend on a
  separately versioned, read-only measurement CLI, but never on private evaluation state.
- Packaged or vendored downstream products remain immutable and pin a revision rather than reading
  a mutable checkout at runtime.
