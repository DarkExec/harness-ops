# Harness Ops

Read `harness-ops.md` completely before changing this repository.

- `harness-ops.md` is the one canonical doctrine artifact.
- `passes/` owns the released default Harness and Efficiency execution maps; ToolBurn owns their
  factual pass receipts.
- Keep the doctrine implementation-neutral and safe to read in one tool call.
- Put ownership in `ARCHITECTURE.md`, acceptance in `docs/quality.md`, and procedures in
  `docs/runbook.md`.
- Never add credentials, customer data, raw trajectories, private evidence, host state, or
  project-specific operating policy.
- Shared rules need representative evidence or a severe authority/safety reason.
- Use a branch and pull request; run `./scripts/validate.sh`.
