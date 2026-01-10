# Knowledge Graph Schema (KGS)

KGS defines a lightweight, format-agnostic semantic contract for representing documentation content as a true knowledge graph.

It is designed for environments where content is authored as independent topics (Markdown, DITA, CMS entries, database records) but must behave as a cohesive, machine-interpretable graph for reasoning, querying, validation, and retrieval-augmented generation.

> KGS is not a CMS, publishing pipeline, UI framework, or storage format. It defines only the semantic layer that connects content units.

## Why KGS exists

Modern documentation systems still encode meaning in folders, TOCs, and hyperlinks. These structures are convenient for humans but aren't visible to machines.

KGS replaces implicit structure with explicit semantics:

- Content entities have stable identities,
- Relationships are first-class and typed,
- Navigation is treated as a projection, not a source of truth.

This enables enterprise-grade knowledge graphs without forcing a specific toolchain.

## Core principles

- **Stable identifiers:** Each content entity has a persistent, globally unique ID that's independent of file paths or publication cycles.  
- **Explicit semantic relationships:** Relationships are directional, typed, and machine-readable.  
- **Projection-based deliverables:** Menus, TOCs, portals, and views are projections derived from the graph and never the source of truth.

## Who KGS is for

- Documentation architects designing structured content systems  
- Knowledge engineers building enterprise knowledge graphs 
- Developers implementing semantic-aware CMS or content APIs 

## Repository contents

- `spec.md`: Normative Knowledge Graph Schema (KGS) specification  
- `examples/storage/`: Non-normative entity examples (Markdown, DITA, JSON, SQL)  
- `examples/carrier/`: Non-normative knowledge-graph exports (RDF/Turtle, JSON-LD)
- `quick-start/`: Non-normative, narrative introduction to implementing KGS in real systems

## Quick example

Markdown storage format:

```yaml
---
id: T101
type: topic
title: Installation overview
prerequisites:
  - T203
  - T305
---
```

RDF/Turtle carrier format:

```turtle
ex:T101 a kgs:Topic ;
    rdfs:label "Installation overview" ;
    kgs:hasPrerequisite ex:T203 , ex:T305 .

```

Both contain the same semantics but are in different formats. KGS is the contract that makes them equivalent.

## What makes KGS different

| Traditional docs                 | KGS-compliant systems                 |
| -------------------------------- | ------------------------------------- |
| Meaning encoded in navigation    | Meaning encoded in relationships      |
| File paths define structure      | Stable identifiers define structure   |
| UI changes alter semantics       | UI is a projection only               |
| Hard to integrate across systems | Native RDF/JSON-LD interoperability   |


## License

The KGS specification is licensed under Creative Commons Attribution 4.0 International (CC-BY 4.0).

