-- Insert for customer table
INSERT INTO customer(
	customer_id,
	first_name,
	last_name
)VALUES(
	3,
	'Geoff',
	'Besos'
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
	'Rick',
	'Romano'
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
	'Angel',
	'Ortiz'
);

SELECT *
FROM mechanic;

-- Insert for finance table
INSERT INTO finance(
	finance_id,
	finance_type,
	institution_name
)VALUES(
	3,
	'Credit',
	'Chuck E Financial'
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
	'WB10432A03ZB52629',
	'BMW',
	'R1100',
	'2019',
	'11345',
	'2019-08-01',
	'Certified Preowned',
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
)VALUES(
	2,
	'Body repair: Passenger side',
	'2020-07-28',
	'2134.00',
	3,
	'WB10432A03ZB52629'
);

SELECT *
FROM service;

-- Insert for service_order table
INSERT INTO service_order(
	service_order_id,
	service_id,
	mechanic_id,
	task_description,
	parts_used
)VALUES(
	2,
	2,
	1,
	'remove part, apply bondo,smooth, paint',
	'bondo, paint,'
);

SELECT *
FROM service_order;

-- Insert for invoice table
INSERT INTO invoice(
	invoice_id,
	amount,
	transaction_date,
	sales_person_id,
	customer_id,
	finance_id,
	vin
)VALUES(
	3,
	25000.00,
	'2019-06-18',
	3,
	3,
	3,
	'WB10432A03ZB52629'
);

SELECT *
FROM invoice;