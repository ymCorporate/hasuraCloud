-- First, ensure you have the uuid-ossp extension installed. If not, you can install it:
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- -- Then, alter the table to set the default value for the UUID column
-- ALTER TABLE kalenview
--     ALTER COLUMN uuid SET DEFAULT uuid_generate_v4();


-- CREATE TABLE kalenview_events(
--     uuid VARCHAR(50),
--     title VARCHAR(255),
--     start TIMESTAMP,
--     end TIMESTAMP,
--     venue VARCHAR(255),
--     description VARCHAR(500)
-- );
