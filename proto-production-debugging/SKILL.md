---
name: proto-production-debugging
description: Diagnose Proto production failures across Vercel, Supabase, catalogue integrations, stock, registration, uploads, and order flows.
disable-model-invocation: true
argument-hint: "Which Proto production problem should we investigate?"
---

Use this skill for Proto production incidents and reliability work. Read before changing code:

1. Reproduce the failure against the relevant preview or production route when safe.
2. Inspect Vercel runtime errors and deployment metadata.
3. Trace the route into its integration boundary: Supabase, catalogue, stock, Instore, Brevo, or authentication.
4. Separate user-input errors, transient upstream failures, configuration failures, and code defects.
5. Write a failing regression test before implementing a fix.
6. Add bounded timeouts, useful error categories, and safe user-facing fallbacks where appropriate.
7. Verify the complete flow in a browser and inspect the post-fix runtime signal.

Known Proto signals to check first include shared `url.parse()` deprecation warnings, incomplete extended-range catalogue lookups, stock timeouts, missing Instore configuration, invalid catalogue credentials, unsupported `.jfif` uploads, weak-password registration errors, and idempotent archive/unarchive actions.

Never expose secrets, service keys, auth tokens, or private customer data in logs, issues, screenshots, or commits. Do not suppress a warning until its source is identified.
