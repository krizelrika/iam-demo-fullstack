-- ====================================
-- ADMIN — Full Explicit Access
-- ====================================

INSERT INTO role_permissions (role_id, permission_id)
SELECT r.id, p.id
FROM roles r
JOIN permissions p ON r.name = 'ADMIN'
ON CONFLICT DO NOTHING;


-- ====================================
-- SUPPORT — Limited Operational Power
-- ====================================

INSERT INTO role_permissions (role_id, permission_id)
SELECT r.id, p.id
FROM roles r, permissions p
WHERE r.name = 'SUPPORT'
  AND p.code IN ('USER_READ', 'USER_STATUS_UPDATE')
ON CONFLICT DO NOTHING;

-- ====================================
-- AUDITOR — Read-Only, Single Purpose
-- ====================================
INSERT INTO role_permissions (role_id, permission_id)
SELECT r.id, p.id
FROM roles r, permissions p
WHERE r.name = 'AUDITOR'
  AND p.code = 'AUDIT_READ'
ON CONFLICT DO NOTHING;
