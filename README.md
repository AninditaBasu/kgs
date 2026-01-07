# Knowledge Graph Schema (KGS)

KGS defines a lightweight, format-agnostic contract for expressing semantic relationships between content units in a documentation system.

It is intended for systems where content is authored as independent topics (Markdown, DITA, CMS entries) but needs to behave as a coherent knowledge graph for access paths, reasoning, and retrieval-augmented generation.

KGS is not a storage format, publishing pipeline, CMS, or UI framework. It defines only the semantic layer that connects content units.

This repository contains the normative specification, and reference examples that demonstrate the same logical entity expressed in different carrier formats.

The specification is about:

- Stable identifiers
- Explicit semantic relationships
- Projection-based deliverables

These concerns are independent of representation and can be implemented in YAML frontmatter, DITA `<prolog>`, XML attributes, or database fields.