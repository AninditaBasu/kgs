# Step 5. Render projections

Generate navigation structures, portals, or visualisations from the exported graph.

Examples include:

- Prerequisite trees
- Role-based views
- Safety-related content clusters

These projections MUST be fully derivable from the graph and MUST NOT introduce new semantic relationships.

## Example projections

- Force-directed graph: Reveals conceptual adjacency between entities
- Role-based view: Shows only those entities that are reachable via `requiresRole`
- Learning path: Is a linearised projection of all `hasPrerequisite` relationships

This connects abstract ontology to visible system behaviour.
