-- KGS entity representation in a relational database (non-normative)

CREATE TABLE kgs_entity (
  id TEXT PRIMARY KEY,
  type TEXT NOT NULL,
  title TEXT NOT NULL
);

CREATE TABLE kgs_relation (
  source_id TEXT NOT NULL,
  relation_type TEXT NOT NULL,
  target_id TEXT NOT NULL,
  FOREIGN KEY (source_id) REFERENCES kgs_entity(id),
  FOREIGN KEY (target_id) REFERENCES kgs_entity(id)
);

-- Example entity
INSERT INTO kgs_entity (id, type, title)
VALUES ('T101', 'topic', 'Installation overview');

-- Example relations
INSERT INTO kgs_relation (source_id, relation_type, target_id)
VALUES
  ('T101', 'prerequisites', 'T203'),
  ('T101', 'prerequisites', 'T305');
