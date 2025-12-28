INSERT INTO roles (name, description)
VALUES
  ('SUPPORT', 'User support without structural changes'),
  ('AUDITOR', 'Read-only access to audit logs')
ON CONFLICT (name) DO NOTHING;
