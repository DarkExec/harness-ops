# Runbook

## Propose a change

1. Begin with a representative trajectory or a severe authority/safety defect.
2. Identify the earliest failed handoff and its correct owner.
3. State one intervention hypothesis and its expected effect.
4. Change the smallest coherent doctrine surface.
5. Run `./scripts/validate.sh`.
6. Open a pull request describing evidence, scope, expected effect, and qualification limits.
7. Unless a named external approval gate applies, mark it ready, merge it after validation, pin it
   downstream where applicable, read back the delivered identity, and clean up the branch/worktree.

A local edit, commit, pushed branch, or draft pull request is recoverable progress, not a completed
harness intervention.

Do not publish raw trajectories or private evidence. Summarize only what is necessary to justify the
general rule.

## Release and downstream bindings

Merged `main` is canonical. A downstream release records:

- the Harness Ops Git revision;
- the SHA-256 of `harness-ops.md`; and
- the path at which its installed release exposes the artifact.

A managed canonical checkout may run `./scripts/refresh.sh` immediately before an explicit harness
pass. The refresh fetches `origin/main`, validates the exact fetched candidate in isolation, and
fast-forwards only a clean local `main`. Local changes, divergence, or failed validation stop the
pass rather than silently retaining or replacing doctrine. The pass records the activated revision
and artifact checksum.

Packaged or vendored releases remain pinned. Changing such a pin requires the downstream owner's
normal review and qualification; they do not silently follow upstream `main`.

## Rollback

Revert the doctrine pull request when a rule is unsafe or structurally invalid. When later
qualification shows no benefit, submit a new evidence-backed change that revises or removes the
rule. Downstream releases retain their existing pin until they deliberately accept another revision.
