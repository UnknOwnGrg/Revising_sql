

-- NOT NULL , UMIQUE , DEFAULT , CHECK
-- Database constraint is always stronger than baackend validation

DROP TABLE IF EXISTS basics.accounts;

CREATE TABLE basics.accounts(
    id SERIAL PRIMARY KEY, 

    full_name TEXT NOT NULL, 

    email TEXT NOT NULL, 

    is_active BOOLEAN DEFAULT true,

    age INTEGER CHECK (age >= 18), 

    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.accounts(full_name, email, age)
VALUES ('Ishak Gurung', 'ishakgrg12@gmail.com', 26);

SELECT * FROM basics.accounts; 