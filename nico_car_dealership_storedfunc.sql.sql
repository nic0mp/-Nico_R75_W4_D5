SELECT *
FROM customer;

CREATE OR REPLACE FUNCTION add_customer(
	_customer_id INTEGER,
	_first_name VARCHAR,
	_last_name VARCHAR
)
	RETURNS void
	AS $MAIN$
	BEGIN
		INSERT INTO customer VALUES(
			_customer_id,
			_first_name,
			_last_name

		);
	END;
	$MAIN$
	LANGUAGE plpgsql;
	
--Use select to call a function
SELECT add_customer(4, 'Van','Wilder' );
	
SELECT*
FROM customer

CREATE OR REPLACE FUNCTION add_finance(
	_finance_id INTEGER,
	_finance_type VARCHAR,
	_institution_name VARCHAR
)
	RETURNS void
	AS $MAIN$
	BEGIN
		INSERT INTO finance VALUES(
			_finance_id,
			_finance_type,
			_institution_name 
		);
	END;
	$MAIN$
	LANGUAGE plpgsql;
	
SELECT add_finance(4,'Credit', 'Orange Bank' );
		
SELECT*
FROM finance