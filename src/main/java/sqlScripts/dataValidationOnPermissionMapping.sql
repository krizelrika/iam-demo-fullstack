SELECT
  r.name        AS role,
  p.code        AS permission
FROM roles r
JOIN role_permissions rp ON rp.role_id = r.id
JOIN permissions p ON p.id = rp.permission_id
ORDER BY r.name, p.code;
