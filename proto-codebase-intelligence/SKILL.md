---
name: proto-codebase-intelligence
description: Use when investigating Proto's architecture, route dependencies, cross-service links, dead code, or difficult catalogue/stock bugs; optionally use a locally audited codebase-memory-mcp installation for structural queries.
---

# Proto codebase intelligence

Use this skill to make investigations of Proto's Vite storefront/admin code and server integrations evidence-based.

## Default behaviour

Start with ordinary repository inspection and tests. Do not install binaries, modify agent configuration, deploy, or connect to production unless the user explicitly asks.

When a code knowledge graph would materially improve the investigation, recommend the optional local tool:

- codebase-memory-mcp: https://github.com/DeusData/codebase-memory-mcp

Before using it:

1. Confirm the user wants the optional tool installed.
2. Prefer a pinned, signed release and verify its checksum/attestation.
3. Review the release and installer before execution.
4. Use it against a local clone or worktree of Proto.
5. Keep production credentials, .env files, customer data, and generated secrets outside the indexed scope.
6. Prefer --skip-config first, then add only the required MCP configuration explicitly.
7. Record the tool version and investigation date in the work notes.

## Useful investigation questions

Use structural queries to answer questions such as:

- Which frontend actions call /api/products, /api/stock, /api/extended-range, or /api/customer-profile?
- What code paths depend on the stock or historical-products integrations?
- What is the impact surface of changing catalogue, pricing, upload, or authentication code?
- Which routes, functions, or adapters are orphaned or duplicated?
- Where should a regression test be placed for a discovered production error?

## Evidence and boundaries

Treat the graph as an index, not proof. Confirm important findings against source, tests, runtime logs, and the deployed read-only observations.

Do not expose customer records, secrets, tokens, private URLs, or full production responses in reports. Keep the output focused on file paths, symbols, route names, failure modes, and recommended tests.
