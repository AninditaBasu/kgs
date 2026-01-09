# Step 1. Define relationship types

Begin by defining a controlled vocabulary of relationship types that express the semantics of your domain.

## Examples

| Relationship      | Meaning                                         |
|-------------------|-------------------------------------------------|
| `hasPrerequisite` | Entity A must be understood before Entity B     |
| `mitigates`       | Entity A reduces the risk described by Entity B |
| `requiresRole`    | Entity A requires a specific role               |

Relationship types form your domain ontology. They SHOULD be stable across publication cycles and MUST be shared across all participating systems.
