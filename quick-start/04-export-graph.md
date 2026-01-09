# Step 4. Export the Knowledge Graph

Materialise the full KGS graph into a carrier format such as RDF/Turtle or JSON-LD.

Each entity MUST be represented by a stable IRI derived from its KGS identifier.

This export becomes the canonical semantic representation of the system and enables validation, reasoning, and integration with external knowledge graph tooling.


## Example: JSON-LD export

```json
{
  "@context": {
    "kgs": "https://kgs.example/schema#",
    "ex": "https://kgs.example/entity/",
    "hasPrerequisite": { "@id": "kgs:hasPrerequisite", "@type": "@id" }
  },
  "@graph": [
    {
      "@id": "ex:T101",
      "@type": "kgs:Topic",
      "hasPrerequisite": ["ex:T203"]
    }
  ]
}
```

This file represents the authoritative semantic graph of the system.
