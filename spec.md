---
title: Knowledge Graph Schema (KGS) Spec
author: Anindita Basu
version: '1.0.0'
date: '2026-01-06'
license: '[CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/)'
---

# Knowledge Graph Schema (KGS) specification

This specification is licensed by Anindita Basu under Creative Commons Attribution 4.0 International (CC-BY 4.0).

This document defines the Knowledge Graph Schema (KGS), a format-agnostic model for representing content units as entities connected by explicit semantic relationships.

KGS does not define storage formats, rendering mechanisms, or user interfaces.

KGS models content units as entities identified by stable identifiers and connected through explicit relationships. Implementations MAY store entities as files, database records, or other persistent representations.

- [Entity definition](#entity-definition)
- [Relationship model](#relationship-model)
- [Identity stability](#identity-stability)
- [Materialisation format](#materialisation-format)
- [Projection principle](#projection-principle)
- [Conformance](#conformance)
- [Reference examples (non-normative)](#reference-examples-non-normative)

## Entity definition

Every content unit that participates in a KGS-compliant system MUST expose the following properties:

- id
- type
- title

### Example (non-normative)

```
---
id: T101
type: topic
title: Installation overview
---
```

The representation format is implementation-specific.

## Relationship model

Relationships MUST be represented as references to stable identifiers.

### Example (non-normative)

```
prerequisites:
  - T101
  - T203
```

Relationships are directional. Implementations MAY define inverse relationships, but they MUST be derivable from the primary relationship definitions.

## Identity stability

IDs MUST be stable across file renames, moves, and publication cycles.

## Materialisation format

A conforming implementation MUST provide a machine-readable materialisation of the graph in which each entity is represented by its identifier, type, and relationships.

### Example (non-normative)

```
{
  "id": "T101",
  "type": "topic",
  "relations": {
    "prerequisites": ["T203"]
  },
  "content": "<html>…</html>"
}
```

## Projection principle

Navigation structures are projections, not sources of truth. Modifying a projection MUST NOT change the underlying semantic relationships.

## Conformance

An implementation is KGS-compliant if it satisfies all MUST and MUST NOT requirements defined in this document.

## Reference examples (non-normative)

This repository includes illustrative examples of a single KGS entity expressed in different carrier formats:

- `examples/markdown.md`
- `examples/dita.xml`
- `examples/export.json`

These examples demonstrate how the same semantic contract can be implemented across heterogeneous authoring systems.
