CREATE TABLE kalenview_events(
    uuid VARCHAR(50) PRIMARY KEY,
    title VARCHAR(255),
    start TIMESTAMP,
    "end" TIMESTAMP,
    venue VARCHAR(255),
    description VARCHAR(500)
);
