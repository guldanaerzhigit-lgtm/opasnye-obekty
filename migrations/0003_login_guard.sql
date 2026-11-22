CREATE TABLE IF NOT EXISTS login_attempts (
  attempt_key TEXT PRIMARY KEY,
  failures INTEGER NOT NULL DEFAULT 0,
  window_started INTEGER NOT NULL,
  locked_until INTEGER
);
CREATE INDEX IF NOT EXISTS idx_login_attempts_locked ON login_attempts(locked_until);