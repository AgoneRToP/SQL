CREATE TABLE IF NOT EXISTS accounts (
    id SERIAL PRIMARY KEY,
    owner_name VARCHAR(128) NOT NULL,
    card_number VARCHAR(16) UNIQUE NOT NULL,
    balance NUMERIC (10,2) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE IF NOT EXISTS transactions (
    id SERIAL PRIMARY KEY,
    from_account INT REFERENCES accounts(id)
    ON DELETE SET NULL
    ON UPDATE NO ACTION,
    to_account INT REFERENCES accounts(id)
    ON DELETE SET NULL
    ON UPDATE NO ACTION,
    amount NUMERIC(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO accounts (owner_name, card_number, balance) VALUES
    ('Ivan Ivanov', '4276123456780001', 1500.50),
    ('Maria Smirnova', '4276123456780002', 24500.00),
    ('John Doe', '4276123456780003', 100.00),
    ('Alice Wong', '4276123456780004', 5670.25),
    ('Petr Petrov', '4276123456780005', 0.00),
    ('Elena Kuzneczova', '4276123456780006', 12300.99),
    ('Robert Brown', '4276123456780007', 450.00),
    ('Svetlana Sokolova', '4276123456780008', 89000.50),
    ('Michael Lee', '4276123456780009', 12.00),
    ('Anna Pavlova', '4276123456780010', 3300.00);

