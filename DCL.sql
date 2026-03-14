CREATE USER read_only_user WITH PASSWORD '1234';

CREATE ROLE read_only;

GRANT read_only TO read_only_user;

GRANT SELECT ON ALL TABLES IN SCHEMA PUBLIC TO read_only;
