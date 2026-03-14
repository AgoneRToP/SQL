-- Роль только для чтения (SELECT)
CREATE ROLE read_only;
GRANT USAGE ON SCHEMA public TO read_only;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO read_only;

-- Роль только для записи (INSERT, UPDATE, DELETE)
CREATE ROLE write_only;
GRANT USAGE ON SCHEMA public TO write_only;
GRANT INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO write_only;

-- Роль администратора (все права)
CREATE ROLE admin_access;
GRANT ALL PRIVILEGES ON DATABASE zakaz TO admin_access;
GRANT ALL PRIVILEGES ON SCHEMA public TO admin_access;