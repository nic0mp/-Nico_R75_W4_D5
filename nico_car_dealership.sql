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
	make VARCHAR(100),
	model VARCHAR(100),
	car_year VARCHAR(100),
	miles INTEGER,
	last_updated DATE,
	car_condition VARCHAR,
	customer_id INTEGER
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE service(
	service_id SERIAL PRIMARY KEY,
	service_type VARCHAR(100),
	service_date DATE,
	amount NUMERIC(12,2),
	customer_id INTEGER,
	vin INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(vin) REFERENCES car(vin)
);

CREATE TABLE service_order(
	service_order_id SERIAL PRIMARY KEY,
	service_id INTEGER,
	mechanic_id INTEGER,
	task_description VARCHAR(250),
	parts_used VARCHAR(250),
	FOREIGN KEY(service_id) REFERENCES service(service_id)
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
);

CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	amount NUMERIC(12,2),
	transaction_date DATE,
	sales_person_id INTEGER,
	customer_id INTEGER,
	finance_id INTEGER,
	vin INTEGER
	FOREIGN KEY(sales_person_id) REFERENCES sales(sales_person_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) 
	FOREIGN KEY(finance_id) REFERENCES finance(financee_id)
	FOREIGN KEY(vin) REFERENCES car(vin)
	
);