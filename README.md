# Knowledge Graph Schema (KGS)

KGS defines a lightweight, format-agnostic semantic contract for representing content as a knowledge graph.

It is designed for systems where content is authored as independent topics (Markdown, DITA, CMS entries) but needs to behave as a cohesive, interconnected knowledge graph for reasoning, querying, and structured access.

> KGS is not a storage format, CMS, publishing pipeline, or UI framework. It defines only the semantic layer that connects content units.

## Core principles

- **Stable identifiers:** Each content entity has a persistent, globally unique ID.  
- **Explicit semantic relationships:** Relationships are first-class, directional, and typed.  
- **Projection-based deliverables:** Navigation, views, and presentations are projections and do not alter the underlying semantic graph.

## Who should use KGS

- Documentation architects managing structured content.  
- Knowledge engineers designing enterprise knowledge graphs.  
- Developers building semantic-aware CMS or content APIs.  

## Repository contents

- `spec.md`: Normative KGS specification.  
- `examples/storage/`: Non-normative examples in Markdown, DITA, JSON, and SQL.  
- `examples/carrier/`: Non-normative examples in RDF/Turtle and JSON-LD.

## Quick example

A single KGS entity in Markdown frontmatter:

```yaml
---
id: T101
type: topic
title: Installation overview
prerequisites:
  - T203
---
```

The same entity in RDF/Turtle:

```turtle
ex:T101 a kgs:Topic ;
    kgs:hasPrerequisite ex:T203 .
```

## License

CC-BY-4.0

