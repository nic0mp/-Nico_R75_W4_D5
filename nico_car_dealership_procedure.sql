SELECT *
FROM customer;

CREATE OR REPLACE PROCEDURE newlatefee(
	customer INTEGER,
	newlateFeeAmount DECIMAL
)
LANGUAGE plpgsql
AS $$
BEGIN
	-- Add late fee to customer payment amount
	UPDATE payment
	SET amount = amount + newlateFeeAmount
	WHERE rental_id = customer;
	
	-- Commit the above statement inside of a transaction
	COMMIT;
	
END;
$$

-- Calling a Stored Procedure
CALL lateFee(3081,2.99);