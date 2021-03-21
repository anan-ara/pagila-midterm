/*
 * Write a SQL query SELECT query that:
 * computes the number of customers who live outside of the US.
 */

SELECT
	count(customer_id)
FROM customer
INNER JOIN address USING (address_id)
INNER JOIN city USING (city_id)
WHERE country_id != 103 -- 103 is the US country id
;
