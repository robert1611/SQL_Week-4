--insertion of data into the customer table

-- insert rows in the customer table
INSERT INTO customers (
	customer_id,
	first_name, 
	last_name, 
	address, 
	billing_info
)

VALUES (2,'Jacques', 'Clouseau','123 Main Street', 'Dallas, TX 78701');


-- insert rows in the concessions table

INSERT INTO concessions(
	receipt_id,
	customer_id,
	amount, 
	product_id)

VALUES (
	1,
	1,
	30.00,
	3
);

-- adding data into the tickets table
INSERT INTO tickets (
	ticket_id,
	channel_purchase, 
	amount,
	customer_id,
	movie_id)

VALUES (
	1,
	'Fandango',
	20.00,
	1,
	1
);
	
INSERT INTO movies(
	movie_id,
	director,
	actor,
	rating)
	
VALUES (
	1,
	'Scorsese',
	'Al Pacino',
	'R'
);




