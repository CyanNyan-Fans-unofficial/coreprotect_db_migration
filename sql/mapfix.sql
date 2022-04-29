UPDATE co_art_map SET id = rowid WHERE id IS NULL;
UPDATE co_blockdata_map SET id = rowid WHERE id IS NULL;
UPDATE co_entity_map SET id = rowid WHERE id IS NULL;
UPDATE co_material_map SET id = rowid WHERE id IS NULL;
UPDATE co_world SET id = rowid WHERE id IS NULL;
