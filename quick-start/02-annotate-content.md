# Step 2. Annotate content with metadata

Add KGS metadata to each content unit, using the storage format appropriate for your system.

Minimal required fields:

- id
- type
- title

Add relationship metadata as key-value pairs where the values are target entity identifiers.

## Example (Markdown frontmatter)

```yaml
---
id: T101
type: topic
title: Installation overview
prerequisites:
  - T203
---
```

Only semantic facts belong here. Navigation or presentation information MUST NOT be encoded as relationships.
