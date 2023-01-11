CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE film(
   movie_id SERIAL PRIMARY KEY,
   movie VARCHAR(100),
   movie_description VARCHAR(300),
   price NUMERIC (3,2),
   movie_time VARCHAR(150)
);

CREATE TABLE concessions(
    sale_id SERIAL PRIMARY KEY,
    item VARCHAR(100),
    price NUMERIC(4,2),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE ticket (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (movie_id) REFERENCES film(movie_id),
    ticket_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
