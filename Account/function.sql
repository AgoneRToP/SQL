CREATE OR REPLACE FUNCTION get_balance_by_card_number(cardnumber VARCHAR(16))
    RETURNS NUMERIC
    LANGUAGE plpgsql
AS
$$
DECLARE
    balance NUMERIC;
BEGIN
    SELECT a.balance INTO balance FROM accounts a WHERE a.card_number = cardnumber;

    IF balance IS NULL THEN
        RAISE EXCEPTION 'Карта не найдено!';
    END IF;

    RETURN balance;
END;
$$;



SELECT get_balance_by_card_number ('4276123456780001');