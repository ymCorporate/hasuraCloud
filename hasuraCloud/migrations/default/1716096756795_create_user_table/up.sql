CREATE TABLE kalenview (
    uuid UUID PRIMARY KEY,
    email VARCHAR(255) UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    password VARCHAR(255),
    company_name VARCHAR(100),
    company_role VARCHAR(100)
);
