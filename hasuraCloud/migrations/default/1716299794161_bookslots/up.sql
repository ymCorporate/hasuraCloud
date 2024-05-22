CREATE TABLE bookedslots (
    id SERIAL PRIMARY KEY,
    event_name VARCHAR(255) NOT NULL,
    day VARCHAR(10) NOT NULL,  
    date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    bookerName VARCHAR(255) NOT NULL,
    bookerEmail VARCHAR(255) NOT NULL
);
