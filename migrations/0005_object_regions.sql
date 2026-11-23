ALTER TABLE objects ADD COLUMN region TEXT NOT NULL DEFAULT '';
CREATE INDEX IF NOT EXISTS idx_objects_region_district ON objects(region,district);