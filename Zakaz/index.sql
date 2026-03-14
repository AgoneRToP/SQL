CREATE INDEX
    idx_user_id
ON
    "user"(id);

CREATE INDEX
    idx_order_user_id
ON
    "order"(user_id);

DROP INDEX
    idx_user_id;

DROP INDEX
    idx_order_user_id;
