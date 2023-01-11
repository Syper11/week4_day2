INSERT INTO customer(
    first_name,
    last_name
) VALUES (
    'Brett',
    'Rickheim'
),(
    'Tyler',
    'Helbert'
),(
    'Mike',
    'Kicker'
);

SELECT * FROM customer

INSERT INTO film(
    movie,
    movie_description,
    price,
    movie_time
) VALUES (
    'Snow White',
    'The wicked queen orders the murder of her innocent stepdaughter',
    5.00,
    '7:00PM'
),(
    'Cinderella',
    'Enslaved by her evil stepmother and stepsisters.',
    9.99,
    '5:00PM'
);

SELECT * FROM film

INSERT INTO concessions(
    customer_id,
    item,
    price
) VALUES (
    1,
    'popcorn',
    30.00
),(
    1,
    'Soda Pop',
    50.00
);

SELECT * FROM concessions

INSERT INTO ticket(
    ticket_id,
    customer_id,
    movie_id
) VALUES (
    1,
    1,
    1
);

SELECT * FROM ticket