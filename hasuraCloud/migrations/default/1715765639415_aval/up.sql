CREATE TABLE Availability (
    id SERIAL PRIMARY KEY,
    day_of_week VARCHAR(10),
    start_time TIME,
    end_time TIME,
    user_id UUID
);
