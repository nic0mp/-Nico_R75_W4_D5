-- Insert for customer table
INSERT INTO customer(
	customer_id,
	first_name,
	last_name
)VALUES(
	3,
	'Renee',
	'Dupree'
);

SELECT *
FROM customer;

-- Insert for sales_people table
INSERT INTO sales_people(
	sales_person_id,
	first_name,
	last_name
)VALUES(
	3,
	'Sergio',
	'Smith'
);

SELECT *
FROM sales_people;

-- Insert for mechanic table
INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name 
)VALUES(
	3,
	'Jim',
	'Sanchez'
);

SELECT *
FROM mechanic;

-- Insert for car table
INSERT INTO finance(
	finance_id,
	finance_type,
	institution_name
)VALUES(
	3,
	'Loan',
	'Orange Bank'
);

SELECT *
FROM finance;

-- Insert for car table
INSERT INTO car(
	vin,
	make,
	model,
	car_year,
	miles,
	last_updated,
	car_condition,
	customer_id
) VALUES(
	'WBANN73507B799197',
	'BMW',
	'7-Series',
	'2020',
	'0',
	'2019-10-01',
	'New',
	3
);

SELECT *
FROM car;

-- Insert for service table
INSERT INTO service(
	service_id,
	service_type,
	service_date,
	amount,
	customer_id,
	vin 
) VALUES(
	1,
	'5000 mile maintenance',
	'2001-09-28',
	'75.00',
	1,
	'JH4NA21673T649233'
);

SELECT *
FROM service;
