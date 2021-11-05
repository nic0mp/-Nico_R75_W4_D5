-- Insert for customer table
INSERT INTO customer(
	customer_id,
	first_name,
	last_name
)VALUES(
	1,
	'Ramon',
	'Goose'
);
SELECT *
FROM customer;

-- Insert for sales_people table
INSERT INTO sales_people(
	sales_person_id,
	first_name,
	last_name
)VALUES(
	1,
	'Tony',
	'Jones'
);
-- SELECT *
-- FROM sales_people;

-- Insert for mechanic table
INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name 
)VALUES(
	1,
	'Sam',
	'DeGeneres'
);
SELECT *
FROM mechanic;

-- Insert for car table
INSERT INTO finance(
	finance_id,
	finance_type,
	institution_name
)VALUES(
	1,
	'Loan',
	'Chuck E Bank'
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
	00000000001,
	'Honda',
	'Accord',
	'2022',
	'45',
	'2021-10-01',
	'New',
	1
);
-- SELECT *
-- FROM customer;
