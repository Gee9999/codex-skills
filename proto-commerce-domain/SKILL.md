---
name: proto-commerce-domain
description: Model and improve Proto's wholesale catalogue, trader accounts, pricing, stock, orders, fulfilment, and admin workflows.
disable-model-invocation: true
argument-hint: "Which Proto business rule or commerce flow should we clarify?"
---

Use this skill before changing behaviour that affects customers, traders, stock, pricing, or orders.

Establish the domain language first:

- A trader is a business customer; Proto does not sell to the general public.
- A product may have multiple SKU or colour variants, catalogue visibility, and live stock state.
- Search, catalogue, extended-range, and stock are related but distinct capabilities.
- A price or stock value shown to a user may need a fresh review before order submission.
- Archive and unarchive operations must be idempotent and should explain an already-current state rather than fail noisily.
- Main-site, admin, catalogue, stock, registration, and order-notification flows have different responsibilities and failure modes.

For each proposed change:

1. State the user and business outcome.
2. Identify the entities, states, invariants, and integration boundaries involved.
3. Describe the happy path and at least three edge cases.
4. Decide which checks belong in the browser, API, database, or upstream service.
5. Add tests for the invariant before changing implementation.
6. Verify both the trader-facing and admin-facing consequences.

Do not invent pricing, stock, minimum-order, fulfilment, or authentication rules. Ask the user or inspect the authoritative Proto implementation and documentation.
