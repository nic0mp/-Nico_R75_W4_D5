CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE sales_people(
	sales_person_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE finance(
	finance_id SERIAL PRIMARY KEY,
	finance_type VARCHAR(100),
	institution_name VARCHAR(100)
);

CREATE TABLE car(
	vin SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE service_order(
	service_order_id SERIAL PRIMARY KEY,
	service_id INTEGER,
	mechanic_id INTEGER,
	task_description VARCHAR(250),
	parts_used VARCHAR(250)
	
);

CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	
	
);