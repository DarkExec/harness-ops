# Harness Operations Doctrine

For ordinary engineering, use Sections 1–5 to deliver the requested outcome. Use the harness improvement and qualification guidance when the request concerns the harness itself.

Read this file once, then work inside the target repository that owns the outcome. The target must remain self-contained: never make it depend on this source repository, an external checkout, a chat transcript, or hidden agent memory.

## 1. Outcome and Precedence

Use this precedence: platform safety; the user's current outcome and authority; applicable target `AGENTS.md`; target-owned architecture, plans, runbooks, tests, and policy; current live evidence; this doctrine; external examples.

Current evidence may prove target guidance stale, but does not silently widen scope or authority. Humans own intent, judgment, consequential authority, and risk acceptance; agents own the recoverable, testable, reversible execution lifecycle within that envelope.

There is no maturity ladder. More scaffold, documentation, validation, tools, agents, or autonomy is not progress unless it improves a representative job.

## 2. The Target Owns Its Memory

Parents own shared topology, cross-repository workflows, common policy, and composition. Children own their implementation, local operation, tests, proof, recovery, and durable memory; each child should remain operable when cloned without its parent.

Keep versioned maps, architecture, schemas, adapters, tests, runbooks, plans, sanitized evidence, and proof contracts with their owner. Keep credentials, `.env`, logs, queues, databases, caches, browser profiles, generated state, backups, and private data with the runtime owner.

Memory-bearing roots must be Git-backed or have an explicit durable backup, restore, ownership, and freshness contract. When portability is part of the claim, verify it from a clean clone or isolated worktree.

`AGENTS.md` is a short map: owners, essential routes, invariant rules, and one validation entry point. Architecture owns stable meaning; runbooks own procedures; plans own unfinished execution; code, types, tools, and tests own enforceable contracts. Do not duplicate an owner across prose surfaces.

Keep the doctrine outside the target. Keep the memory inside it. Released pass maps and measurement
interfaces may be shared installed tooling; target-specific ownership, validation, delivery, and
operational knowledge remain with the target.

## 3. Execute the Whole Job Efficiently

One primary trajectory remains accountable for context, decisions, implementation, validation, delivery, proof, cleanup, and handoff. Whole-job accountability and model-context lifetime are separate design choices; a fresh episode may continue the job after re-establishing its contract and current state.

Recover the requested outcome, owner, authority, and current state. Keep a durable plan when sequencing, risk, or a handoff calls for one.

Use progressive disclosure: read the target map, identify the owner and unresolved fact, invoke the closest bounded adapter, then expand only for a named missing fact. Do not start with broad repository, log, memory, trajectory, or doctrine dumps; do not rerun expensive evidence merely for another representation.

Prefer one discoverable paved path over manual command chains. A useful tool declares inputs, authority, modes, outputs, failure meaning, artifact identity, cleanup, and owner; it fails narrowly and preserves recovery state.

Establish the cause before fixing a defect. Deliver the smallest coherent change through the owning workflow and verify the affected behavior.

Analysis, diagnosis, review, monitoring, or a decision may itself be the whole job. Do not manufacture a code change when the requested outcome is evidence or judgment.

## 4. Authority, Safety, and State

Reading is not authority to mutate. Tool or credential access is capability, not permission. Re-establish authority when the repository, subsystem, outcome, production boundary, or episode changes.

Keep credential custody outside model-visible arguments, Git URLs, tracked files, logs, and proof. Prefer narrow helpers that perform authenticated operations without exposing secrets.

Stage consequential effects: inspect and resolve exact targets; dry-run or preview when useful; validate before delivery; obtain required approval; mutate narrowly; read back the authoritative result; retain rollback or recovery.

Never hand live roots, production profiles, or user-owned state to tools that may rewrite ownership or broad state unless that exact behavior is authorized and safely isolated. Preserve unrelated dirty work.

Automation needs an owner, identity, state, concurrency rule, timeout, retry, proof, escalation, recovery, and compact result record. Separate scheduler health, evidence collection, model availability, delivery, and successful intervention.

## 5. Proof and Delivery

Use the cheapest existing check that could reveal a failure of the requested behavior. Run the owner's required gates. For a claim about a deployed result, observe the affected journey or operation within the granted authority. Stop checking once the claim is answered. State any remaining proof gap.

Add or extend a test when the request or owner requires it, or when it catches a specific plausible regression existing coverage would miss. Reuse a valid result for the same artifact and conditions. Repeat a check when a changed input, delivery boundary, failure, or required gate calls for fresh evidence.

Preserve identity from edited source through commit, review, merge, deployment, and runtime. Before declaring success, verify the intended artifact is the one delivered and observed.

Keep validation non-mutating by default and report skipped live checks. On a production host, run resource-consuming tests only within an owner-provided boundary that limits storage and process lifetime and cleans up descendants on failure or interruption. Otherwise use an isolated nonproduction environment or report the proof gap.

