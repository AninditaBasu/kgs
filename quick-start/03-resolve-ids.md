# Step 3. Resolve identifiers

Ensure that all referenced identifiers exist and are unique across the corpus.

Implementations SHOULD:

- detect duplicate IDs,
- detect broken references,
- enforce immutability of identifiers across file moves or renames.

At this stage, the system knows the complete set of entities and the valid relationship graph.

## Example: Resolving identifiers in DITA

In a DITA system, references may be expressed using `keyref` or `conref`.

Example:

```xml
<xref keyref="T203"/>
```

During resolution, the system MUST map `T203` to the canonical KGS identifier and verify that an entity with that ID exists. Broken or ambiguous references MUST be reported as errors.
