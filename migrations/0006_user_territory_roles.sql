ALTER TABLE users ADD COLUMN region TEXT NOT NULL DEFAULT '';
ALTER TABLE users ADD COLUMN district TEXT NOT NULL DEFAULT '';
ALTER TABLE objects ADD COLUMN assigned_user_id TEXT;
CREATE INDEX IF NOT EXISTS idx_users_scope ON users(role, region, district);
CREATE INDEX IF NOT EXISTS idx_objects_assigned_user ON objects(assigned_user_id);
