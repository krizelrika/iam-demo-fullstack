INSERT INTO permissions (code, description)
VALUES
  ('USER_READ', 'Read user information'),
  ('USER_CREATE', 'Create new users'),
  ('USER_STATUS_UPDATE', 'Update user status'),
  ('ROLE_MANAGE', 'Manage roles and permissions'),
  ('AUDIT_READ', 'Read audit logs')
ON CONFLICT (code) DO NOTHING;
