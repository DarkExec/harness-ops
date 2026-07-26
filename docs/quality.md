# Quality

A publishable Harness Ops revision:

- is implementation-neutral and directly usable by a coding agent;
- preserves target ownership, authority boundaries, claim-matched proof, and recovery;
- contains no secrets, private evidence, host state, or project-specific operating policy;
- remains small enough to read completely in one ordinary tool call;
- passes the portable validator from a clean clone;
- names the evidence and expected effect behind material new doctrine; and
- remains a candidate until later representative work supports retain, revise, or remove.

`scripts/validate.sh` checks repository structure, artifact size, Markdown hygiene, private-path
leakage, and shell syntax. It cannot prove that a doctrine change improves real trajectories.

Downstream integrations must record the exact upstream revision and artifact checksum they ship.
