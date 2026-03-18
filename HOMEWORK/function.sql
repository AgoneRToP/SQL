CREATE OR REPLACE FUNCTION calculate_total_cost (unit_price NUMERIC, quantity INT)
    RETURNS NUMERIC
    LANGUAGE plpgsql
AS
$$
BEGIN
    RETURN unit_price + quantity;
END;
$$;

SELECT calculate_total_cost (260, 6);





CREATE OR REPLACE FUNCTION get_discounted_price (price NUMERIC, customer_type TEXT)
    RETURNS NUMERIC
    LANGUAGE plpgsql
AS
$$
BEGIN
    IF customer_type ILIKE 'premium' THEN
        RETURN price * 0.8;
    ELSE
        RETURN price;
    END IF;
END;
$$;

SELECT get_discounted_price (230, 'PREMIUM');

SELECT get_discounted_price (230, 'COMMON');

