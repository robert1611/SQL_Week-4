-- I made this way more complicated than it needs to be.  I added a lot more data
-- than the project called for.  Made some data entry issues, but it all went in
-- ok and the functions were pretty easy to figure out after re-watching the video
-- functions add in one customer "Sam Elliott" and one salesperson "Elaine Benes"

INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	birth_date,
	email
)
	
VALUES (
--	35,
--	'Jesus',
--	'Pendejo',
--	'1953-06-22',
--	'creepyroller@cohen.com');
	
	40,
	'Donnie',
	'The Greek',
	'1956-12-25',
	'like.child@cohen.com');

-- Creating a stored function to add a customer to the customer table

CREATE OR REPLACE FUNCTION add_customer (_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _birth_date DATE, _email VARCHAR)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO customer(customer_id, first_name, last_name, birth_date, email)
	VALUES(_customer_id, _first_name, _last_name, _birth_date, _email);
END;
$MAIN$
LANGUAGE plpgsql;

-- use SELECT instead of CALL.  Critical diff b/w FUNC and PROC
SELECT add_customer(45,'sam','elliott','1944-05-21','cowboy@cohen.com');

select *
from customer

INSERT INTO car(
	vin_id,
	color,
	make,
	model,
	year_
)

VALUES  (1001,'red', 'ford','mustang', 2000),
		(1002,'white','subaru','legacy', 1999),
		(1003,'blue','ford','pinto',1974),
		(1004, 'green', 'amc', 'pacer',	1977),
		(1005,'black','ford','torino', 1973),
		(1006,'gray','dodge', '1500 Crew Cab', 2019),
		(1007,'metallic gray','bmw','325i', 2006),
		(1008,'red','hyundai','excel',1989);

INSERT INTO part(
	part_id,
	part_name,
	part_cost,
	part_quality)

VALUES (321, 'brakes', 234.21, 'high'),
		(432, 'transmission', 3451.45, 'medium'),
		(543, 'struts', 543.09, 'medium'),
		(654, 'carburator', 642.13, 'high'),
		(765, 'headlight', 166.45, 'medium'),
	+	(876, 'bumper', 743.12, 'medium'),
		(987, 'shaft', 431.67, 'high'),
		(1035, 'clutch', 693.12, 'medium'),
		(2035, 'windshield', 631.57, 'low'),
		(3035, 'rotor', 943.12, 'medium'),
		(4035, 'chassis', 843.12, 'low'),
		(5035, 'shocks', 395.52, 'medium'),
		(6035, 'window_motor', 496.32, 'high');

-- customer, car, part compeleted

INSERT INTO saleperson(
	salesperson_id,
	first_name,
	last_name,
	hire_date)

VALUES (1111, 'art', 'vandelay', '2014-05-01'),
		(2222, 'george', 'costanza', '2017-09-04'),
		(3333, 'cosmo', 'kramer', '2019-11-19');

-- fat-fingered the name of table, so corrected to salesperson
ALTER TABLE saleperson
RENAME to salesperson;

-- add salesperson through second function

CREATE OR REPLACE FUNCTION add_salesperson (_salesperson_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _hire_date DATE)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO salesperson(salesperson_id, first_name, last_name, hire_date)
	VALUES(_salesperson_id, _first_name, _last_name, _hire_date);
END;
$MAIN$
LANGUAGE plpgsql;

-- use SELECT instead of CALL.  Critical diff b/w FUNC and PROC
SELECT add_salesperson (4444,'elaine','benes','2020-07-19');

select *
from salesperson

INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name,
	hire_date)
	
VALUES (12345, 'eric', 'clapton', '2020-06-03'),
	   (23456, 'jimi', 'hedrix', '2017-08-09'),
	   (34567, 'otis', 'redding', '2013-02-01');

select *
from mechanic

	  
INSERT INTO services(
	services_id,
	services_name)
	
VALUES (5001, 'oil_change'),
		(5002, 'lube'),
		(5003, 'tune_up'),
		(5004, 'oil_change'),
		(5005, 'brake_job'),
		(5006, 'transmission_rebuild'),
		(5007, 'lube'),
		(5008, 'windshield_replace'),
		(5009, 'brake_job'),
		(5010, 'replace_computer'),
		(5011, 'engine_rebuild'),
		(5012, 'oil_chage'),
		(5013, 'tune_up'),
		(5014, 'jump_start')

select *
from car

INSERT INTO service_invoice(
	invoice_id,
	date_serviced,
	customer_id,
	part_id,
	vin_id)

VALUES 
		(7001, '2020-02-01',5,321,1001),
		(7002,'2020-02-19',5,432,1002),
		(7003,'2020-03-16',10,543,1002),
		(7004,'2020-03-27',10,654,1002),
		(7005,'2020-04-11',15,765,1003),
		(7006,'2020-04-24',15,876,1003),
		(7007,'2020-05-03',20,987,1004),
		(7008,'2020-06-12',20,1035,1004),
		(7009,'2020-07-19',25,2035,1005),
		(7010,'2020-03-27',25,3035,1005),
		(7011,'2020-08-04',30,4035,1006),
		(7012,'2020-09-11',35,5035,1007),
		(7013,'2020-12-07',40,6035,1008);
		
select *
from service_invoice



	INSERT INTO sales_invoice(
	invoice_num,
	date_sold,
	amount,
	msrp,
	customer_id,
	vin_id)

VALUES 
		(2001, '2020-01-04' , 32440, 38000, 5, 1001),
	   (2002, '2020-02-12', 45678, 55000, 10, 1002),
	   (2003, '2020-04-01', 37546, 44500, 15, 1003),
	   (2004, '2020-05-01', 40213, 42000, 20, 1004),
	   (2005, '2020-05-31', 54213, 59999, 30, 1005),
	   (2006, '2020-08-04', 59432, 65000, 40, 1006)
	   (2007,'2020-09-12', 22300, 25000, 5, 1007),
	   (2008,'2020-12-24', 17999, 18500, 35, 1008);
			  
INSERT INTO salesperson_invoice(
	invoice_id,
	invoice_num)

VALUES 
		(7001,2001),
		(7002,2002),
		(7003,2003),
		(7004,2004),
		(7005,2005),
		(7006,2006),
		(7007,2007),
		(7008,2008),
		(7009,2001),
		(7010,2002),
		(7011,2003),
		(7012,2004),
		(7013,2005),


select *
from salesperson_invoice
	

INSERT INTO labor(
	invoice_id,
	mechanic_id,
	services_id,
	labor_cost)

VALUES 
	(7001,12345,5001,1900),
	(7002,23456,5002,1023),
	(7003,34567,5003,387),
	(7004,12345,5004,423),
	(7005,23456,5005,655),
	(7006,34567,5006,930);
	(7007,12345,5007,341),
	(7008,23456,5008,1988),
	(7009,34567,5009,4511),
	(7010,12345,5010,1611),
	(7011,23456,5011,3476),
	(7012,34567,5012,345),
	(7013,12345,5013,120),
	(7014,23456,5014,2200);

DELETE FROM labor
where labor_cost = 930;

select *
from labor