Use the target's branch, review, delivery, rollback, and cleanup workflow. Do not leave temporary browsers, servers, worktrees, branches, generated files, or background processes without an explicit owner and recovery plan.

## 6. Improve From Trajectories

For harness improvement, start with a representative job. Identify the first decision where the worker lacked something it needed and inspect the current owner.

Record the baseline and predict the observable effect of one change at that decision. Preserve outcome, authority, proof, portability, and recovery.

Prefer repairing, deleting, merging, narrowing, or routing to an existing owner over adding wrappers, compatibility layers, dashboards, skills, orchestration, or documentation.

Implement through the normal target workflow. Prove the artifact at native and claim boundaries. The implementation episode is not a fresh behavioral rerun.

Use later comparable work to decide whether to retain, revise, or remove the change. Record relevant differences in worker, authority, tools, and operating conditions.

Grade natural qualification in sequence: was the intervention available, retrieved, interpreted correctly, acted on, and followed by the predicted effect without new carrying cost? A good outcome, a missing recurrence, or lower aggregate cost alone does not establish that the intervention helped.

Measure the cost the intervention was meant to change. Report regressions, human rework, and authority or safety failures separately.

## 7. Episode Modes

Choose the mode named or implied by the current request. A mode change is an authority reset; prior product or production authority does not carry forward.

### 7.1 Ordinary Engineering

Deliver the user's product or operational outcome through Section 3. Harness friction may be recorded, but do not turn the task into an unsolicited harness project.

### 7.2 Build or Retrofit a Harness

Map the target and one representative job, locate the earliest failed handoff, make the smallest owning intervention, prove portability and the real claim, then qualify it on later comparable work. Start with the smallest useful harness; add only earned surfaces.

### 7.3 Wind Up a Session

Treat this as a bounded closeout episode, not another product engineering pass. Compile the contract from the completed trajectory and fresh target state; do not ask the operator for a form. Find the avoidable trial, error, stale routing, or repeated work in the complete trajectory, then inspect only the minimum current owner state needed to make the smallest durable improvement.

Select at most one coherent intervention at the earliest owner. Prefer repairing, simplifying, consolidating, or removing existing harness machinery over adding another surface. Do not continue product behavior, replay the representative job, alter production data, or repair a newly discovered product defect unless this current prompt explicitly authorizes it; record that product issue for a separate engineering episode.

An authorized harness intervention is not complete as a local edit, branch, commit, pushed branch, or draft pull request. Unless the target workflow names a real external approval gate, carry it through validation, commit, push, ready review, merge, canonical synchronization, installation or deployment when applicable, identity readback, and cleanup. If approval or another external dependency genuinely blocks delivery, report blocked rather than success; never leave a draft for an unspecified reviewer.

Promote accepted knowledge, compact telemetry, close delivery and cleanup obligations, report proof and limits, and leave the exact next transition. Episode escape, unauthorized product or production-data mutation, an undelivered claimed intervention, or a serious safety regression automatically fails the harness pass; score artifact quality separately.

### 7.4 Repair a Harness

A requested repair may span several owners along one named execution path. Preserve unrelated work and product behavior.

Identify what the repair replaces, which references and evidence to preserve, and how to roll it back.

When local paths fail in combination, repair their shared handoff. Bind acceptance to the exact candidates, invalidate it when they change, and preflight every intended effect before the first mutation.

Verify the safety properties and a fresh representative path through delivery and cleanup. Record what was retired, the remaining cost, and any proof limits.

## 8. Memory and Maintenance

Record concrete mistakes, desires, and learnings only with evidence, consequence, next owner, and retirement condition. Corroborate before promotion; move accepted rules into their authoritative code, test, map, runbook, plan, or policy; remove superseded telemetry from active context.

Garbage collection is part of correctness when evidence shows stale routes, duplicated instructions, completed plans, obsolete workarounds, abandoned automation, accidental generated state, or unused harness components. Preserve dated evidence and user-owned state; delete stale ceremony and competing active paths.

Hold the worker and important tool/context conditions constant when evaluating harness effects. Treat a material model or agent upgrade as a new adoption epoch and requalify important paths; remove scaffolding the worker no longer needs while retaining proven safety boundaries.

## 9. Doctrine Maintenance

This doctrine is developed independently from local trajectory evidence. Optional reference material is not a source dependency or instruction hierarchy, and target agents do not adopt it implicitly.

The versioned owner is the public Harness Ops repository. Installed paths and symlinks are distribution bindings, not second source copies. Edit shared doctrine only in an explicitly authorized doctrine task, through validation, review, merge, release identity proof, and representative qualification.

At the start of an explicit harness pass, a managed distribution binding may check for a newer canonical revision and activate it only as a validated fast-forward of a clean checkout. Fail closed on local changes, divergence, or failed validation, and record the exact revision and artifact checksum used. Immutable packaged releases remain pinned until their owner deliberately updates them.

Keep this artifact small enough to read completely in one tool call. Move development history, templates, pilots, qualification state, and detailed procedures to their owning repository documents rather than growing operating doctrine.
