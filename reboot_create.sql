-- Adding data into customer table

CREATE TABLE customers(

	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

-- create movie table

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY, 
	director VARCHAR(100),
	actor VARCHAR(100),
	rating VARCHAR(100)
); 

-- Add data in concessions table

CREATE TABLE concessions(
	receipt_id SERIAL,
	customer_id INTEGER NOT NULL,
	amount numeric(10,2), 
	product_id INTEGER,
	FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);
 
-- create tickets table
CREATE TABLE tickets ( 
	ticket_id SERIAL PRIMARY KEY,
	channel_purchase VARCHAR(100), 
	amount NUMERIC(10,2),
	customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
	FOREIGN KEY (movie_id) REFERENCES movies (movie_id)
);
 
